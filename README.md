# BookKing
ASP.NET based website demonstrating the connection of a webpage with a backend.

Prerequisites
---

 - SQL Server (Tested on Microsoft SQL server 2012)
 - Appropriate IDE for ASP.NET website (Tested on Visual Studio 2015)


Setup
---

1. Create the database using the commands specified in the sql files located in the `DatabaseCommands` folder.
    Note that the sql has to be executed in the following manner:
     - create.sql
     - insert.sql
     - views.sql
     - func_n_proc.sql
2. Note Data Source (Usually PC name with a possible postfix of '\SQLEXPRESS') and the name of the created database, and fill them in the 'Data Source' and 'Initial Catalog' fields respectively.
   This will allow the website to connect to it as it's backend. You may need to use a specific authentication menthod if it isn't set to your Windows User.
3. Launch the website!

The team
---
 - Ayush Soni (Ayush-Soni)
 - Mansi Somani
 - Reuben John (reubenjohn)
 - Saksham Garg
 - Shubham Mishra
 - Simar Singh
