import sqlalchemy
import databases


# Change this password to be something more secure, in a real world deployment
DATABASE_URL = "postgresql://postgres:Secur3Passw0rd@fastapi_example_db/postgres"

database = databases.Database(DATABASE_URL)
engine = sqlalchemy.create_engine(DATABASE_URL)
metadata = sqlalchemy.MetaData()
