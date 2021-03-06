
create table admin(
    id varchar(20) primary key,
    username varchar(50) not null,
    password varchar(20) not null

);
insert into admin values('1', 'hashim', 'hashim');
insert into admin values('2','akash','akash');
insert into admin values('3','antony','antony');
insert into admin values('4','scaria','scaria');
insert into admin values('5','abbad','abbad');

create table user(
    userid varchar(20) primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone_number varchar(12) not null,
    gender varchar(1) not null,
    blood_type varchar(4) not null,
    password varchar(100) not null,
    age int(3) not null

);





create table blood_request(
    request_id varchar(20) primary key,
    requester_id varchar(20) ,
    unit float not null,
    request_date datetime not null,
    reasons varchar(100) not null,
    status varchar(20) not null default 'pending',
    action varchar(20) not null default 'none',
    admin_id varchar(20),
    foreign key(requester_id) references user(userid)   on delete cascade on update cascade ,
    foreign key(admin_id) references admin(id)   on delete cascade on update cascade

);


create table blood_donation(
    donation_id varchar(20) primary key,
    donor_id varchar(20) ,
    unit float not null,
    request_date datetime not null,
    diseases varchar(100) not null,
    status varchar(20) not null default 'pending',
    action varchar(20) not null default 'none',
    admin_id varchar(20),
    foreign key(donor_id) references user(userid)   on delete cascade on update cascade,
    foreign key(admin_id) references admin(id)   on delete cascade on update cascade


);

create table blood_stock(
    blood_type varchar(4) primary key,
    unit float not null,
    admin_id varchar(20),
    foreign key(admin_id) references admin(id)   on delete cascade on update cascade

);
insert into blood_stock values('A+',0,'1');
insert into blood_stock values('A-',0,'1');
insert into blood_stock values('B+',0,'1');
insert into blood_stock values('B-',0,'1');
insert into blood_stock values('AB+',0,'1');
insert into blood_stock values('AB-',0,'1');
insert into blood_stock values('O+',0,'1');
insert into blood_stock values('O-',0,'1');

