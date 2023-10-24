This project has these routes available:

|Type of response|HTTP verb|Description|Route|Example|
|--|--|--|--|--|
|JSON|GET|Returns a simple JSON message|`/json/simple`|`{"message": "Hello World"}`|
|JSON|GET|Returns all `notes` from the DB in JSON format|`/json/db`|See example below|
|JSON|POST|Creates an entry in the `notes` table in the Postgres database|`/json/db`|See example below|
|WebSocket|N/A|WebSocket connection|`/ws`|`This is a WebSocket message from the server`|


#### DB example (using Postgres)
These should be created in the `notes` table:

|Column|Type|Example|
|--|--|--|
|id|int (auto-incrementing)|`0`|
|text|varchar|`This is my first note`|
|completed|boolean|`true`|


#### Examples
1. **Create new note:**

    `curl -X POST http://localhost:8000/json/db -H 'Content-Type: application/json' -d '{"text":"My first note","completed": true}'`

2. **Get all notes:**

    `curl http://localhost:8000/json/db`
