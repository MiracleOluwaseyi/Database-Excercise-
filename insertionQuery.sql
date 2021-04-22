create table movie(
mov_id 				integer			NOT NULL,
mov_title			char(50)		NULL,
mov_year			integer 		NULL,
mov_time			integer			NULL,
mov_lang			char(50)		NULL,
mov_dt_rel			date			NULL,	
mov_rel_country		char(5)			NULL,
constraint			movie_PK		PRIMARY KEY(mov_id)
);

create table actor(
act_id				integer		NOT NULL,
act_fname			char(20)	NULL,
act_lname			char(20)	NULL,
act_gender			char(1)		NULL,
constraint 			actor_PK	PRIMARY KEY(act_id)
);

create table rating(
mov_id				integer		NOT NULL,
rev_id				integer		NOT NULL,
rev_stars			integer 	NULL,
num_o_ratings		integer		NULL,
constraint			rating_PK	PRIMARY KEY(mov_id, rev_id)
-- constraint			rating_FK	FOREIGN KEY(mov_id) 	references movie(mov_id)
-- constraint			rating_FK	FOREIGN KEY(rev_id) 	references  reviewer(rev_id)
);

create table movie_genres(
mov_id				integer		NOT NULL,
gen_id				integer		NOT NULL,
constraint			movie_genres_PK		PRIMARY KEY(mov_id, gen_id)
-- constraint		movie_genres_FK		FOREIGN KEY(mov_id)		references movie(mov_id)
-- constraint		movie_genres_FK		FOREIGN KEY(gen_id)		references genres(gen_id)
);

create table genres(
gen_id				integer		NOT NULL,
gen_title			char(20)	NULL,
constraint			genres_PK	PRIMARY KEY(gen_id)	
);

create table movie_cast(
act_id				integer		NOT NULL,
mov_id				integer		NOT NULL,
role				char(30)	NULL,
constraint 			movie_casr_PK		PRIMARY KEY(act_id, mov_id)
-- constraint 		movie_cast_Fk		FOREIGN KEY(act_id)		reference actor(act_id)	
-- constraint 		movie_cast_Fk		FOREIGN KEY(mov_id)		reference movie(mov_id)
);

create table director (
dir_id				integer 	NOT NULL,
dir_fname			char(20)	NULL,
dir_lname			char(20)	NULL,
constraint			director_PK		PRIMARY KEY(dir_id)
);

create table movie_direction(
dir_id				integer		NOT NULL,
mov_id				integer		NOT NULL, 
constraint			movie_direction_PK		PRIMARY KEY(dir_id, mov_id)
-- constraint 		movie_direction_FK		FOREIGN KEY(dir_id)		reference director(dir_id)
-- constraint 		movie_direction_FK		FOREIGN KEY(mov_id)		reference movie(mov_id)
);

create table reviewer(
rev_id				integer 		NOT NULL,
rev_name			char(30)		NULL,
constraint 			reviewer_PK		PRIMARY KEY(rev_id)
);






