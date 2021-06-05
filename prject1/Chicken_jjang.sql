drop table chicken;

create table chicken(
    brand varchar2(10) not null,
    kind varchar2(20) not null,
    price number(10) not null
    );


select table_name, constraint_type, constraint_name
from user_constraints where table_name='CHICKEN';


drop table chicken_offer;

create table chicken_offer(
    brand varchar2(10),
    Event varchar2(50),
    constraint fk_chicken_offer_brand foreign key (brand) references chicken(brand)
);


select table_name, constraint_type, constraint_name
from user_constraints where table_name='CHICKEN_OFFER';



drop table chicken_detail;



create table chicken_detail(
    brand varchar2(10),
    award varchar2(20),
    founding_date date,
    loc varchar2(20),
    constraint fk_chicken_detail_brand foreign key (brand) references chicken(brand),
    constraint pk_chicken_detail_loc primary key (loc)
);


select table_name, constraint_type, constraint_name
from user_constraints where table_name='CHICKEN_DETAIL';


insert into chicken values ('BBQ', '양념', 17000, 4, '짱이다!');
insert into chicken values ('BBQ', '크리스피', 19000, 3, '별로');












----------
constraint ck_chicken_rate check (rate between 1 and 5)