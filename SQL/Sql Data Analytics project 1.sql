-- SQL PROJECT

-- DATA CLEANING
-- STAGE1: create a staging table

select *
from crime_dataset_india;

create table crime_dataset_staging
as 
select *
from crime_dataset_india;

select * 
from crime_dataset_staging;

-- STAGE2: check and remove duplicates

select * 
from crime_dataset_staging;

with cte_duplicates as
(select*, row_number () 
over(partition by `Date Reported`, `Date of Occurrence`, `Time of Occurrence`, `Police Deployed`, `crime description`
order by `crime code`) as row_num
from crime_dataset_staging)
select *
from cte_duplicates
where row_num > 1
order by row_num desc;

-- STAGE3 : check for null values, blanks and remove them

select *
from  crime_dataset_staging;

select count(*),
sum(case when `Crime Description` is null or `Crime Description` = ' ' then 1 else 0 end) as empty_age_column,
sum(case when `Crime Description` is null or `Crime Description` = ' ' then 1 else 0 end) as empty_Description_column
from crime_dataset_staging;

 -- STAGE4: format columns and drop unwanted
 
select *
from  crime_dataset_staging;

alter table crime_dataset_staging
add column crime_date_report date,
add column crime_time_report time;

update crime_dataset_staging
set crime_date_report = date(str_to_date(`Date Reported`, '%d-%m-%Y %H:%i')),
	crime_time_report = time(str_to_date(`date Reported`,'%d-%m-%Y %H:%i'));

select crime_date_report, crime_time_report
from crime_dataset_staging;

alter table  crime_dataset_staging
drop column `Date Reported`;

alter table crime_dataset_staging
add column crime_date_occurrence date;

update crime_dataset_staging
set crime_date_occurrence = date(str_to_date(`Date of Occurrence`, '%m-%d-%Y %H:%i'));

alter table crime_dataset_staging
drop column `Date of Occurrence`;

alter table crime_dataset_staging
add column crime_time_occurrence time;

update crime_dataset_staging
set crime_time_occurrence = time(str_to_date(`Time of Occurrence`, '%d-%m-%Y %H:%i'));

alter table  crime_dataset_staging
drop column `Time of Occurrence`;

-- STAGE5: Standardize the data

select *
from crime_dataset_staging;

select distinct city
from crime_dataset_staging;

select distinct `crime description`
from crime_dataset_staging;

select distinct `Crime Domain`
from crime_dataset_staging;

select *
from crime_dataset_staging;