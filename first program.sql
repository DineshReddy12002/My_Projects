select * from  books;
create table books(
book_id int , title varchar(100) , author varchar(255) , genre varchar(100) , price int , published_year year , in_stock boolean);
insert into books values
(1,'BheemBam','alex','creative',145,2001,true);
insert into books values
(1,'komaram','apex','creative',145,2001,true);
select * from books;
select  title , published_year from books; 
create table employees(
employee_id int primary key,
salary decimal (8,3),
name varchar(255) not null
);
select * from employees;
insert into employees values(1,'Dinesh'),(2,'Sunny');
create table hp(
roll_no int primary key,
name varchar(255) unique);
insert into hp values(345,'Victus'),(35,'vicus');
select roll_no from hp;
create table def_key(serial_id int primary key,serial_date date default '2002-08-09');
insert into def_key values(34673,'2022-08-09');
select * from def_key;
insert into def_key (serial_id)values(
200);
show databases;
show tables;
select * from hp where roll_no=345;
select * from  hp limit 3;
select count(*)  as book_count from books;
select * from hp;
update hp set roll_no = 375
where name = vicus;
delete from hp where name = 'Victus';
set sql_safe_updates=1;
create database Sunny;
show databases;
use Sunny;
create table books(
book_id int , title varchar(100) , author varchar(255) , genre varchar(100) , price int , published_year year , in_stock boolean);
INSERT INTO books (book_id, title, author, genre, price, published_year, in_stock) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 10, 1925, TRUE),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 15, 1960, TRUE),
(3, '1984', 'George Orwell', 'Dystopian', 20, 1949, FALSE),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Classic', 12, 1951, TRUE),
(5, 'Moby Dick', 'Herman Melville', 'Adventure', 18, 1952, FALSE);

CREATE TABLE book(
    book_id INT,
    title VARCHAR(100),
    author VARCHAR(255),
    genre VARCHAR(100),
    price INT,
    published_year YEAR,
    in_stock BOOLEAN,
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE
);
INSERT INTO book (book_id, title, author, genre, price, published_year, in_stock) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 10, 1925, TRUE),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 15, 1960, TRUE),
(3, '1984', 'George Orwell', 'Dystopian', 20, 1949, FALSE),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Classic', 12, 1951, TRUE),
(5, 'Moby Dick', 'Herman Melville', 'Adventure', 18, 1851, FALSE);
show tables;
alter table books add book_no int primary key;
alter table books modify author varchar(55) ;
alter table employees drop salary;
drop table hp;
rename table hp to HP_LAPTOPS;
truncate table employees;
create table movies(
movie_id int primary key , movie_name varchar(200),movie_budget bigint);
create table directors(
director_id int primary key , movie_name varchar(200),director_budget bigint);
drop table def_key,hp,hp_laptops,books,employees;

INSERT INTO movies (movie_id, movie_name, movie_budget) VALUES
(1, 'Inception', 160000000),
(2, 'Titanic', 200000000),
(3, 'The Dark Knight', 185000000),
(4, 'Avatar', 237000000),
(5, 'Interstellar', 165000000);
select * from movies ;
INSERT INTO directors (director_id, movie_name, director_budget) VALUES
(1, 'Christopher Nolan', 100000000),
(2, 'James Cameron', 150000000),
(3, 'Quentin Tarantino', 80000000),
(4, 'Steven Spielberg', 120000000),
(5, 'Ridley Scott', 90000000);
select * from directors;
select *  from directors d join movies m on m.movie_name = m.movie_name;
create database union_test;
create table telugu_movie(movie_id int
 , movie_title varchar(10));
 create table hindi_movie(movie_id int
 , movie_title varchar(10));
INSERT INTO telugu_movie (movie_id, movie_title) VALUES
(1, 'Baahubali'),
(2, 'Magadheera'),
(3, 'Arjun'),
(4, 'Pokiri'),
(5, 'Robot');
INSERT INTO hindi_movie (movie_id, movie_title) VALUES
(1, 'Dangal'),
(2, 'Sholay'),
(3, 'arjun'),
(4, 'Raees'),
(5, 'robot');
select * from hindi_movie;
select * from telugu_movie;
select movie_id,movie_title from telugu_movie union all select movie_id,movie_title from hindi_movie;