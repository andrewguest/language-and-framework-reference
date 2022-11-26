### About the Django REST Framework


### Get this up and running:
```bash
docker-compose up -d
```

or manually:

```bash
cd language-and-framework-reference/web/json database api/python/Django REST Framework

# Run a Postgres DB (you would set a secure password in a real world application)
docker run -d --name=drf_examaple_db -e POSTGRES_PASSWORD=Secur3Passw0rd postgres

# Build the Django REST Framework application
docker build -t drf-example:latest .

# Run the Django REST Framework application
docker run -d -p 8000:8000 --name drf-example drf-example:latest
```

After the containers are running, you can access the docs at: [http://localhost:8000/docs](http://localhost:8000/docs)