show databases;
show tables;
use fingertips;
select * from proj1;

#1

select item_identifier from proj1;

#2

select count(item_identifier) from proj1;

#3

select max(item_weight) from proj1;

#4

select min(item_weight) from proj1;

#5

select avg(item_weight) from proj1;

#6

select * from proj1;
select count(item_fat_content),item_fat_content  from proj1 where item_fat_content in ('low fat');

#7

select count(item_fat_content),item_fat_content  from proj1 where item_fat_content in ('regular');

#8

select max(item_mrp) from proj1;

#9

select min(item_mrp) from proj1;

#10

select item_identifier, item_fat_content, item_type, item_mrp  from proj1 where item_mrp > 200;

#11

select max(item_mrp) from proj1 where item_fat_content = 'low fat';
select max(item_mrp) from proj1 where item_fat_content in ('low fat');

#12

select min(item_mrp), item_fat_content from proj1 where item_fat_content = 'low fat';

#13

select * from proj1 where item_mrp between 50 and 100;

#14

select distinct item_fat_content from proj1;

#15

select distinct item_type from proj1;

#16

select * from proj1 order by item_mrp desc;

#17

select * from proj1 order by item_outlet_sales asc;

#18

select * from proj1 order by item_type asc;

#19

select * from proj1 where item_type in ('dairy', 'meat');

#20

select distinct outlet_size from proj1;

#21

select distinct outlet_location_type from proj1;

#22

select distinct outlet_type from proj1;

#23

select * from proj1;
select item_type, count(item_type) as no_of_item_type from proj1 group by item_type order by count(item_type) desc;

#24
select outlet_size, count(outlet_size) as no_of_outlet_size from proj1 group by outlet_size order by count(outlet_size) asc;

#26

select outlet_type, count(outlet_type) as no_of_outlet_type from proj1 group by outlet_type order by count(outlet_type) desc;

#27

select outlet_location_type, count(outlet_location_type) as no_of_outlet_location_type from proj1 group by outlet_location_type order by count(outlet_location_type) desc;

#28

select * from proj1;

select item_type, item_mrp from proj1 where item_mrp = (select max(item_mrp) from proj1);

#29

select item_type, item_mrp from proj1 where item_mrp = (select min(item_mrp) from proj1);

#30

select item_type, item_mrp, outlet_establishment_year  from proj1 where item_mrp = (select min(item_mrp) from proj1 order by min(item_mrp) desc);
select distinct item_type, min(item_mrp), outlet_establishment_year from proj1 group by outlet_establishment_year order by outlet_establishment_year desc;
#31

select item_type, item_mrp, outlet_establishment_year  from proj1 where item_mrp = (select max(item_mrp) from proj1 order by min(item_mrp) desc);
select distinct item_type, max(item_mrp), outlet_establishment_year  from proj1 group by outlet_establishment_year order by outlet_establishment_year desc;

#32

select * from proj1;

select outlet_size, item_mrp from proj1 where item_mrp = (select avg(item_mrp) from proj1 order by avg(item_mrp) desc);
select distinct outlet_size, max(item_mrp) from proj1 group by outlet_size order by outlet_size desc;


#33

select distinct outlet_size, avg(item_mrp) from proj1 group by outlet_size;

#34

select distinct outlet_type, avg(item_mrp) from proj1 group by outlet_type order by outlet_type;

#35

select distinct outlet_type, min(item_mrp) from proj1 group by outlet_type;

#36

select item_type, max(item_weight) from proj1 group by item_type;

#37

select outlet_establishment_year, max(item_weight) from proj1 group by outlet_establishment_year;

#38

select outlet_type, min(item_weight) from proj1 group by outlet_type;

#39

select outlet_location_type, avg(item_weight) from proj1 group by outlet_location_type order by outlet_location_type desc;

#40

select item_type, max(item_outlet_sales) from proj1 group by item_type;
select * from proj1;

#41

select item_type, min(item_outlet_sales) from proj1 group by item_type;

#42

select outlet_establishment_year, min(item_outlet_sales) from proj1 group by outlet_establishment_year;

#43

select outlet_establishment_year, max(item_outlet_sales) from proj1 group by outlet_establishment_year order by max(item_outlet_sales) desc;

#44

select outlet_size, avg(item_outlet_sales) from proj1 group by outlet_size order by max(item_outlet_sales) desc;

#45

select outlet_size, avg(item_outlet_sales) from proj1 group by outlet_size;

#46

select outlet_type, avg(item_outlet_sales) from proj1 group by outlet_type;

#47

select outlet_type, Min(item_outlet_sales) from proj1 group by outlet_type;

#48
#49

select item_type, Min(item_outlet_sales) from proj1 group by item_type;

#50
#51
 select item_fat_content, Min(item_outlet_sales) from proj1 group by item_fat_content;

#52

select item_type, max(item_visibility) from proj1 group by item_type;

#53

select item_type, min(item_visibility) from proj1 group by item_type;
select * from proj1;

#54

select item_type, outlet_location_type, sum(item_outlet_sales) from proj1 group by item_type having outlet_location_type = 'tier 1';

#55

select item_type, item_fat_content, sum(item_outlet_sales) from proj1 group by item_type having item_fat_content in ('low fat', 'LF');

select item_type, item_fat_content, sum(item_outlet_sales) from proj1 group by item_type having item_fat_content = 'Low fat' or item_fat_content = 'LF';

