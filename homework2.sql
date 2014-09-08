/* SQL homework 2 */


/* PART A */
/* Create the database name call myhw2 and then create six table and then import six 
text files to our the newly created table */
/* when you want to use varchar(max) in sqlite3 , you could just use Text */
sqlite3 myhw2.db
create table Actor (id int primary key, fname varchar(30), lname varchar(30), gender varchar(1)  );
create table Movie ( id int primary key, name varchar(50), int year);
create table Director(id int primary key, fname varchar(30), lname varchar(30));
create table Cast( pid int , mid int, role text, foreign key (pid) references Actor(id), 
														foreign key (mid) references Movie(id));
create table MovieDirector(did int, mid int, foreign key (did) references Directors(id),
											 foreign key (mid) references Movie(id));
create table Genre(mid int, genre text, foreign key (mid) references Movie(id));

/* Import the imdb data inside all of you tables */

/* turn on the foreign_keys */
PRAGMA foreign_keys = on;
/*The syntax for importing into databases with SQLite 3 is
	.import filename tablename; 
*/
.import 'actor.txt' Actor;
.import 'casts.txt' Cast;
.import 'directors.txt' Director;
.import 'genre.txt' Genre;
.import 'movie.txt' Movie;
.import 'movie_directors.txt' Director;


/* PART C: QUERIES PRACTICE */

/* 1. List all the first and last anme of all the actors who played in the movie 'Office 444'
		13 rows should be expected */
select Actor.fname, Actor.lname where Movie.name = 'Office 444' and Actor.id= Cast.pid and Movie.id = Cast.mid;