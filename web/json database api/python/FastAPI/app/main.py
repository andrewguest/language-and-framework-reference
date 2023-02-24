from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import secure

from routes.json_routes import router as json_router
from routes.websocket_routes import router as websocket_router

from database.config import database, metadata, engine


app = FastAPI(
    title="FastAPI Example",
    description="Example API built in the FastAPI framework",
    version="0.0.1",
)
secure_headers = secure.Secure()
metadata.create_all(engine)


@app.on_event("startup")
async def startup():
    await database.connect()


@app.on_event("shutdown")
async def shutdown():
    await database.disconnect()


# Middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.middleware("http")
async def set_secure_headers(request, call_next):
    response = await call_next(request)
    secure_headers.framework.fastapi(response)
    return response


app.include_router(json_router)
app.include_router(websocket_router)
