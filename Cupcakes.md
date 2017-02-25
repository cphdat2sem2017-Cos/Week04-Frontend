# Cupcake mini project
![](CupcakeImage.jpg)

<table><tr><td>
This assignment is to be carried out individually or in pairs. (If you work together, you have to take turns at the keyboard distributing time evenly)<br>You must hand in a link to a github repository with a web application and an .sql file (This is the file that creates the tables with their constraints and fill in some sample data).<br></td></tr></table>

###Hand in: Sunday 05 March 2017 at 16.00
Hand is is done by sending an email to koe@cphbusiness.dk with:

* Full name of who is behind this submission
* Link to the webapp on digital ocean
* Link to the github project containing the sourcecode of the project

#Web shopYou are to develop a simple web-shop using HTML, JSP, javascript and java Servlets. Data should be stored in a MySQL database.The web shop sells cupcakes, but only as pick-up. Customers can use the web shop to place an order and then show up in person to pick up the cupcakes. Sending cupcakes in the mail has shown to be a bad idea as they turn up with bite marks if at all.The bakery has a very fast cup cake-machine, so the instant the order is placed the cup cakes are ready for pickup.The cupcakes have a bottom and a topping which can be combined in many ways, but a cup cake must always have both a bottom and a topping. Bottoms and toppings can be found in appendix A.Costumers each have an account with the shop and orders can only be placed if the account hold enough money to cover the price. Payment is handled by another system and as of now customers deposits will have to be added manually in the database, but withdrawals happen when cupcakes are ordered.In order to pay with their account the costumers will have to use a username and a password to login before placing an order.#Lets break it down:##1 Connect to databaseCreate a web application with a class which is responsible for the database connection. This class holds all the information needed to make a connection.##2 LoginCreate a database and add a user table. A user has a username, a password and a balance.You will need a User class to hold the user information when it has been fetched from the database.Create a class that contains all methods that communicate with the database. In this class create a method, which takes a username sends a query to the database and then returns the corresponding user object if it exists.

Make a web page where the user can input a username and a password. Create a servlet to receive the input and verify or dispute the password (and username).When a user is logged in he/she is forwarded to the shop page.##3 The shopThe shop shows who is logged in and the account balance of this user.
It also displays a list of all the cupcakes bottoms and toppings. You will need to expand the database to holdcupcakes (see appendix A) – hint you might want to consider using more than one table. A cupcake has a bottom, a top and a total price.When the user chooses a bottom and a topping and a number of cupcakes. When the user submits an order the data should be send to the servlet where objects will be created of types like: Cupcake, User, Order (Order has a reference to a User and a list of Cupcakes).You will need java entity classes of type Order and Orderline and also for representing Cupcakes (top and buttom). Also you will need a method to create cupcake objects based on the possible toppings and bottoms from the database.### JavascriptUse javascript to calculate the total price to show to the userUse javascript to check if the user have enough money for the order. If not return an error message to the user without contacting the server.##4 The shopping cartThe shopping cart holds Line Items which has information of the cupcakes (bottoms and toppings) and the quantity of cupcakes. The Line Item also has an invoice_id to prepare it for assignment 5.The shopping cart should be stored in the session, for obvious reasons.All the cupcake bottoms and toppings you displayed in the shop should have a radio bottom so a user can choose both a bottom and a topping and then there should be an “Add” button. When a cupcake is added, either a new OrderLine Item is created and added to the cart (or if you have time in case of adding more of the same cupcake to the cart - the quantity of an already existing Line Item is incremented).##5 The invoiceWhen cupcakes have been added to the cart the order can be finalized. This creates an invoice with an id and a customer(user). This invoice and all the Line Items in the shopping cart are stored in the database.You will need to calculate the total sum of the order and withdraw it from the users balance.##6 Customer pageThis is an optional extra assignment if you have time.Create a page for the user who is logged in (has a session running). The page should show all the invoices for a particular user. If an invoice is clicked on it should show the invoice details and if possible this should be styled in a way that it looks like a printed invoice.

##Appendix A – The cupcakes

###The bottomsBottom |Price
---|---
Chocolate|5.00
Vanilla|5.00
Nutmeg|5.00
Pistacio|6.00
Almond|7.00

###Toppings
Topping | Price
--- | ---Chocolate| 5.00Blueberry| 5.00Rasberry| 5.00Crispy| 6.00Strawberry| 6.00Rum/Raisin| 7.00Orange| 8.00Lemon| 8.00Blue cheese| 9.00 
