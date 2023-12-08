# SQL Joins Tutorial

`Author: Sean Moser`
<br>
<br>
`Summary: This tutorial demonstrates how to run commands in Terminal utilizing the Docker application to connect to a MySQL container in order to query a simulated business's database. Left and right joins, grouping, aliases, database schema, and general query development are all discussed.`
<br>
<br>
`Audience: This tutorial is intended for those new to the SQL language and Computer Science / Information Technology students who are interested in learning more about how to use joins in the SQL language, working with Visual Studio Code and Docker in the Terminal.`

This is a project for my IT1600, Digital Systems class, where I utilized the use of Visual Studio Code, Terminal, Docker, iMovie, and the SQL language to demonstrate how to use joins in order to query a database.

### Tutorial
For this tutorial, we will be working with the SQL language. We are utilizing the *Docker* application, which allows us to access a container to query a databas through the SQL language. We will also be writing our queries in the *Visual Studio Code* application, for better visualization and coherency of our code. <br> Queries in the SQL language utilize the keywords `SELECT`, `FROM`, and `WHERE` to query databases contained in our Docker container. `SELECT` chooses the tables and its associated columns to be queried from the database. The `FROM` keyword specifies the tables and their aliases to pull data from those tables. `WHERE` matches results from one table to the results of another table throught the use of primary and foreign keys. Instead of using the `WHERE` keyword, however, we will be using `LEFT JOIN` and `RIGHT JOIN` to connect tables, resulting in more complex and nuanced queries. These concepts are better demonstrated visually in the video linked below. By using `LEFT JOIN` and `RIGHT JOIN` we can include records from a "left" and "right" table, even when a table doesn't possess a corresponding result associated with the other table referenced. 

### Directory
Links to the Tutorial, Docker, Visual Studio Code, the "classicmodels" databse, as well as the "classicmodels" database schema can all be found *below!*

- [Video Tutorial](https://youtu.be/6O-k023Goco)
- [Code Used in Tutorial](https://github.com/seanmoserr/SQLJoinsTutorial/blob/main/it1600demo.sql)
- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [ClassicModels Database](https://github.com/seanmoserr/SQLJoinsTutorial/blob/main/classicmodels.sql)
- [ClassicModels Database Schema](https://github.com/seanmoserr/SQLJoinsTutorial/blob/main/Classic-Models-Schema.pdf)

