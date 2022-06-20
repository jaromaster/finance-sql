-- create table for users
create table users (
    id int not null auto_increment, -- id of user
    user_name varchar(20),          -- name of user (has to be unique)
    user_password_hash varchar(129),-- hash of user password

    -- primary keys
    primary key(id),
    unique(user_name)
);




-- create table for payments
create table payments (
    id int not null auto_increment,         -- id of payment
    user_id int not null,                   -- id of user, who is owner of payment
    payment_date date not null,             -- date of payment
    payment_time time not null,             -- time of payment
    payment_amount float(11, 2) not null,   -- amount of payment as floating point number (2 decimals)

    payment_category enum('business',       -- payment category (business, personal, ...)
        'personal'),

    payment_text varchar(150),              -- additional text to describe payment


    -- primary key, foreign key
    primary key(id),                        
    foreign key(user_id) references users(id) on delete cascade
);