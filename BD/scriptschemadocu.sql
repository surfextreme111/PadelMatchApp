create table users
(
    id    serial
        primary key,
    uname text,
    pwd   text,
    token text
);

alter table users
    owner to postgres;