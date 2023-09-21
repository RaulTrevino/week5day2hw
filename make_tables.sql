--theater---

CREATE TABLE theater(
theater_id SERIAL PRIMARY KEY,
theater_name VARCHAR(100),
theater_address VARCHAR(100)
);

---rewards---
CREATE TABLE rewards(
reward_id SERIAL PRIMARY KEY,
theater_id integer NOT NULL,
customer_id integer NOT NULL,
FOREIGN KEY(theater_id) REFERENCES theater(theater_id),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
reward_points VARCHAR(10),
coupons VARCHAR(1000)
);

---EMPLOYEES----
CREATE TABLE employees(
employee_id SERIAL PRIMARY KEY,
theater_id integer NOT NULL,
first_name VARCHAR(100),
last_name VARCHAR(100),
FOREIGN KEY(theater_id) REFERENCES theater(theater_id),
phone_number varchar(20),
email_address VARCHAR(20)
);

--screenings---
CREATE TABLE screenings(
show_id SERIAL PRIMARY KEY,
theater_id integer NOT NULL,
movie_id integer NOT NULL,
start_time VARCHAR(10),
end_time VARCHAR(10),
FOREIGN KEY(theater_id) REFERENCES theater(theater_id),
FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);
----movies---------
CREATE TABLE movies(
movie_id SERIAL PRIMARY KEY,
movie_title VARCHAR(100),
genre VARCHAR(15),
movie_rating VARCHAR(15),
movie_length VARCHAR(15)
);

----tickets---
CREATE TABLE tickets(
ticket_id SERIAL PRIMARY KEY,
customer_id integer NOT NULL,
movie_id integer NOT NULL,
show_id integer NOT NULL,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
FOREIGN KEY(show_id) REFERENCES screenings(show_id),
show_time VARCHAR(20),
today_date DATE
);


-----customers----
CREATE TABLE customers(
customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
phone_number VARCHAR(100),
email_address VARCHAR(100)
);


-----concessions----
CREATE TABLE concessions(
concession_id SERIAL PRIMARY KEY,
customer_id integer NOT NULL,
food_item VARCHAR(50),
food_price NUMERIC(5,2),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

----snacks-----
CREATE TABLE snacks(
snack_id SERIAL PRIMARY KEY,
concession_id integer NOT NULL,
FOREIGN KEY(concession_id)REFERENCES concessions(concession_id),
snack_item varchar(50),
snack_price numeric(5,2));

