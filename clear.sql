drop view if exists view_eyepiece;
drop view if exists view_telescope;
drop view if exists view_accessory;
drop view if exists view_stock;
drop view if exists view_order_sum;
drop view if exists view_orders;
drop view if exists view_customers;
drop view if exists view_employees;

drop table if exists items cascade;
drop table if exists telescope cascade;
drop table if exists eyepiece cascade;
drop table if exists accessory cascade;
drop table if exists stock cascade;
drop table if exists customers cascade;
drop table if exists employees cascade;
drop table if exists orders cascade;
drop table if exists order_item cascade;