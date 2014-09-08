/*SQLite homework 1*/

/* Problem 1*/

/* Create table R(A,B) where both A and B are integers*/
create table R (A integer, B integer);

/* Insert tuples (2,4) (1,1) (3,2)*/
insert into R (A,B) values (2,4) (1,1) (3,2);

/* return all tuples */
select * from R;

/*insert ('5','2'). Do you get an error why*/
insert into R (A,B) values ('5','2');

/* return only column A for all tuples */
select A from R;

/* return all tuples where A<= B */
select * from R where A<=B


/*Problem 2*/
/* Create a table my Restaurant with the following strategy 
with name varchar field
Distance: integer
Date of last visit: varchar field, intepreted as date
Whether you like it or not: integer, interpreted as Boolean*/

create table MyRestaurant (name varchar, distance int, lastVisit varchar, enjoy int);

/* Problem 3 */
/* Insert at least 5 tuples using Insert, 1 you like, 1 you do not like 
and at least where you leave the iLike field null*/
insert into MyRestaurant vales('huyle', '20', '2014-05-01',0 );
insert into MyRestaurant vales('OanhBui', '10', '2014-06-21',1 );
insert into MyRestaurant vales('nigga', '15', '2014-07-11',0 );
insert into MyRestaurant vales('KhoiNguyen', '10', '2014-08-25',1 );
insert into MyRestaurant vales('Barrack Obama', '20', '2014-09-24',0 );
insert into MyRestaurant vales('Tryndamere Amumu', '10', '2014-10-09',null);

/* problem 4 */
/* return all restaurant in your table */
select * from MyRestaurant;

/*Problem 5*/
/* print the result with comma, |, each column has width 15, print the columns header */

.separator ","
select * from MyRestaurant;
.mode list
select * from MyRestaurant;
.mode column;
select * from MyRestaurant;
.width 15;
select * from MyRestaurant;

/* Problem 6 */
/* Modify your SQL query such that it pri.nts "I liked it" or "I hated it"
 for each restaurant you liked or not. Note that you are not allowed to modify 
 the table on disk. You should be able to answer this question using only a SELECT statement. 
A solution that creates and uses an extra table, however, will be accepted. */
create table LikeItOrNot(
	LikeIt int,
	Foreign key (LikeslesIt) references MyRestaurant(enjoy);
	LikeItString TEXT

);
insert into LikeItOrNot values (0, dislike);
insert into LikeItOrNot values (1, likeIt);
select MyRestaurant.name, MyRestaurant.distance, MyRestaurant.lastVisit, LikeItOrNot.LikeItString where 
MyRestaurant.enjoy = LikeItOrNot.LikeIt;


/*Problem 7 */
/* Write a SQL query that returns all restaurant that you like, and have not visited since more
3 months ago */

select * from MyRestaurant where enjoy = 1 and lastVisit < (select date ('now', '-3 month', '-0 day'));
