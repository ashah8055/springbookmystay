create sequence hibernate_sequence start 1 increment 1;

    create table payment_details (
        payment_id int4 not null,
        payment_amount float4,
        payment_date timestamp,
        reservation_id int4,
        securityCard_cardNo int4,
        primary key (payment_id)
    );

    create table reservation_details (
        id int4 not null,
        checkin_date timestamp,
        checkout_date timestamp,
        reservation_code varchar(255),
        reservation_status boolean,
        payment_payment_id int4,
        room_room_id int4,
        user_user_id int4,
        primary key (id)
    );

    create table room_details (
        room_id int4 not null,
        adult_num int4,
        customer_capacity int4,
        child_num int4,
        default_rate float4,
        balcony boolean not null,
        flatTV boolean not null,
        microwave boolean not null,
        facility_minifridge boolean,
        flag boolean,
        room_rate float4,
        room_number varchar(255),
        smoke boolean,
        room_type varchar(255),
        primary key (room_id)
    );

    create table security_card (
        cardNo int4 not null,
        card_address1 varchar(255),
        card_address2 varchar(255),
        card_type varchar(255),
        card_expdate varchar(255),
        card_city varchar(255),
        user_nickname varchar(255),
        security_code int4,
        card_state varchar(255),
        card_zipcode varchar(255),
        payment_payment_id int4,
        user_user_id int4,
        primary key (cardNo)
    );

    create table users (
        user_id int4 not null,
        State varchar(255),
        addr1 varchar(255),
        addr2 varchar(255),
        city varchar(255),
        country varchar(255),
        phone varchar(255),
        zipcode varchar(255),
        enabled boolean not null,
        password varchar(255) not null,
        security_answer varchar(255),
        security_question int4,
        user_email varchar(255),
        last_name varchar(255),
        username varchar(255) not null,
        primary key (user_id)
    );
    
    create table authorities (
        user_id int4 not null,
        role varchar(255)
    );

    alter table users 
        add constraint UK_r43af9ap4edm43mmtq01oddj6 unique (username)
;

    alter table authorities 
        add constraint FKk91upmbueyim93v469wj7b2qh 
        foreign key (user_id) 
        references users
;
    alter table payment_details 
        add constraint FK3j4hf0w4oj7aa28d8d26qcxv4 
        foreign key (reservation_id) 
        references reservation_details
;
    alter table payment_details 
        add constraint FKeswnp3njledim9e2ygt42atjy 
        foreign key (securityCard_cardNo) 
        references security_card
;
    alter table reservation_details 
        add constraint FKc3p3w37lrx2u7xh1rekmqf9d2 
        foreign key (payment_payment_id) 
        references payment_details
;
    alter table reservation_details 
        add constraint FKegyvkw0ayyxf22jxq885d1i72 
        foreign key (room_room_id) 
        references room_details
;
    alter table reservation_details 
        add constraint FKbj1spub4hoadfl419ul5cx18i 
        foreign key (user_user_id) 
        references users
;
    alter table security_card 
        add constraint FK1cj1gkwtkxg4i5or6hf1nhbg9 
        foreign key (payment_payment_id) 
        references payment_details
;
    alter table security_card 
        add constraint FK7j52p9x2gtpa1vh362i6g4ula 
        foreign key (user_user_id) 
        references users
;