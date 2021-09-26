### About the FastAPI framework


### Get this up and running:
```bash
docker-compose up -d
```

or manually:

```bash
cd language-and-framework-reference/python/web-frameworks/FastAPI

# Run a Postgres DB (you would set a secure password in a real world application)
docker run -d --name=fastapi_examaple_db -e POSTGRES_PASSWORD=Secur3Passw0rd postgres

# Build the FastAPI application
docker build -t fastapi-example:latest .

# Run the FastAPI application
docker run -d -p 8000:8000 --name fastapi-example fastapi-example:latest
```

After the containers are running, you can access the docs at: [http://localhost:8000/docs](http://localhost:8000/docs)