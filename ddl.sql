Create table person
(login		varchar(20) primary key,
Password	varchar(20),
id		varchar(20),
name		varchar(20),
address		varchar(30),
phno		numeric(10,0),
type		varchar(20)
);


Create table leavetype
(ltid		varchar(20) primary key,
ltname		varchar(30),
typecount	numeric(3,0));


Create table contains
(login	varchar(20) references person(login),
ltid	varchar(20) references leavetype(ltid)); 

Create table authority
	(aid		varchar(20) primary key,
	aname		varchar(20),
	aaddress	varchar(30),
	aphno		numeric(10,0));

Create table leave
	(leaveid	varchar(20) primary key,
	Reason		varchar(50),
	count		numeric(3,0),
	apprstatus	varchar(20),
	fromdate	date,
	todate		date,
	aid		varchar(20)  references authority(aid) 
	);

create table apply
	(login	varchar(20) references person(login),
	ltid	varchar(20) references leavetype(ltid),
	leaveid varchar(20) references leave(leaveid));

create table specialrequest
	(exid	varchar(20) primary key,
	ecount numeric(3,0));

create table extends
	(leaveid varchar(20) references leave(leaveid),
	exid 	varchar(20) references specialrequest(exid));

