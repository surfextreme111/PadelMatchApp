create sequence usuarios_idusuario_seq
    as integer;

alter sequence usuarios_idusuario_seq owner to postgres;

create sequence clubs_idclub_seq
    as integer;

alter sequence clubs_idclub_seq owner to postgres;

create sequence pistas_idpista_seq
    as integer;

alter sequence pistas_idpista_seq owner to postgres;

create sequence reservas_idreserva_seq
    as integer;

alter sequence reservas_idreserva_seq owner to postgres;

create sequence parejas_idpareja_seq
    as integer;

alter sequence parejas_idpareja_seq owner to postgres;

create table provincia
(
    idprovincia serial
        primary key,
    nombre      varchar
);

comment on column provincia.idprovincia is 'nombre';

alter table provincia
    owner to postgres;

create table rol
(
    idrol  serial
        constraint rol_pk
            primary key,
    nombre text
);

alter table rol
    owner to postgres;

create table usuario
(
    idusuario integer default nextval('app.usuarios_idusuario_seq'::regclass) not null
        constraint usuarios_pkey
            primary key,
    username  text                                                            not null,
    password  text                                                            not null,
    email     text                                                            not null,
    nivel     integer default 0,
    foto      text,
    victorias integer default 0,
    derrotas  integer default 0,
    idrol     integer default 1
        constraint idrol
            references rol
);

alter table usuario
    owner to postgres;

alter sequence usuarios_idusuario_seq owned by usuario.idusuario;

create table club
(
    idclub           integer default nextval('app.clubs_idclub_seq'::regclass) not null
        constraint clubs_pkey
            primary key,
    nombre           text,
    descripcion      text,
    idusuariocreador integer
        constraint fk_idusuariocreador
            references usuario,
    fechain          timestamp,
    idprovincia      integer,
    imagen           text,
    coordenadas      text
);

alter table club
    owner to postgres;

alter sequence clubs_idclub_seq owned by club.idclub;

create table pareja
(
    idpareja   integer default nextval('app.parejas_idpareja_seq'::regclass) not null
        constraint parejas_pkey
            primary key,
    idusuario1 integer
        constraint parejas_idusuario1_fkey
            references usuario,
    idusuario2 integer
        constraint parejas_idusuario2_fkey
            references usuario
);

comment on table pareja is 'tiene idreserva??';

alter table pareja
    owner to postgres;

alter sequence parejas_idpareja_seq owned by pareja.idpareja;

create table tipopista
(
    idtipopista serial
        primary key,
    nombre      text
);

alter table tipopista
    owner to postgres;

create table ubicacionpista
(
    idubicacionpista serial
        primary key,
    nombre           text
);

alter table ubicacionpista
    owner to postgres;

create table pista
(
    idpista        integer default nextval('app.pistas_idpista_seq'::regclass) not null
        primary key,
    idclub         integer
        constraint fk_club
            references club,
    tipopista      integer
        constraint fk_tipopista
            references tipopista,
    ubicacionpista integer
        constraint fk_ubicacionpista
            references ubicacionpista,
    urlimagenes    text
);

alter table pista
    owner to postgres;

alter sequence pistas_idpista_seq owned by pista.idpista;

create table reserva
(
    idreserva          integer default nextval('app.reservas_idreserva_seq'::regclass) not null
        constraint reservas_pkey
            primary key,
    idpista            integer
        constraint fk_idpista
            references pista,
    horainicio         timestamp,
    horafin            timestamp,
    codigoinvitacion   integer default 0                                               not null,
    permitecancelacion boolean default true                                            not null,
    idclub             integer
        constraint fk_club
            references club,
    idpareja1          integer
        constraint fk_idpareja1
            references pareja,
    idpareja2          integer
        constraint fk_idpareja2
            references pareja,
    idusuarioreserva   integer
        constraint fk_idusuarioreserva
            references usuario
);

alter table reserva
    owner to postgres;

alter sequence reservas_idreserva_seq owned by reserva.idreserva;

create table logs
(
    id         serial
        constraint logs_pk
            primary key,
    tipo       integer not null,
    mensaje    text,
    pathmetodo integer
);

alter table logs
    owner to postgres;

create table clubfav
(
    id        serial
        constraint clubfav_pk
            primary key,
    idusuario integer not null
        constraint idusuario
            references usuario,
    idclub    integer not null
        constraint fkidclub
            references club
);

alter table clubfav
    owner to postgres;


