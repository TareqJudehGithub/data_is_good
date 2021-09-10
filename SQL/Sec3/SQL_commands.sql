/* 
Data Query Language (DQL)
 - DQL are commands used to communicate with DB and retrieve data.
 - SELECT is the only command that comes with DQL
 
Data Definition Language (DDL)
 - DDL are the commands used to define or change the structure of a table, like
   creating, updating, and deleting a table.
 - DDL commands are auto-commited, permanently  save all changes in the database.
 - CREATE, ALTER, DROP, and TRUNCATE are DDL commands.
 
Data Manipulation Language (DML)
 - DML modify the Data.
 - DML responsible for all change of values in DB.
 - DML commands are not auto-commited, we can rollback to stable conditions in 
   case of a mistake.
 - INSERT, UPDATE, DELETE.  

Data Control Language (DCL)
 - DCL grants and take back authority from any DB user.
 - DCL control the access to data and user permissions.
 - GRANT, and PROVOKE are DCL commands.
 
Transaction Control Language (TCL)
 - TCL controls the transactions (modifications) made on DB.
 - TCL can only be used with commands that are not auto commited i.e. DML commands.
 - COMMIT, ROLLBACK, SAVEPOINT are TCL commands.
*/