-- create a new user for connections to database
create user dbuser identified by 'some password'; -- change password!!!

-- grant privileges
grant all privileges on finance.* to dbuser; -- allow access to finance (database)