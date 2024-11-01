PGDMP                          |            tourismagency    15.6    15.6 "    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    32772    tourismagency    DATABASE     �   CREATE DATABASE tourismagency WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE tourismagency;
                postgres    false            �            1259    40961    hotel    TABLE     �  CREATE TABLE public.hotel (
    hotel_id bigint NOT NULL,
    hotel_name text NOT NULL,
    hotel_address text NOT NULL,
    hotel_city text NOT NULL,
    hotel_mail text NOT NULL,
    hotel_phone text NOT NULL,
    hotel_star text NOT NULL,
    hotel_car_park boolean NOT NULL,
    hotel_wifi boolean NOT NULL,
    hotel_pool boolean NOT NULL,
    hotel_fitness boolean NOT NULL,
    hotel_spa boolean NOT NULL,
    hotel_room_service boolean NOT NULL,
    hotel_concierge boolean NOT NULL
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    40960    hotel_id_seq    SEQUENCE     �   ALTER TABLE public.hotel ALTER COLUMN hotel_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    40969    pension    TABLE     �   CREATE TABLE public.pension (
    pension_id bigint NOT NULL,
    pension_hotel_id bigint NOT NULL,
    pension_type text NOT NULL
);
    DROP TABLE public.pension;
       public         heap    postgres    false            �            1259    40968    pension_pension_id_seq    SEQUENCE     �   ALTER TABLE public.pension ALTER COLUMN pension_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pension_pension_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    57345    reservation    TABLE     Q  CREATE TABLE public.reservation (
    id bigint NOT NULL,
    room_id bigint NOT NULL,
    cin_date date NOT NULL,
    cout_date date NOT NULL,
    price bigint NOT NULL,
    guest_count bigint NOT NULL,
    name text NOT NULL,
    guest_id text NOT NULL,
    mail text NOT NULL,
    phone text NOT NULL,
    hotel_id bigint NOT NULL
);
    DROP TABLE public.reservation;
       public         heap    postgres    false            �            1259    57344    reservation_id_seq    SEQUENCE     �   ALTER TABLE public.reservation ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    49161    room    TABLE     �  CREATE TABLE public.room (
    id bigint NOT NULL,
    hotel_id bigint NOT NULL,
    pension_id bigint NOT NULL,
    season_id bigint NOT NULL,
    room_type text NOT NULL,
    stock bigint NOT NULL,
    adult_price bigint NOT NULL,
    child_price bigint NOT NULL,
    bed_count bigint NOT NULL,
    square_meter bigint NOT NULL,
    television boolean NOT NULL,
    minibar boolean NOT NULL,
    game_console boolean NOT NULL,
    cash_safe boolean NOT NULL,
    projector boolean NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    49160    room_id_seq    SEQUENCE     �   ALTER TABLE public.room ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    40977    season    TABLE     �   CREATE TABLE public.season (
    season_id bigint NOT NULL,
    season_hotel_id bigint NOT NULL,
    season_strt date NOT NULL,
    season_fnsh date NOT NULL
);
    DROP TABLE public.season;
       public         heap    postgres    false            �            1259    40976    season_season_id_seq    SEQUENCE     �   ALTER TABLE public.season ALTER COLUMN season_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.season_season_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    32774    user    TABLE     �   CREATE TABLE public."user" (
    user_id bigint NOT NULL,
    user_name text NOT NULL,
    user_pass text NOT NULL,
    user_role text NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    32773    user_user_id_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215                      0    40961    hotel 
   TABLE DATA           �   COPY public.hotel (hotel_id, hotel_name, hotel_address, hotel_city, hotel_mail, hotel_phone, hotel_star, hotel_car_park, hotel_wifi, hotel_pool, hotel_fitness, hotel_spa, hotel_room_service, hotel_concierge) FROM stdin;
    public          postgres    false    217   �(                 0    40969    pension 
   TABLE DATA           M   COPY public.pension (pension_id, pension_hotel_id, pension_type) FROM stdin;
    public          postgres    false    219   J)       #          0    57345    reservation 
   TABLE DATA           �   COPY public.reservation (id, room_id, cin_date, cout_date, price, guest_count, name, guest_id, mail, phone, hotel_id) FROM stdin;
    public          postgres    false    225   �)       !          0    49161    room 
   TABLE DATA           �   COPY public.room (id, hotel_id, pension_id, season_id, room_type, stock, adult_price, child_price, bed_count, square_meter, television, minibar, game_console, cash_safe, projector) FROM stdin;
    public          postgres    false    223   `*                 0    40977    season 
   TABLE DATA           V   COPY public.season (season_id, season_hotel_id, season_strt, season_fnsh) FROM stdin;
    public          postgres    false    221   �*                 0    32774    user 
   TABLE DATA           J   COPY public."user" (user_id, user_name, user_pass, user_role) FROM stdin;
    public          postgres    false    215   I+       *           0    0    hotel_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.hotel_id_seq', 18, true);
          public          postgres    false    216            +           0    0    pension_pension_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pension_pension_id_seq', 49, true);
          public          postgres    false    218            ,           0    0    reservation_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reservation_id_seq', 10, true);
          public          postgres    false    224            -           0    0    room_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.room_id_seq', 43, true);
          public          postgres    false    222            .           0    0    season_season_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.season_season_id_seq', 18, true);
          public          postgres    false    220            /           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 9, true);
          public          postgres    false    214            �           2606    40967    hotel hotel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (hotel_id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public            postgres    false    217            �           2606    40975    pension pension_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pension
    ADD CONSTRAINT pension_pkey PRIMARY KEY (pension_id);
 >   ALTER TABLE ONLY public.pension DROP CONSTRAINT pension_pkey;
       public            postgres    false    219            �           2606    57351    reservation reservation_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    225            �           2606    49167    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    223            �           2606    40981    season season_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (season_id);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    221                       2606    32780    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215               �   x�U�;�0D��)8��@D���6��a���#���
9A䧧�F�I��[���ճ���y4�@�o汷^Q,�B�
2�+�[�'PY�Q�#A�F$������>�;�U��P��N��YH�Ty��W>0M�&|�-ɡ�8�go�����_�H���W@�݆g�1�6BO         y   x�31�4�t����Q�H,�<�\��4'G��(5%����(�Z�pt^j��KbFf��	��ghNIQ���)H*$1W! 1�8�2?��Ĝ��b�LpbJjr�BdbIb6��%��9��=... sz1�      #   }   x�U�=
�@�z�^�0��Lgk�҈�4��>�a�Ǽ� ��G��=("\���:\���E�T=ai��8ߦgw_f@S��}`Ɂ��bۣg�V�;|Y&�0Ԧhv�d��R���'�      !   �   x�5�K�0�χAv�|�"*�ԒRw=�n���獭�&Hĵ��cږZ���f8x��hR�)T�qos�˶�����L�/`E�l;u�Z����vy�\��~����0��B�n�����0%         D   x�34�4�4202�50"(���24�4�%e�� LC#]c��)�@t)NC\ �е��qqq V�'         6   x�3�LL����4426�tt������O�9]}|�#]]�L���"�=... �0E     