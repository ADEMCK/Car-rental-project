PGDMP                      |            rentacar    16.2    16.2     ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    25086    rentacar    DATABASE     j   CREATE DATABASE rentacar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE rentacar;
                postgres    false            �            1259    25095    book    TABLE     \  CREATE TABLE public.book (
    book_id integer NOT NULL,
    book_car_id integer NOT NULL,
    book_name text NOT NULL,
    book_idno text NOT NULL,
    book_mpno text NOT NULL,
    book_mail text,
    book_strt_date date NOT NULL,
    book_fnsh_date date NOT NULL,
    book_prc integer NOT NULL,
    book_note text,
    book_case text NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    25126    book_book_id_seq    SEQUENCE     �   ALTER TABLE public.book ALTER COLUMN book_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.book_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    25103    brand    TABLE     Z   CREATE TABLE public.brand (
    brand_id bigint NOT NULL,
    brand_name text NOT NULL
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    25102    brand_brand_id_seq    SEQUENCE     �   ALTER TABLE public.brand ALTER COLUMN brand_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brand_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    25111    car    TABLE     �   CREATE TABLE public.car (
    car_id integer NOT NULL,
    car_model_id integer NOT NULL,
    car_color text NOT NULL,
    car_km integer NOT NULL,
    car_plate text NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    25110    car_car_id_seq    SEQUENCE     �   ALTER TABLE public.car ALTER COLUMN car_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.car_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    25119    model    TABLE     �   CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_brand_id integer NOT NULL,
    model_name text NOT NULL,
    model_type text NOT NULL,
    model_year text NOT NULL,
    model_fuel text NOT NULL,
    model_gear text NOT NULL
);
    DROP TABLE public.model;
       public         heap    postgres    false            �            1259    25118    model_model_id_seq    SEQUENCE     �   ALTER TABLE public.model ALTER COLUMN model_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.model_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    25088    user    TABLE     �   CREATE TABLE public."user" (
    user_id bigint NOT NULL,
    user_name text NOT NULL,
    user_pass text NOT NULL,
    user_role text NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    25087    user_user_id_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            "          0    25095    book 
   TABLE DATA           �   COPY public.book (book_id, book_car_id, book_name, book_idno, book_mpno, book_mail, book_strt_date, book_fnsh_date, book_prc, book_note, book_case) FROM stdin;
    public          postgres    false    217   [       $          0    25103    brand 
   TABLE DATA           5   COPY public.brand (brand_id, brand_name) FROM stdin;
    public          postgres    false    219   �       &          0    25111    car 
   TABLE DATA           Q   COPY public.car (car_id, car_model_id, car_color, car_km, car_plate) FROM stdin;
    public          postgres    false    221   '        (          0    25119    model 
   TABLE DATA           u   COPY public.model (model_id, model_brand_id, model_name, model_type, model_year, model_fuel, model_gear) FROM stdin;
    public          postgres    false    223   �        !          0    25088    user 
   TABLE DATA           J   COPY public."user" (user_id, user_name, user_pass, user_role) FROM stdin;
    public          postgres    false    216   V!       0           0    0    book_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.book_book_id_seq', 10, true);
          public          postgres    false    224            1           0    0    brand_brand_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.brand_brand_id_seq', 9, true);
          public          postgres    false    218            2           0    0    car_car_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.car_car_id_seq', 5, true);
          public          postgres    false    220            3           0    0    model_model_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.model_model_id_seq', 11, true);
          public          postgres    false    222            4           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
          public          postgres    false    215            �           2606    25101    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    217            �           2606    25109    brand brand_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (brand_id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    219            �           2606    25117    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    221            �           2606    25125    model model_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            postgres    false    223            �           2606    25094    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            "   l   x�34�4��--.ILKT8ܞZ����xd>����	�	NSS�����gAbIfv�CJj���id`d�kh D�'H=�_~�Bґ�E��G6��ș�������� m�#s      $   @   x�3��M-JNMI-�2�J�K,�)�2�t�L,��t����/H��2�t�/J142����� �pv      &   o   x��K
1ׯO�'��/=YF&�w�� ��?���VQ�6VH�@_:�4R,8��-�R�z�t'C��t~M��P��`s%G�_Qے��u��AG�}�n�O6����      (   �   x�]���0D�ӏ1m�
�+4H,`���4�!&������zN��H(�}ws=*�Pɹ�9���R�-����(>�\r$���ANE� �g�)V���!������<64�[�T�&+����i��D��B"�$B�3�}܇���Ab��z�0�^�?�      !      x�3�LL����4426�0�b���� O��     