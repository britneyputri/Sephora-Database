-- =============================================
-- Author:      Britney
-- Create date: 08 - Oct -2022
-- Description: Create Tables
-- =============================================

create database Sephora;
use Sephora;

#Parent Tables 
create table customer(
	email varchar(100) not null,
    `name` varchar(100) not null,
    hp_num int not null,
    member varchar(5) not null,
    constraint customer_pk primary key (email)
    );


create table beauty_service(
	service_id varchar(60) not null,
    service_type varchar(60) not null,
    price int not null,
    `description` varchar(500) not null,
    constraint beauty_service_pk primary key (service_id)
    );
  
create table distributor
(distributor_id varchar(15) not null,
distributor_name varchar(15) not null,
distributor_address varchar(60) not null,
distributor_postalcode varchar(25) not null,
constraint distributor_pk primary key(distributor_id)
);

create table payment
(payment_id varchar(10) not null, 
pmt_date date not null,
total_paid int not null,
pmt_method char(1) not null,
check (pmt_method IN ('c','a','p')),
constraint payment_pk primary key (payment_id));


create table membership(
	membership_tier varchar(10) not null,
    min_points int not null,
    constraint membership_pk primary key(membership_tier)
    );

#Children Table 
create table `member`(
	email varchar(100) not null, #checked
    member_id varchar(50) not null,
    date_of_birth date not null,
    date_created date not null,
    constraint member_pk primary key (email),
    constraint member_fk1 foreign key(email) references customer(email)
    );

create table beauty_service_booking(
	booking_id varchar(10) not null,
    booking_date date not null,
    booking_time time not null,
    branch_id varchar(10) not null,
	payment_id varchar(10) not null, 
    cust_email varchar(100) not null, 
    service_id varchar(60) not null, 
    constraint beauty_service_booking_pk primary key (booking_id),
    constraint beauty_service_booking_fk1 foreign key (service_id) references beauty_service(service_id),
    constraint beauty_service_booking_fk2 foreign key (cust_email) references customer(email),
    constraint beauty_service_booking_fk3 foreign key (payment_id) references payment(payment_id) 
    );

create table product(
	product_id varchar(15) not null,
	product_name varchar(60) not null,
	category varchar(15) not null,
	price int not null,
	brand_name varchar(60) not null,
    stock int not null, 
	constraint product_pk primary key(product_id));
 
 create table shipment
 (product_id varchar(15) not null, 
  quantity int not null, 
 distributor_id varchar(15) not null, 
 shipment_date date not null, 
 primary key (product_id, distributor_id, shipment_date), 
 constraint shipment_fk1 foreign key (distributor_id) references distributor(distributor_id),
 constraint shipment_fk2 foreign key (product_id) references product(product_id)); 
 
create table purchase_order(
	order_id varchar(15) not null,
	email varchar(100) not null, 
	payment_id varchar(10) not null, 
	order_date date not null,
	order_time time not null,
	delivery_address varchar(100) not null,
	delivery_postalcode varchar(15) not null,
    constraint purchase_order_pk primary key (order_id),
	constraint purchase_order_fk1 foreign key (email) references customer(email), 
	constraint purchase_order_fk2 foreign key (payment_id) references payment(payment_id));

create table purchase_order_product(
	order_id varchar(15) not null,
	product_id varchar(15) not null, 
	quantity int not null,
	constraint poproduct_pk primary key (order_id, product_id), 
	constraint poproduct_fk1 foreign key (order_id) references purchase_order(order_id),
	constraint poproduct_fk2 foreign key (product_id) references product(product_id));
 
 create table credit_card(
	pmtid_c varchar(25) not null, 
	acct_no  varchar(13) not null, 
	bank_name varchar(5),
	constraint credit_card_pk primary key (pmtid_c),
	constraint credit_card_fk foreign key (pmtid_c) references payment(payment_id));

create table atome(
	pmtid_a varchar(25) not null, 
	acct_id varchar(7) not null, 
	constraint atome_pk primary key (pmtid_a),
	constraint atome_fk foreign key (pmtid_a) references payment(payment_id));

create table paypal(
	pmtid_p varchar(25) not null,
	Ref_no varchar(11) not null, 
	constraint paypal_pk primary key (PMtid_p),
	constraint paypal_fk foreign key (PMtid_p) references payment(payment_id));