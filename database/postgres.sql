PGDMP                         |            postgres    11.21    11.21 I               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE postgres;
             postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2946                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16633 	   addtocart    TABLE     �   CREATE TABLE public.addtocart (
    itemid integer,
    items json,
    price integer,
    delivery_charge integer,
    cartid integer NOT NULL
);
    DROP TABLE public.addtocart;
       public         postgres    false            �            1259    16631    addtocart_cartid_seq    SEQUENCE     �   CREATE SEQUENCE public.addtocart_cartid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.addtocart_cartid_seq;
       public       postgres    false    213            �           0    0    addtocart_cartid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.addtocart_cartid_seq OWNED BY public.addtocart.cartid;
            public       postgres    false    212            �            1259    16500    bank    TABLE     �   CREATE TABLE public.bank (
    id integer,
    name character varying(255),
    mobile character varying(255),
    gender character varying(255),
    mail character varying(255),
    password character varying(255)
);
    DROP TABLE public.bank;
       public         postgres    false            �            1259    16656    blogs    TABLE     �   CREATE TABLE public.blogs (
    id integer NOT NULL,
    name character varying(255),
    mobile character varying(10),
    gender character varying(10),
    mail character varying(100),
    password character varying(100)
);
    DROP TABLE public.blogs;
       public         postgres    false            �            1259    16654    blogs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.blogs_id_seq;
       public       postgres    false    215            �           0    0    blogs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;
            public       postgres    false    214            �            1259    24932    ecart    TABLE     �   CREATE TABLE public.ecart (
    id integer NOT NULL,
    name character varying(300),
    about character varying(300),
    price integer
);
    DROP TABLE public.ecart;
       public         postgres    false            �            1259    16514    ecomerce    TABLE     �   CREATE TABLE public.ecomerce (
    id integer NOT NULL,
    name character varying(255),
    mobile character varying(255),
    gender character varying(255),
    mail character varying(255),
    password character varying(255)
);
    DROP TABLE public.ecomerce;
       public         postgres    false            �            1259    16512    ecomerce_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ecomerce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ecomerce_id_seq;
       public       postgres    false    207            �           0    0    ecomerce_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ecomerce_id_seq OWNED BY public.ecomerce.id;
            public       postgres    false    206            �            1259    16417    employee    TABLE     �   CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    salary numeric(10,2)
);
    DROP TABLE public.employee;
       public         postgres    false            �            1259    16405 	   employees    TABLE     t   CREATE TABLE public.employees (
    id integer,
    name character varying(255),
    roll character varying(255)
);
    DROP TABLE public.employees;
       public         postgres    false            �            1259    16564 	   favourite    TABLE     _   CREATE TABLE public.favourite (
    id integer NOT NULL,
    itemid integer,
    items json
);
    DROP TABLE public.favourite;
       public         postgres    false            �            1259    16562    favourite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.favourite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.favourite_id_seq;
       public       postgres    false    209            �           0    0    favourite_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.favourite_id_seq OWNED BY public.favourite.id;
            public       postgres    false    208            �            1259    16448    home    TABLE     }   CREATE TABLE public.home (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255)
);
    DROP TABLE public.home;
       public         postgres    false            �            1259    16436    login    TABLE     �   CREATE TABLE public.login (
    id integer,
    name character varying(200),
    email character varying(255),
    phonenumber character varying(255),
    password character varying(50)
);
    DROP TABLE public.login;
       public         postgres    false            �            1259    16494    overview    TABLE     �   CREATE TABLE public.overview (
    id integer,
    username character varying(255),
    email character varying(255),
    password character varying(255)
);
    DROP TABLE public.overview;
       public         postgres    false            �            1259    16608    products    TABLE       CREATE TABLE public.products (
    id integer NOT NULL,
    brand character varying(255),
    model character varying(255),
    discripation character varying(255),
    rating character varying(255),
    price character varying(255),
    delivery_charge character varying(255)
);
    DROP TABLE public.products;
       public         postgres    false            �            1259    16606    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       postgres    false    211            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
            public       postgres    false    210            �            1259    16485    profile    TABLE     j   CREATE TABLE public.profile (
    username character varying(255),
    password character varying(255)
);
    DROP TABLE public.profile;
       public         postgres    false            �            1259    16399    students    TABLE     w   CREATE TABLE public.students (
    marks integer,
    grade character varying(255),
    name character varying(255)
);
    DROP TABLE public.students;
       public         postgres    false            �            1259    16428    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    phonenum character varying(255)
);
    DROP TABLE public.users;
       public         postgres    false            �
           2604    16636    addtocart cartid    DEFAULT     t   ALTER TABLE ONLY public.addtocart ALTER COLUMN cartid SET DEFAULT nextval('public.addtocart_cartid_seq'::regclass);
 ?   ALTER TABLE public.addtocart ALTER COLUMN cartid DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    16659    blogs id    DEFAULT     d   ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);
 7   ALTER TABLE public.blogs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            �
           2604    16517    ecomerce id    DEFAULT     j   ALTER TABLE ONLY public.ecomerce ALTER COLUMN id SET DEFAULT nextval('public.ecomerce_id_seq'::regclass);
 :   ALTER TABLE public.ecomerce ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    16567    favourite id    DEFAULT     l   ALTER TABLE ONLY public.favourite ALTER COLUMN id SET DEFAULT nextval('public.favourite_id_seq'::regclass);
 ;   ALTER TABLE public.favourite ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    16611    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            y          0    16633 	   addtocart 
   TABLE DATA               R   COPY public.addtocart (itemid, items, price, delivery_charge, cartid) FROM stdin;
    public       postgres    false    213   eK       q          0    16500    bank 
   TABLE DATA               H   COPY public.bank (id, name, mobile, gender, mail, password) FROM stdin;
    public       postgres    false    205   bL       {          0    16656    blogs 
   TABLE DATA               I   COPY public.blogs (id, name, mobile, gender, mail, password) FROM stdin;
    public       postgres    false    215   HM       |          0    24932    ecart 
   TABLE DATA               7   COPY public.ecart (id, name, about, price) FROM stdin;
    public       postgres    false    216   �R       s          0    16514    ecomerce 
   TABLE DATA               L   COPY public.ecomerce (id, name, mobile, gender, mail, password) FROM stdin;
    public       postgres    false    207   �R       k          0    16417    employee 
   TABLE DATA               N   COPY public.employee (employee_id, first_name, last_name, salary) FROM stdin;
    public       postgres    false    199   �T       j          0    16405 	   employees 
   TABLE DATA               3   COPY public.employees (id, name, roll) FROM stdin;
    public       postgres    false    198   �T       u          0    16564 	   favourite 
   TABLE DATA               6   COPY public.favourite (id, itemid, items) FROM stdin;
    public       postgres    false    209   U       n          0    16448    home 
   TABLE DATA               3   COPY public.home (id, username, email) FROM stdin;
    public       postgres    false    202   �V       m          0    16436    login 
   TABLE DATA               G   COPY public.login (id, name, email, phonenumber, password) FROM stdin;
    public       postgres    false    201   �V       p          0    16494    overview 
   TABLE DATA               A   COPY public.overview (id, username, email, password) FROM stdin;
    public       postgres    false    204   PW       w          0    16608    products 
   TABLE DATA               b   COPY public.products (id, brand, model, discripation, rating, price, delivery_charge) FROM stdin;
    public       postgres    false    211   mW       o          0    16485    profile 
   TABLE DATA               5   COPY public.profile (username, password) FROM stdin;
    public       postgres    false    203   �X       i          0    16399    students 
   TABLE DATA               6   COPY public.students (marks, grade, name) FROM stdin;
    public       postgres    false    197   �X       l          0    16428    users 
   TABLE DATA               >   COPY public.users (id, username, email, phonenum) FROM stdin;
    public       postgres    false    200   Y       �           0    0    addtocart_cartid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.addtocart_cartid_seq', 10, true);
            public       postgres    false    212            �           0    0    blogs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.blogs_id_seq', 77, true);
            public       postgres    false    214            �           0    0    ecomerce_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ecomerce_id_seq', 28, true);
            public       postgres    false    206            �           0    0    favourite_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.favourite_id_seq', 37, true);
            public       postgres    false    208            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 20, true);
            public       postgres    false    210            �
           2606    16641    addtocart addtocart_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.addtocart
    ADD CONSTRAINT addtocart_pkey PRIMARY KEY (cartid);
 B   ALTER TABLE ONLY public.addtocart DROP CONSTRAINT addtocart_pkey;
       public         postgres    false    213            �
           2606    16665    blogs blogs_mail_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_mail_key UNIQUE (mail);
 >   ALTER TABLE ONLY public.blogs DROP CONSTRAINT blogs_mail_key;
       public         postgres    false    215            �
           2606    16663    blogs blogs_mobile_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_mobile_key UNIQUE (mobile);
 @   ALTER TABLE ONLY public.blogs DROP CONSTRAINT blogs_mobile_key;
       public         postgres    false    215            �
           2606    16661    blogs blogs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.blogs DROP CONSTRAINT blogs_pkey;
       public         postgres    false    215            �
           2606    24939    ecart ecart_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.ecart
    ADD CONSTRAINT ecart_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.ecart DROP CONSTRAINT ecart_pkey;
       public         postgres    false    216            �
           2606    16545    ecomerce ecomerce_mail_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ecomerce
    ADD CONSTRAINT ecomerce_mail_key UNIQUE (mail);
 D   ALTER TABLE ONLY public.ecomerce DROP CONSTRAINT ecomerce_mail_key;
       public         postgres    false    207            �
           2606    16543    ecomerce ecomerce_mobile_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ecomerce
    ADD CONSTRAINT ecomerce_mobile_key UNIQUE (mobile);
 F   ALTER TABLE ONLY public.ecomerce DROP CONSTRAINT ecomerce_mobile_key;
       public         postgres    false    207            �
           2606    16547    ecomerce ecomerce_password_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.ecomerce
    ADD CONSTRAINT ecomerce_password_key UNIQUE (password);
 H   ALTER TABLE ONLY public.ecomerce DROP CONSTRAINT ecomerce_password_key;
       public         postgres    false    207            �
           2606    16522    ecomerce ecomerce_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ecomerce
    ADD CONSTRAINT ecomerce_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ecomerce DROP CONSTRAINT ecomerce_pkey;
       public         postgres    false    207            �
           2606    16421    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public         postgres    false    199            �
           2606    16578    favourite favourite_itemid_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.favourite
    ADD CONSTRAINT favourite_itemid_key UNIQUE (itemid);
 H   ALTER TABLE ONLY public.favourite DROP CONSTRAINT favourite_itemid_key;
       public         postgres    false    209            �
           2606    16572    favourite favourite_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.favourite
    ADD CONSTRAINT favourite_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.favourite DROP CONSTRAINT favourite_pkey;
       public         postgres    false    209            �
           2606    16455    home home_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.home DROP CONSTRAINT home_pkey;
       public         postgres    false    202            �
           2606    16624    products products_model_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_model_key UNIQUE (model);
 E   ALTER TABLE ONLY public.products DROP CONSTRAINT products_model_key;
       public         postgres    false    211            �
           2606    16616    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    211            �
           2606    16435    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    200            y   �   x����j!�>��9-β��}�B1�I�FזM�w�6t	顷�����c�>��3v�K��U��؈S��y�'��`�N6��O�^i��@2��
m$����-�Q%��d��AO�~a�}3iz�G�5h��d5e�d��&�5�৅�>���R�;,c��:��a���^��["�v�V��V��c{��ּ���eq�ؕ!���u��f�nn�����ۺ���P�G����      q   �   x���1s�0 ����\�be��Z1
�<r]��PJ*B-����ץ]����=�j�Q]iy?����w��F���x6��H#[����,Ad���h:���U�$�v�.%��#�Lp�$��9j�8�e�:_d��3os�L�v	�uM���Dh׳H�~��O�9�r0������û��3?�1.\ǿ�,?<~*o��U�7՘JI���~*�΀g ���^e      {   N  x�m�I��<���;�	��E;it�!4�
�����9u����ǽI�P��{��(0'R<E-r/��K�O�{I��e���?��N�Ls�l��H3���4[΍8�R��Ϊx��d����3��]���g~����;��2P;�*��j�K�r��W�WYe���k��'��=��.
/�M�� �=���ן��������s�`ѵ,�.0��$_�܆rf��A+���+��	����   ��A>S�Ej4,��A����=˩>��F��Å��;�)̀�5�]Md�R0�~J,�+��T�V�*)�"`�åQ_<�[�9j�M�%�ҷ�-z���*��hs�?%�MBs�V��h^"q��<~�W�+wT��¤Rw�rfR������)^`XJ���p���3�_�\�A�ۊ���p���F݃R��N�Xxƫ�)���J9F��+�u�4ނg��ᷖ{��L]�f=ȗ+�v�m�f�	��:]�=�^w\���xm�:߭�@���M}Z,x��Y��7f�z���2�m�{¹��g:��{������e��6�9����M_LxÄY��.xT�ǃ�x��{�6y3ڟZ5���S�k��<��-a�c�OL�0q��td]V�t��[Q�hW���Y�#w�[K7n��\7��c����6�Y��#�-�蹭k&�_ԅ��TcY岿ӎ�n}��ҶyDus,�>�1?{�@�����7~?s���m����Znժ���hJ�^�X�x
e+�`��|��9���1���P+D�7��|.��N��_F��K�!�"b�^uV�)hs��Iv����?xThbӮ�J�,�ʅH���֕&�L]Fed���U���h�9��.�j����0��剭��wT������F�c�\"I6���3�d���r��.=���.d���>�����>�0V�ւ.h�ߠ��K��?��$qȈê���Q[敹zL��^��m�ښȼ�7|��$s�=Ƒ��α3�{�vW{\�q<èd�AٞS���������1}tlo�80ω�8�!O����f&��~�c<�k�t�(����a�#̤�o��%9�q̷G�+��|M���Û�M�RP�m��p���2B#��� �s�Q�*gK��Pc��Vd6��|b�0�q��q���q���Js�n$]�j�ޒ�I%�I�ư�ZYܲl�'��?�_p���A5,�����FaM�ϧ����X&=��'G��%��W'��g��"�Y,|N(�eL-�x🫤����r��~O���|Z�봥��,7G�fO���{ppFU?�{~՟(j-�jYX0Y��ؿp��<3�      |      x������ � �      s   �  x�m�͒�0�5<�kBC��Q���5������:��ե���"_N݋8-�rNUUYH"F����ז�y!l*������Q�ȼ2\���}��t��
����~�c�� ��1X,M/]0N��C��C�h =�?��^��6u�0�Ü�&��r��p���*$����$�ݧ)	��&[�	1�%,�T,c�b�T.M��#~U�Q�K�����NY�ZM���F�"���0�G��8�����C����K>�G����Fl;� �nTg@L�D0\�.�i?�eU;�B�,����v�
�η�{���윚�Mw>��KX�ee�"%J�����P��#�J�
[�_�$�P�N�o�!�2B��ӶG���p�$6L<�7��>�{�]��M��U��FBJ�����V?{�E�,�0-%&�d��pmP@��x6�ļ�Pk8�����7=�\�֍�����_3���      k      x������ � �      j   F   x�32�,J�*�L+��+I�K�24�,K�ˮ�,OM�21�LI-����@�`��)gH<)19�)F��� g�      u   _  x����n�  �k|
�u�pP;ݳ,Y�RKF��t���}`��j5�敜Cȗ�C���XT�S����5�/���%�W�AU\~��U3l���bm��R	[�Y+T�o�8���s�s�3��SM�S�-3>��(yd���Gn��r�L�?#�" �+Ϊ���w�i��m����"6Ţ-C@�ڔ�jdG,_�@��#c%�e���1(�=�O�{6�>B��	5�&�4�w1���S,c���O[5��D��	�� 
���i�c��0ZUv����'���-��\c��H�C1�Q1����z�#�%;�s\��j�J���X^������m� ���!��/ �j=      n      x������ � �      m   �   x��н
�0���)���|5�O���%H��6*��I�����~�pVR�`ǹ�,dk�����Hi��}y*���B)&� ���ȭ2&�8��&f���?%��9(�;����Y���}�[#���o��&�y�D��p���_۝�_��A����      p      x������ � �      w     x����R�0 �s���uR\��O<x�V�.�T����QG9$��4M9�E�b9'|�M@��=w�h�-/�m�g�0�CUAI���^9'|�,���\8�35�)kZ�&ҏK����3o��nQZ�������������t�D�\�:8&^�8'K@��yt����N���ggc���WY��*�,�����ݤ󝾋2�6}��v�L8?q���KKJ�D��])�u
E�c_EK���4�үc:�	`�-�=:Дg���RPOwJ�r½2      o   N   x�+J��T1JT14P1�H7K21t�,(-���-61�7�+��HMs4���K+�,�-J4)�������I1K3����� �/5      i      x������ � �      l   H   x�3�,J��r�uH�M���K��崴�454261�2�J�J-΀RHj�-`jL8��2�*!$�
#��=... Q��     