# Tutorial
  For this tutorial, we will be working with the SQL language. We are utilizing the *Docker* application, which allows us to access a container to query a databas through the SQL language. We will also be writing our queries in the *Visual Studio Code* application, for better visualization and coherency of our code. <br> Queries in the SQL language utilize the keywords `SELECT`, `FROM`, and `WHERE` to query databases contained in our Docker container. `SELECT` chooses the tables and its associated columns to be queried from the database. The `FROM` keyword specifies the tables and their aliases to pull data from those tables. `WHERE` matches results from one table to the results of another table throught the use of primary and foreign keys. Instead of using the `WHERE` keyword, however, we will be using `LEFT JOIN` and `RIGHT JOIN` to connect tables, resulting in more complex and nuanced queries. These concepts are better demonstrated visually in the video linked below. By using `LEFT JOIN` and `RIGHT JOIN` we can include records from a "left" and "right" table, even when a table doesn't possess a corresponding result associated with the other table referenced. 

## When would we want to use a directional join?
Let's focus on the *classicmodels* database as an example to answer this question. Perhaps this business would like to generate a list of customer information with their associated order information, using primarily the `CUSTOMER` table, with related data from other tables. This business wants to include customers who they have in their database, even if they haven't purchased products from them. This can be done using directional joins. 
<br>

Firstly, we would be `SELECT c.customerName, c.phone, c.contactFirstName, c.contactLastName, o.orderNumber, SUM(od.quantityOrdered * od.priceEach) AS "Order Total"` 
* This generates references to all columns we want to appear in the output of our query
Next, we would use `FROM customers c`
* This specifies our first table to begin with, as well as an alias, to simplify our code
Next, we would employ the use of `LEFT JOIN orders o ON o.customerNumber = c.customerNumber`
* Using a left join here means we include all results from the customers table (our *left* table), even when that customer number cannot be located in the orders table
Next, we would use `LEFT JOIN orderdetails od ON od.orderNumber = o.orderNumber`
* Doing so carries over all of the results so far from our "left table" and continues to match the orderdetails table to the orders table
Finally, we need to use `GROUP BY c.customerName, c.phone, c.contactFirstName, c.contactLastName, o.orderNumber;`
* This GROUP BY stage groups our records together so all order information is grouped with its order number, and subsequently grouped with its associated customer information as well. 
So our final query would be <br>`SELECT c.customerName, c.phone, c.contactFirstName, c.contactLastName, o.orderNumber, SUM(od.quantityOrdered * od.priceEach) AS "Order Total"`<br>
`FROM customers c`<br>
`LEFT JOIN orders o ON o.customerNumber = c.customerNumber`<br>
`LEFT JOIN orderdetails od ON od.orderNumber = o.orderNumber` <br> 
`GROUP BY c.customerName, c.phone, c.contactFirstName, c.contactLastName, o.orderNumber;`




### Directory
Links to the Tutorial, Docker, Visual Studio Code, the "classicmodels" databse, as well as the "classicmodels" database schema can all be found *below!*

- [Video Tutorial](https://youtu.be/6O-k023Goco)
- [Code Used in Tutorial](https://github.com/seanmoserr/SQLJoinsTutorial/blob/main/it1600demo.sql)
- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [ClassicModels Database](https://github.com/seanmoserr/SQLJoinsTutorial/blob/main/classicmodels.sql)
- [ClassicModels Database Schema](https://github.com/seanmoserr/SQLJoinsTutorial/blob/main/Classic-Models-Schema.pdf)
