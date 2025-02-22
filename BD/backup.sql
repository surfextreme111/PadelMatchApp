PGDMP      "                |           padeltfg    16.2    16.2 j    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    16398    padeltfg    DATABASE     {   CREATE DATABASE padeltfg WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE padeltfg;
                postgres    false                        2615    16399    app    SCHEMA        CREATE SCHEMA app;
    DROP SCHEMA app;
                postgres    false                        2615    32801    docu    SCHEMA        CREATE SCHEMA docu;
    DROP SCHEMA docu;
                postgres    false            �            1259    16488    club    TABLE     �   CREATE TABLE app.club (
    idclub integer NOT NULL,
    nombre text,
    descripcion text,
    idusuariocreador integer,
    fechain timestamp without time zone,
    idprovincia integer,
    imagen text,
    coordenadas text
);
    DROP TABLE app.club;
       app         heap    postgres    false    6            �            1259    41019    clubfav    TABLE     s   CREATE TABLE app.clubfav (
    id integer NOT NULL,
    idusuario integer NOT NULL,
    idclub integer NOT NULL
);
    DROP TABLE app.clubfav;
       app         heap    postgres    false    6            �            1259    41018    clubfav_id_seq    SEQUENCE     �   CREATE SEQUENCE app.clubfav_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE app.clubfav_id_seq;
       app          postgres    false    240    6            8           0    0    clubfav_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE app.clubfav_id_seq OWNED BY app.clubfav.id;
          app          postgres    false    239            �            1259    16487    clubs_idclub_seq    SEQUENCE     �   CREATE SEQUENCE app.clubs_idclub_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE app.clubs_idclub_seq;
       app          postgres    false    220    6            9           0    0    clubs_idclub_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE app.clubs_idclub_seq OWNED BY app.club.idclub;
          app          postgres    false    219            �            1259    41007    logs    TABLE     x   CREATE TABLE app.logs (
    id integer NOT NULL,
    tipo integer NOT NULL,
    mensaje text,
    pathmetodo integer
);
    DROP TABLE app.logs;
       app         heap    postgres    false    6            �            1259    41006    logs_id_seq    SEQUENCE     �   CREATE SEQUENCE app.logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE app.logs_id_seq;
       app          postgres    false    6    238            :           0    0    logs_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE app.logs_id_seq OWNED BY app.logs.id;
          app          postgres    false    237            �            1259    16595    pareja    TABLE     k   CREATE TABLE app.pareja (
    idpareja integer NOT NULL,
    idusuario1 integer,
    idusuario2 integer
);
    DROP TABLE app.pareja;
       app         heap    postgres    false    6            ;           0    0    TABLE pareja    COMMENT     4   COMMENT ON TABLE app.pareja IS 'tiene idreserva??';
          app          postgres    false    226            �            1259    16594    parejas_idpareja_seq    SEQUENCE     �   CREATE SEQUENCE app.parejas_idpareja_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE app.parejas_idpareja_seq;
       app          postgres    false    226    6            <           0    0    parejas_idpareja_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE app.parejas_idpareja_seq OWNED BY app.pareja.idpareja;
          app          postgres    false    225            �            1259    16502    pista    TABLE     �   CREATE TABLE app.pista (
    idpista integer NOT NULL,
    idclub integer,
    tipopista integer,
    ubicacionpista integer,
    urlimagenes text
);
    DROP TABLE app.pista;
       app         heap    postgres    false    6            �            1259    16501    pistas_idpista_seq    SEQUENCE     �   CREATE SEQUENCE app.pistas_idpista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE app.pistas_idpista_seq;
       app          postgres    false    222    6            =           0    0    pistas_idpista_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE app.pistas_idpista_seq OWNED BY app.pista.idpista;
          app          postgres    false    221            �            1259    24577 	   provincia    TABLE     _   CREATE TABLE app.provincia (
    idprovincia integer NOT NULL,
    nombre character varying
);
    DROP TABLE app.provincia;
       app         heap    postgres    false    6            >           0    0    COLUMN provincia.idprovincia    COMMENT     9   COMMENT ON COLUMN app.provincia.idprovincia IS 'nombre';
          app          postgres    false    228            �            1259    24576    provincia_idprovincia_seq    SEQUENCE     �   CREATE SEQUENCE app.provincia_idprovincia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE app.provincia_idprovincia_seq;
       app          postgres    false    6    228            ?           0    0    provincia_idprovincia_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE app.provincia_idprovincia_seq OWNED BY app.provincia.idprovincia;
          app          postgres    false    227            �            1259    16516    reserva    TABLE     n  CREATE TABLE app.reserva (
    idreserva integer NOT NULL,
    idpista integer,
    horainicio timestamp without time zone,
    horafin timestamp without time zone,
    codigoinvitacion integer DEFAULT 0 NOT NULL,
    permitecancelacion boolean DEFAULT true NOT NULL,
    idclub integer,
    idpareja1 integer,
    idpareja2 integer,
    idusuarioreserva integer
);
    DROP TABLE app.reserva;
       app         heap    postgres    false    6            �            1259    16515    reservas_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE app.reservas_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE app.reservas_idreserva_seq;
       app          postgres    false    224    6            @           0    0    reservas_idreserva_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE app.reservas_idreserva_seq OWNED BY app.reserva.idreserva;
          app          postgres    false    223            �            1259    24590    rol    TABLE     F   CREATE TABLE app.rol (
    idrol integer NOT NULL,
    nombre text
);
    DROP TABLE app.rol;
       app         heap    postgres    false    6            �            1259    24589    rol_idrol_seq    SEQUENCE     �   CREATE SEQUENCE app.rol_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE app.rol_idrol_seq;
       app          postgres    false    230    6            A           0    0    rol_idrol_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE app.rol_idrol_seq OWNED BY app.rol.idrol;
          app          postgres    false    229            �            1259    32820 	   tipopista    TABLE     R   CREATE TABLE app.tipopista (
    idtipopista integer NOT NULL,
    nombre text
);
    DROP TABLE app.tipopista;
       app         heap    postgres    false    6            �            1259    32819    tipopista_idtipopista_seq    SEQUENCE     �   CREATE SEQUENCE app.tipopista_idtipopista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE app.tipopista_idtipopista_seq;
       app          postgres    false    234    6            B           0    0    tipopista_idtipopista_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE app.tipopista_idtipopista_seq OWNED BY app.tipopista.idtipopista;
          app          postgres    false    233            �            1259    32834    ubicacionpista    TABLE     \   CREATE TABLE app.ubicacionpista (
    idubicacionpista integer NOT NULL,
    nombre text
);
    DROP TABLE app.ubicacionpista;
       app         heap    postgres    false    6            �            1259    32833 #   ubicacionpista_idubicacionpista_seq    SEQUENCE     �   CREATE SEQUENCE app.ubicacionpista_idubicacionpista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE app.ubicacionpista_idubicacionpista_seq;
       app          postgres    false    236    6            C           0    0 #   ubicacionpista_idubicacionpista_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE app.ubicacionpista_idubicacionpista_seq OWNED BY app.ubicacionpista.idubicacionpista;
          app          postgres    false    235            �            1259    16479    usuario    TABLE       CREATE TABLE app.usuario (
    idusuario integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    email text NOT NULL,
    nivel integer DEFAULT 0,
    foto text,
    victorias integer DEFAULT 0,
    derrotas integer DEFAULT 0,
    idrol integer DEFAULT 1
);
    DROP TABLE app.usuario;
       app         heap    postgres    false    6            �            1259    16478    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE app.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE app.usuarios_idusuario_seq;
       app          postgres    false    218    6            D           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE app.usuarios_idusuario_seq OWNED BY app.usuario.idusuario;
          app          postgres    false    217            �            1259    32803    users    TABLE     c   CREATE TABLE docu.users (
    id integer NOT NULL,
    uname text,
    pwd text,
    token text
);
    DROP TABLE docu.users;
       docu         heap    postgres    false    7            �            1259    32802    users_id_seq    SEQUENCE     �   CREATE SEQUENCE docu.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE docu.users_id_seq;
       docu          postgres    false    7    232            E           0    0    users_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE docu.users_id_seq OWNED BY docu.users.id;
          docu          postgres    false    231            X           2604    16491    club idclub    DEFAULT     e   ALTER TABLE ONLY app.club ALTER COLUMN idclub SET DEFAULT nextval('app.clubs_idclub_seq'::regclass);
 7   ALTER TABLE app.club ALTER COLUMN idclub DROP DEFAULT;
       app          postgres    false    219    220    220            d           2604    41022 
   clubfav id    DEFAULT     b   ALTER TABLE ONLY app.clubfav ALTER COLUMN id SET DEFAULT nextval('app.clubfav_id_seq'::regclass);
 6   ALTER TABLE app.clubfav ALTER COLUMN id DROP DEFAULT;
       app          postgres    false    240    239    240            c           2604    41010    logs id    DEFAULT     \   ALTER TABLE ONLY app.logs ALTER COLUMN id SET DEFAULT nextval('app.logs_id_seq'::regclass);
 3   ALTER TABLE app.logs ALTER COLUMN id DROP DEFAULT;
       app          postgres    false    237    238    238            ]           2604    16598    pareja idpareja    DEFAULT     m   ALTER TABLE ONLY app.pareja ALTER COLUMN idpareja SET DEFAULT nextval('app.parejas_idpareja_seq'::regclass);
 ;   ALTER TABLE app.pareja ALTER COLUMN idpareja DROP DEFAULT;
       app          postgres    false    225    226    226            Y           2604    16505    pista idpista    DEFAULT     i   ALTER TABLE ONLY app.pista ALTER COLUMN idpista SET DEFAULT nextval('app.pistas_idpista_seq'::regclass);
 9   ALTER TABLE app.pista ALTER COLUMN idpista DROP DEFAULT;
       app          postgres    false    221    222    222            ^           2604    24580    provincia idprovincia    DEFAULT     x   ALTER TABLE ONLY app.provincia ALTER COLUMN idprovincia SET DEFAULT nextval('app.provincia_idprovincia_seq'::regclass);
 A   ALTER TABLE app.provincia ALTER COLUMN idprovincia DROP DEFAULT;
       app          postgres    false    227    228    228            Z           2604    16519    reserva idreserva    DEFAULT     q   ALTER TABLE ONLY app.reserva ALTER COLUMN idreserva SET DEFAULT nextval('app.reservas_idreserva_seq'::regclass);
 =   ALTER TABLE app.reserva ALTER COLUMN idreserva DROP DEFAULT;
       app          postgres    false    223    224    224            _           2604    24593 	   rol idrol    DEFAULT     `   ALTER TABLE ONLY app.rol ALTER COLUMN idrol SET DEFAULT nextval('app.rol_idrol_seq'::regclass);
 5   ALTER TABLE app.rol ALTER COLUMN idrol DROP DEFAULT;
       app          postgres    false    229    230    230            a           2604    32823    tipopista idtipopista    DEFAULT     x   ALTER TABLE ONLY app.tipopista ALTER COLUMN idtipopista SET DEFAULT nextval('app.tipopista_idtipopista_seq'::regclass);
 A   ALTER TABLE app.tipopista ALTER COLUMN idtipopista DROP DEFAULT;
       app          postgres    false    233    234    234            b           2604    32837    ubicacionpista idubicacionpista    DEFAULT     �   ALTER TABLE ONLY app.ubicacionpista ALTER COLUMN idubicacionpista SET DEFAULT nextval('app.ubicacionpista_idubicacionpista_seq'::regclass);
 K   ALTER TABLE app.ubicacionpista ALTER COLUMN idubicacionpista DROP DEFAULT;
       app          postgres    false    235    236    236            S           2604    16482    usuario idusuario    DEFAULT     q   ALTER TABLE ONLY app.usuario ALTER COLUMN idusuario SET DEFAULT nextval('app.usuarios_idusuario_seq'::regclass);
 =   ALTER TABLE app.usuario ALTER COLUMN idusuario DROP DEFAULT;
       app          postgres    false    217    218    218            `           2604    32806    users id    DEFAULT     `   ALTER TABLE ONLY docu.users ALTER COLUMN id SET DEFAULT nextval('docu.users_id_seq'::regclass);
 5   ALTER TABLE docu.users ALTER COLUMN id DROP DEFAULT;
       docu          postgres    false    231    232    232                      0    16488    club 
   TABLE DATA           u   COPY app.club (idclub, nombre, descripcion, idusuariocreador, fechain, idprovincia, imagen, coordenadas) FROM stdin;
    app          postgres    false    220   �r       1          0    41019    clubfav 
   TABLE DATA           5   COPY app.clubfav (id, idusuario, idclub) FROM stdin;
    app          postgres    false    240   �v       /          0    41007    logs 
   TABLE DATA           :   COPY app.logs (id, tipo, mensaje, pathmetodo) FROM stdin;
    app          postgres    false    238   w       #          0    16595    pareja 
   TABLE DATA           ?   COPY app.pareja (idpareja, idusuario1, idusuario2) FROM stdin;
    app          postgres    false    226   5w                 0    16502    pista 
   TABLE DATA           U   COPY app.pista (idpista, idclub, tipopista, ubicacionpista, urlimagenes) FROM stdin;
    app          postgres    false    222   ^w       %          0    24577 	   provincia 
   TABLE DATA           5   COPY app.provincia (idprovincia, nombre) FROM stdin;
    app          postgres    false    228   cx       !          0    16516    reserva 
   TABLE DATA           �   COPY app.reserva (idreserva, idpista, horainicio, horafin, codigoinvitacion, permitecancelacion, idclub, idpareja1, idpareja2, idusuarioreserva) FROM stdin;
    app          postgres    false    224   �x       '          0    24590    rol 
   TABLE DATA           )   COPY app.rol (idrol, nombre) FROM stdin;
    app          postgres    false    230   k{       +          0    32820 	   tipopista 
   TABLE DATA           5   COPY app.tipopista (idtipopista, nombre) FROM stdin;
    app          postgres    false    234   �{       -          0    32834    ubicacionpista 
   TABLE DATA           ?   COPY app.ubicacionpista (idubicacionpista, nombre) FROM stdin;
    app          postgres    false    236   �{                 0    16479    usuario 
   TABLE DATA           m   COPY app.usuario (idusuario, username, password, email, nivel, foto, victorias, derrotas, idrol) FROM stdin;
    app          postgres    false    218   |       )          0    32803    users 
   TABLE DATA           4   COPY docu.users (id, uname, pwd, token) FROM stdin;
    docu          postgres    false    232   �~       F           0    0    clubfav_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('app.clubfav_id_seq', 11, true);
          app          postgres    false    239            G           0    0    clubs_idclub_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('app.clubs_idclub_seq', 13, true);
          app          postgres    false    219            H           0    0    logs_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('app.logs_id_seq', 1, false);
          app          postgres    false    237            I           0    0    parejas_idpareja_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('app.parejas_idpareja_seq', 2, true);
          app          postgres    false    225            J           0    0    pistas_idpista_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('app.pistas_idpista_seq', 24, true);
          app          postgres    false    221            K           0    0    provincia_idprovincia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('app.provincia_idprovincia_seq', 4, true);
          app          postgres    false    227            L           0    0    reservas_idreserva_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('app.reservas_idreserva_seq', 65, true);
          app          postgres    false    223            M           0    0    rol_idrol_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('app.rol_idrol_seq', 3, true);
          app          postgres    false    229            N           0    0    tipopista_idtipopista_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('app.tipopista_idtipopista_seq', 4, true);
          app          postgres    false    233            O           0    0 #   ubicacionpista_idubicacionpista_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('app.ubicacionpista_idubicacionpista_seq', 3, true);
          app          postgres    false    235            P           0    0    usuarios_idusuario_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('app.usuarios_idusuario_seq', 69, true);
          app          postgres    false    217            Q           0    0    users_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('docu.users_id_seq', 2, true);
          docu          postgres    false    231            |           2606    41024    clubfav clubfav_pk 
   CONSTRAINT     M   ALTER TABLE ONLY app.clubfav
    ADD CONSTRAINT clubfav_pk PRIMARY KEY (id);
 9   ALTER TABLE ONLY app.clubfav DROP CONSTRAINT clubfav_pk;
       app            postgres    false    240            h           2606    16495    club clubs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY app.club
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (idclub);
 6   ALTER TABLE ONLY app.club DROP CONSTRAINT clubs_pkey;
       app            postgres    false    220            z           2606    41014    logs logs_pk 
   CONSTRAINT     G   ALTER TABLE ONLY app.logs
    ADD CONSTRAINT logs_pk PRIMARY KEY (id);
 3   ALTER TABLE ONLY app.logs DROP CONSTRAINT logs_pk;
       app            postgres    false    238            n           2606    16600    pareja parejas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY app.pareja
    ADD CONSTRAINT parejas_pkey PRIMARY KEY (idpareja);
 :   ALTER TABLE ONLY app.pareja DROP CONSTRAINT parejas_pkey;
       app            postgres    false    226            j           2606    32784    pista pista_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY app.pista
    ADD CONSTRAINT pista_pkey PRIMARY KEY (idpista);
 7   ALTER TABLE ONLY app.pista DROP CONSTRAINT pista_pkey;
       app            postgres    false    222            p           2606    32791    provincia provincia_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY app.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (idprovincia);
 ?   ALTER TABLE ONLY app.provincia DROP CONSTRAINT provincia_pkey;
       app            postgres    false    228            l           2606    16521    reserva reservas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY app.reserva
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (idreserva);
 <   ALTER TABLE ONLY app.reserva DROP CONSTRAINT reservas_pkey;
       app            postgres    false    224            r           2606    24595 
   rol rol_pk 
   CONSTRAINT     H   ALTER TABLE ONLY app.rol
    ADD CONSTRAINT rol_pk PRIMARY KEY (idrol);
 1   ALTER TABLE ONLY app.rol DROP CONSTRAINT rol_pk;
       app            postgres    false    230            v           2606    32827    tipopista tipopista_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY app.tipopista
    ADD CONSTRAINT tipopista_pkey PRIMARY KEY (idtipopista);
 ?   ALTER TABLE ONLY app.tipopista DROP CONSTRAINT tipopista_pkey;
       app            postgres    false    234            x           2606    32841 "   ubicacionpista ubicacionpista_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY app.ubicacionpista
    ADD CONSTRAINT ubicacionpista_pkey PRIMARY KEY (idubicacionpista);
 I   ALTER TABLE ONLY app.ubicacionpista DROP CONSTRAINT ubicacionpista_pkey;
       app            postgres    false    236            f           2606    16486    usuario usuarios_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY app.usuario
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 <   ALTER TABLE ONLY app.usuario DROP CONSTRAINT usuarios_pkey;
       app            postgres    false    218            t           2606    32810    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY docu.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY docu.users DROP CONSTRAINT users_pkey;
       docu            postgres    false    232            �           2606    32778    reserva fk_club    FK CONSTRAINT     t   ALTER TABLE ONLY app.reserva
    ADD CONSTRAINT fk_club FOREIGN KEY (idclub) REFERENCES app.club(idclub) NOT VALID;
 6   ALTER TABLE ONLY app.reserva DROP CONSTRAINT fk_club;
       app          postgres    false    224    220    4712                       2606    32847    pista fk_club    FK CONSTRAINT     r   ALTER TABLE ONLY app.pista
    ADD CONSTRAINT fk_club FOREIGN KEY (idclub) REFERENCES app.club(idclub) NOT VALID;
 4   ALTER TABLE ONLY app.pista DROP CONSTRAINT fk_club;
       app          postgres    false    4712    222    220            �           2606    16611    reserva fk_idpareja1    FK CONSTRAINT     v   ALTER TABLE ONLY app.reserva
    ADD CONSTRAINT fk_idpareja1 FOREIGN KEY (idpareja1) REFERENCES app.pareja(idpareja);
 ;   ALTER TABLE ONLY app.reserva DROP CONSTRAINT fk_idpareja1;
       app          postgres    false    224    226    4718            �           2606    16616    reserva fk_idpareja2    FK CONSTRAINT     v   ALTER TABLE ONLY app.reserva
    ADD CONSTRAINT fk_idpareja2 FOREIGN KEY (idpareja2) REFERENCES app.pareja(idpareja);
 ;   ALTER TABLE ONLY app.reserva DROP CONSTRAINT fk_idpareja2;
       app          postgres    false    226    224    4718            �           2606    32785    reserva fk_idpista    FK CONSTRAINT     z   ALTER TABLE ONLY app.reserva
    ADD CONSTRAINT fk_idpista FOREIGN KEY (idpista) REFERENCES app.pista(idpista) NOT VALID;
 9   ALTER TABLE ONLY app.reserva DROP CONSTRAINT fk_idpista;
       app          postgres    false    224    222    4714            ~           2606    16621    club fk_idusuariocreador    FK CONSTRAINT     �   ALTER TABLE ONLY app.club
    ADD CONSTRAINT fk_idusuariocreador FOREIGN KEY (idusuariocreador) REFERENCES app.usuario(idusuario);
 ?   ALTER TABLE ONLY app.club DROP CONSTRAINT fk_idusuariocreador;
       app          postgres    false    218    220    4710            �           2606    16582    reserva fk_idusuarioreserva    FK CONSTRAINT     �   ALTER TABLE ONLY app.reserva
    ADD CONSTRAINT fk_idusuarioreserva FOREIGN KEY (idusuarioreserva) REFERENCES app.usuario(idusuario);
 B   ALTER TABLE ONLY app.reserva DROP CONSTRAINT fk_idusuarioreserva;
       app          postgres    false    218    4710    224            �           2606    32828    pista fk_tipopista    FK CONSTRAINT     �   ALTER TABLE ONLY app.pista
    ADD CONSTRAINT fk_tipopista FOREIGN KEY (tipopista) REFERENCES app.tipopista(idtipopista) NOT VALID;
 9   ALTER TABLE ONLY app.pista DROP CONSTRAINT fk_tipopista;
       app          postgres    false    222    234    4726            �           2606    32842    pista fk_ubicacionpista    FK CONSTRAINT     �   ALTER TABLE ONLY app.pista
    ADD CONSTRAINT fk_ubicacionpista FOREIGN KEY (ubicacionpista) REFERENCES app.ubicacionpista(idubicacionpista) NOT VALID;
 >   ALTER TABLE ONLY app.pista DROP CONSTRAINT fk_ubicacionpista;
       app          postgres    false    222    236    4728            �           2606    41025    clubfav fkidclub    FK CONSTRAINT     u   ALTER TABLE ONLY app.clubfav
    ADD CONSTRAINT fkidclub FOREIGN KEY (idclub) REFERENCES app.club(idclub) NOT VALID;
 7   ALTER TABLE ONLY app.clubfav DROP CONSTRAINT fkidclub;
       app          postgres    false    4712    220    240            }           2606    32768    usuario idrol    FK CONSTRAINT     o   ALTER TABLE ONLY app.usuario
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES app.rol(idrol) NOT VALID;
 4   ALTER TABLE ONLY app.usuario DROP CONSTRAINT idrol;
       app          postgres    false    230    218    4722            �           2606    41030    clubfav idusuario    FK CONSTRAINT        ALTER TABLE ONLY app.clubfav
    ADD CONSTRAINT idusuario FOREIGN KEY (idusuario) REFERENCES app.usuario(idusuario) NOT VALID;
 8   ALTER TABLE ONLY app.clubfav DROP CONSTRAINT idusuario;
       app          postgres    false    4710    240    218            �           2606    16601    pareja parejas_idusuario1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY app.pareja
    ADD CONSTRAINT parejas_idusuario1_fkey FOREIGN KEY (idusuario1) REFERENCES app.usuario(idusuario);
 E   ALTER TABLE ONLY app.pareja DROP CONSTRAINT parejas_idusuario1_fkey;
       app          postgres    false    218    226    4710            �           2606    16606    pareja parejas_idusuario2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY app.pareja
    ADD CONSTRAINT parejas_idusuario2_fkey FOREIGN KEY (idusuario2) REFERENCES app.usuario(idusuario);
 E   ALTER TABLE ONLY app.pareja DROP CONSTRAINT parejas_idusuario2_fkey;
       app          postgres    false    4710    226    218                 x����n�6ǯ��M��$~�"}����aF�xs�b�AK��V&U�N��M/w�Gȋ�H�GҤYw��:$���E4��+T4��R�
]�ݞ��4n��]X��ec�4��(�<�YL1�r��c�nC��q��>��$�Mo��.�}]y]�)��)fi�g\�x�͏����/u_�{t��D'�+!��Y�1�9"�L��u�~��?�]����he�����2����X���:��c"�,��#�������,�b�X��ۘ���$�$eX��� X�pŤ�DN2)�d���h�����hQ�k}ٽZWz��-te(�Pk�����l��`w����Ʀ���W�~�J����Ҭ��
��$D(�] �*2�F4��k�I�dڀf
Hte�JG�Y���(���5���f'Q��4��_��־	�w7���Nߴ�H�L^JEԭY�7N�i�� G���=SS��R���>�gi��&���+]%���`⵭L�B0��R�Ě�����ʵ�0PN׌iRf
2.1WX�%�GpF�%�pӓ/'$�&��y>"�x�wޙgr��9T B�?�gQw��A �t�XHH"]�<��8g�C��}ڣ�<����J9ʢ9t��5h�������8�I=�@SSZ���y�u'

����ޭ���ㆶ��eh���	�T*�G=���p�`�a�P�׾����3GX����l��΢t=؇u���%��	�Z�<��ي�5�[�f��9�o]�9P|���4����g���d<s����2���� I}AC�b�.l����0X���(��,���L��xp�k��}w�qDؘ�ǥ���}(Mk7�N��΋��n}��PL(<cbB�'"�ӧ���v}m�\*�/Mߓ���ޡ�p�g蟘�2D���vv�{�I�o�akv]K~:�1�}s�:��+��r�_��,ܼ�(�z����ܘϺ����7��W��h��6�U�7A����5��7�]NgW�@������t��n�Ǆ�(*��r�G&���C��h      1   '   x�3�41�4�2�45�4��4��99��b���� L�^      /      x������ � �      #      x�3�4�4�2�4�4����� 1         �   x���Qn� ���]��$$�)v�I�����RiZ��)��>}�o�@��H)ă�뺊p��D�u�pQ���~NnN�&ol�X��JɷG+����/��~���:�s��4|�LZ���5��㘟3O�ά/������>�b���z��u�����{����O=�Hl�] H��6�!��BhH��4�Dv�L-�jЛ�w;�h��YГ���#c�U���� -1vMJ|��;(�:�      %   8   x�3�K�I�K�L�2��ML)�L�2�t��LN�+I�2�tN,I��9�9�+F��� f��      !   �  x���[�AE�۫�8�M1��
fٿ���:�.��H�B����qÍ��~� ��ǯ���!q���?�����ot���퓟���183��5b��<my��,hy:n����6n�������#6u���2�7![�wI*�@>b����!��X0��SEXC��=b�y>D��FExC�1�c6:bl�2��BD��q��;ңuϳ�cr�0=;��������cg;��1����q���7|���Φ��yz�*�c�n�P��Q�y�EE4wҢ��� �h*����Q���/�\z��� E�{� �qR������L䊘^� w��B����y�P��'��E��*�x.����B�T��f�� ��%��/�pb1��X��!oT�� ZG"��|/�=f Ʈ�k�E3΅��X���[��B�,���)�!��{Ʀ��p�j�Bl�8HX3�BCТ�+Y��S�=i�8_���8֋�T{��K!4�#� Pߙr+$��P���F�6w���96�yN#�b;$��hf�NdgN��
W����	͛L`��ļ����>�zt4ď�R5C�jp���q�BD�:���۫���ɑ�Id�7l*bы��@VS򆠦�7����GR�Vnt^ֽR��h�6���;q��T�o$o�5���U��?��#�ﵯ_���/�hA�      '      x�3�-N-�2�tL�������� 6��      +   3   x�3�t.�,.ỈwN-.HM�2B�M�+��2��--ʇsM`\��=... /�c      -      x�3��/-I��/�2���3b���� Z�         �  x�}�Mo�0�ϓ���O>�����Ӟ*UN0))dl��wL���ԅ(�y�g<c[+0Ci\H���0x{�?|�5��w�����M�f #�O,�"��)+�$�)Po�2�R
q��ҢC��A�6�J����A�mʽ���c��r�� XT����.�My
eUV��ڤ�L�oL�oPE�u���	�O#�ht�``l �"�Z�a���Q���)^�`�b�(�R�'��)\c�W�ȡ���)�'W1��Y����ad�u�D�
8<.+e8Wm�MW������:��c���L��ŭMu
�&/��j�����)O�ޫcUޫ߷�&�Pp�jn{�wPY��Bu,�g6���v7#��*��}����P|�3��Sޕ���zY3�M��sk�����`�`kAvO[����3�Fsg���L"�����K�c��i����x6u��9��˥~$�<�[۴v��|u�&s�r�ڋm/��7�)�D0!&)O�c�V"\:ո=޳T	Ͳ�I��T
������c�c���2S
Ӧ�d��L�u\}�ZoJ�Tu��D�k�˫�|�/���_av��/<^m[;��������a��n?k&�������i���)MA��Ũ2��8�Ӊ�r�n���@Y�>�N�ˆ����ͱGD�M��!��@kVc�=��j]e]�L[:;��ǅ
Y[2v6������)Ko¦ۣ]2��/���v���U�c      )   d   x�=�9�  ������	�6���bA��ׂ�M2�`�XO�T@�%�Z��[��\�ҙ�"��&^��4;�
�eKF��·$�F5����_&�     