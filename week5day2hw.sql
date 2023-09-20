INSERT INTO theater(
theater_id,
theater_name,
theater_address)
values(
'1',
'AMC THEATER',
'123 FAKE ST Chicago, IL, 60612'
);

INSERT INTO rewards(
theater_id,
customer_id,
reward_points,
coupons)
values(
'1',
'1',
'500',
'free/hamburger');


INSERT INTO employees(
employee_id,
first_name,
last_name,
theater_id,
phone_number,
email_address)
values(
'1',
'John',
'Snow',
'1',
'123-456-7890',
'email@email.com');

INSERT INTO screenings(
show_id,
Start_Time,
theater_id,
movie_id,
end_time)
values(
'1',
'8pm',
'1',
'1',
'12pm'
)

INSERT INTO movies(

movie_title,
genre,
movie_rating,
movie_length)
VALUES('The Dark Knight','Action/Thriller','R','152 min'),
('The Joker','Crime/Drama', 'R', '165 min'),
('Teenage Mutant Ninja Turtles II','Adventure','PG','128 min');


INSERT INTO tickets(
ticket_id,
customer_id,
movie_id,
show_id,
Show_time,
today_date)
values(
'1',
'1',
'1',
'1',
'8pm',
'9/19/2023');


INSERT INTO customers(
customer_id,
first_name,
last_name,
phone_number,
email_address)
values('6','John','Doe','123-456-7896','email1@email.com'),('7','Johnny','Doey','123-546-7896','email2@email.com'),
('9','Jane','Doe','321-456-7896','email3@email.com'),('5','Jannie','William','456-453-7896','email4@email.com');


INSERT INTO concessions(
concession_id,
food_item,
food_price,
customer_id)
values('1','hot dog','5.99','1'),('2','hamburger','7.99','2'),('3','popcorn','9.99','3'),('4','pizza','4.99','4'),('5','chicken','12.99','4');


