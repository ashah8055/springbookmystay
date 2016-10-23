create sequence hibernate_sequence start 100 increment 1
;

    create table payment_details (
        payment_id int4 not null,
        payment_amount float4,
        payment_date timestamp,
        reservation_id int4,
        securityCard_card_no int4,
        primary key (payment_id)
    )
;

    create table reservation_details (
        id int4 not null,
        checkin_date timestamp,
        checkout_date timestamp,
        reservation_code varchar(255),
        reservation_status boolean,
        payment_payment_id int4,
        user_user_id int4,
        primary key (id)
    )
;

    create table reservation_room (
        reservation_id int4 not null,
        room_id int4 not null
    )
;

    create table room_details (
        room_id int4 not null,
        room_availaibility boolean,
        adult_num int4,
        customer_capacity int4,
        child_num int4,
        date_range bytea,
        default_rate float4,
        balcony boolean not null,
        flatTV boolean not null,
        microwave boolean not null,
        facility_minifridge boolean,
        room_rate float4,
        room_number varchar(255),
        smoke boolean not null,
        room_type varchar(255),
        primary key (room_id)
    )
;

    create table security_card (
        card_no int4 not null,
        card_address1 varchar(255),
        card_address2 varchar(255),
        card_type varchar(255),
        card_city varchar(255),
        user_nickname varchar(255),
        security_code int4,
        card_state varchar(255),
        card_zipcode varchar(255),
        payment_payment_id int4,
        user_user_id int4,
        primary key (card_no)
    )
;

    create table user_details (
        user_id int4 not null,
        State varchar(255),
        addr1 varchar(255),
        addr2 varchar(255),
        city varchar(255),
        phone varchar(255),
        zipcode varchar(255),
        admin boolean,
        security_answer varchar(255),
        security_question int4,
        user_email varchar(255),
        first_name varchar(255),
        last_name varchar(255),
        user_password varchar(255),
        primary key (user_id)
    )
;

    alter table payment_details 
        add constraint FK3j4hf0w4oj7aa28d8d26qcxv4 
        foreign key (reservation_id) 
        references reservation_details
;

    alter table payment_details 
        add constraint FKpvprlar4d6kpvw0b3npe86rp9 
        foreign key (securityCard_card_no) 
        references security_card
;

    alter table reservation_details 
        add constraint FKc3p3w37lrx2u7xh1rekmqf9d2 
        foreign key (payment_payment_id) 
        references payment_details
;

    alter table reservation_details 
        add constraint FKivhonly988coxlph2cdom2qtj 
        foreign key (user_user_id) 
        references user_details
;

    alter table reservation_room 
        add constraint FK1d3f9yetk5walbu8m2iardlgp 
        foreign key (room_id) 
        references room_details
;

    alter table reservation_room 
        add constraint FKrbpxogdpoosycihxybnpc5cg3 
        foreign key (reservation_id) 
        references reservation_details
;

    alter table security_card 
        add constraint FK1cj1gkwtkxg4i5or6hf1nhbg9 
        foreign key (payment_payment_id) 
        references payment_details
;

    alter table security_card 
        add constraint FKgll3f7on53v5btdpdc7fkyug5 
        foreign key (user_user_id) 
        references user_details
;
