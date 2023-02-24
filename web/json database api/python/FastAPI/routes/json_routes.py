from typing import List

from fastapi import APIRouter

from database.notes import NoteIn, Note, notes
from database.config import database


router = APIRouter(tags=["JSON"])


@router.get("/json/simple")
async def json_simple():
    return {"message": "Hello World"}


@router.post("/json/db")
async def json_db_post(note: NoteIn):
    query = notes.insert().values(text=note.text, completed=note.completed)
    last_record_id = await database.execute(query)
    return {**note.dict(), "id": last_record_id}


@router.get("/json/db", response_model=List[Note])
async def json_db_get():
    query = notes.select()
    return await database.fetch_all(query)
