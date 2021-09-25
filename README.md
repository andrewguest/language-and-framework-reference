# Programming language and framework comparisions

This repository is meant as an example of how to do the samething in different languages and frameworks.
All examples should include a Dockerfile to maintain a consistent environment.

#### The current examples are:
* A script to fetch data about the Death Star from The Star Wars API (SWAPI) and display the result in the terminal
  * `curl https://swapi.dev/api/starships/9`
* An API that returns the following types of data on these routes:
    |Type of data|Description|Route|Example|
    |--|--|--|--|
    |JSON|Returns a simple JSON message|`/json/simple`|`{"message": "Hello World"}`|
    |JSON|Queries the database and then returns the data in JSON format|`/json/db`|`{"db message": "This is from the DB"}`|
    |WebSocket|WebSocket connection|`/ws`|`This is a WebSocket message from the server`|