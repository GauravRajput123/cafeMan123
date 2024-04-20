PGDMP  6    :    	            |            opd    16.1    16.1 F    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    24762    opd    DATABASE     v   CREATE DATABASE opd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE opd;
                postgres    false            �            1259    24763 
   categories    TABLE     �   CREATE TABLE public.categories (
    "categorieId" integer NOT NULL,
    "categorieName" character varying(255) NOT NULL,
    "categorieDesc" text NOT NULL,
    "categorieCreateDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24769    categories_categorieid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categorieid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_categorieid_seq;
       public          postgres    false    215            I           0    0    categories_categorieid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categories_categorieid_seq OWNED BY public.categories."categorieId";
          public          postgres    false    216            �            1259    24770    contact    TABLE     1  CREATE TABLE public.contact (
    "contactId" integer NOT NULL,
    "userId" integer NOT NULL,
    email character varying(35) NOT NULL,
    "phoneNo" bigint NOT NULL,
    "orderId" integer DEFAULT 0 NOT NULL,
    message text NOT NULL,
    "time" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.contact;
       public         heap    postgres    false            �            1259    24777    contact_contactid_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_contactid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.contact_contactid_seq;
       public          postgres    false    217            J           0    0    contact_contactid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_contactid_seq OWNED BY public.contact."contactId";
          public          postgres    false    218            �            1259    24778    contactreply    TABLE     �   CREATE TABLE public.contactreply (
    id integer NOT NULL,
    "contactId" integer NOT NULL,
    "userId" integer NOT NULL,
    message text NOT NULL,
    datetime timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.contactreply;
       public         heap    postgres    false            �            1259    24784    contactreply_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contactreply_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.contactreply_id_seq;
       public          postgres    false    219            K           0    0    contactreply_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.contactreply_id_seq OWNED BY public.contactreply.id;
          public          postgres    false    220            �            1259    24785 
   orderitems    TABLE     �   CREATE TABLE public.orderitems (
    id integer NOT NULL,
    "orderId" integer NOT NULL,
    "pizzaId" integer NOT NULL,
    "itemQuantity" integer NOT NULL
);
    DROP TABLE public.orderitems;
       public         heap    postgres    false            �            1259    24788    orderitems_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orderitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.orderitems_id_seq;
       public          postgres    false    221            L           0    0    orderitems_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.orderitems_id_seq OWNED BY public.orderitems.id;
          public          postgres    false    222            �            1259    24789    orders    TABLE     �  CREATE TABLE public.orders (
    "orderId" integer NOT NULL,
    "userId" integer NOT NULL,
    table_no character varying(255) NOT NULL,
    amount integer NOT NULL,
    "paymentMode" character varying(1) DEFAULT '0'::character varying NOT NULL,
    "orderStatus" character varying(1) DEFAULT '0'::character varying NOT NULL,
    "orderDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    24795    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public          postgres    false    223            M           0    0    orders_orderid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders."orderId";
          public          postgres    false    224            �            1259    24796    pizza    TABLE     $  CREATE TABLE public.pizza (
    "pizzaId" integer NOT NULL,
    "pizzaName" character varying(255) NOT NULL,
    "pizzaPrice" integer NOT NULL,
    "pizzaDesc" text NOT NULL,
    "pizzaCategorieId" integer NOT NULL,
    "pizzaPubDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.pizza;
       public         heap    postgres    false            �            1259    24802    pizza_pizzaid_seq    SEQUENCE     �   CREATE SEQUENCE public.pizza_pizzaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pizza_pizzaid_seq;
       public          postgres    false    225            N           0    0    pizza_pizzaid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.pizza_pizzaid_seq OWNED BY public.pizza."pizzaId";
          public          postgres    false    226            �            1259    24803 
   sitedetail    TABLE     1  CREATE TABLE public.sitedetail (
    "tempId" integer NOT NULL,
    "systemName" character varying(21) NOT NULL,
    email character varying(35) NOT NULL,
    contact1 bigint NOT NULL,
    contact2 bigint,
    address text NOT NULL,
    "dateTime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.sitedetail;
       public         heap    postgres    false            �            1259    24809    sitedetail_tempid_seq    SEQUENCE     �   CREATE SEQUENCE public.sitedetail_tempid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sitedetail_tempid_seq;
       public          postgres    false    227            O           0    0    sitedetail_tempid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sitedetail_tempid_seq OWNED BY public.sitedetail."tempId";
          public          postgres    false    228            �            1259    24810    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(21) NOT NULL,
    "firstName" character varying(21) NOT NULL,
    "lastName" character varying(21) NOT NULL,
    email character varying(35) NOT NULL,
    phone bigint NOT NULL,
    "userType" character varying(1) DEFAULT '0'::character varying NOT NULL,
    password character varying(255) NOT NULL,
    "joinDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24815    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    229            P           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    230            �            1259    24816    viewcart    TABLE     �   CREATE TABLE public.viewcart (
    "cartItemId" integer NOT NULL,
    "pizzaId" integer NOT NULL,
    "itemQuantity" integer NOT NULL,
    "userId" integer NOT NULL,
    "addedDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.viewcart;
       public         heap    postgres    false            �            1259    24820    viewcart_cartitemid_seq    SEQUENCE     �   CREATE SEQUENCE public.viewcart_cartitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.viewcart_cartitemid_seq;
       public          postgres    false    231            Q           0    0    viewcart_cartitemid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.viewcart_cartitemid_seq OWNED BY public.viewcart."cartItemId";
          public          postgres    false    232            x           2604    24821    categories categorieId    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN "categorieId" SET DEFAULT nextval('public.categories_categorieid_seq'::regclass);
 G   ALTER TABLE public.categories ALTER COLUMN "categorieId" DROP DEFAULT;
       public          postgres    false    216    215            z           2604    24822    contact contactId    DEFAULT     x   ALTER TABLE ONLY public.contact ALTER COLUMN "contactId" SET DEFAULT nextval('public.contact_contactid_seq'::regclass);
 B   ALTER TABLE public.contact ALTER COLUMN "contactId" DROP DEFAULT;
       public          postgres    false    218    217            }           2604    24823    contactreply id    DEFAULT     r   ALTER TABLE ONLY public.contactreply ALTER COLUMN id SET DEFAULT nextval('public.contactreply_id_seq'::regclass);
 >   ALTER TABLE public.contactreply ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219                       2604    24824    orderitems id    DEFAULT     n   ALTER TABLE ONLY public.orderitems ALTER COLUMN id SET DEFAULT nextval('public.orderitems_id_seq'::regclass);
 <   ALTER TABLE public.orderitems ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    24825    orders orderId    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN "orderId" SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 ?   ALTER TABLE public.orders ALTER COLUMN "orderId" DROP DEFAULT;
       public          postgres    false    224    223            �           2604    24826    pizza pizzaId    DEFAULT     p   ALTER TABLE ONLY public.pizza ALTER COLUMN "pizzaId" SET DEFAULT nextval('public.pizza_pizzaid_seq'::regclass);
 >   ALTER TABLE public.pizza ALTER COLUMN "pizzaId" DROP DEFAULT;
       public          postgres    false    226    225            �           2604    24827    sitedetail tempId    DEFAULT     x   ALTER TABLE ONLY public.sitedetail ALTER COLUMN "tempId" SET DEFAULT nextval('public.sitedetail_tempid_seq'::regclass);
 B   ALTER TABLE public.sitedetail ALTER COLUMN "tempId" DROP DEFAULT;
       public          postgres    false    228    227            �           2604    24828    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    24829    viewcart cartItemId    DEFAULT     |   ALTER TABLE ONLY public.viewcart ALTER COLUMN "cartItemId" SET DEFAULT nextval('public.viewcart_cartitemid_seq'::regclass);
 D   ALTER TABLE public.viewcart ALTER COLUMN "cartItemId" DROP DEFAULT;
       public          postgres    false    232    231            1          0    24763 
   categories 
   TABLE DATA           l   COPY public.categories ("categorieId", "categorieName", "categorieDesc", "categorieCreateDate") FROM stdin;
    public          postgres    false    215   �P       3          0    24770    contact 
   TABLE DATA           f   COPY public.contact ("contactId", "userId", email, "phoneNo", "orderId", message, "time") FROM stdin;
    public          postgres    false    217   WR       5          0    24778    contactreply 
   TABLE DATA           T   COPY public.contactreply (id, "contactId", "userId", message, datetime) FROM stdin;
    public          postgres    false    219   �R       7          0    24785 
   orderitems 
   TABLE DATA           N   COPY public.orderitems (id, "orderId", "pizzaId", "itemQuantity") FROM stdin;
    public          postgres    false    221   
S       9          0    24789    orders 
   TABLE DATA           r   COPY public.orders ("orderId", "userId", table_no, amount, "paymentMode", "orderStatus", "orderDate") FROM stdin;
    public          postgres    false    223   �S       ;          0    24796    pizza 
   TABLE DATA           v   COPY public.pizza ("pizzaId", "pizzaName", "pizzaPrice", "pizzaDesc", "pizzaCategorieId", "pizzaPubDate") FROM stdin;
    public          postgres    false    225   �T       =          0    24803 
   sitedetail 
   TABLE DATA           l   COPY public.sitedetail ("tempId", "systemName", email, contact1, contact2, address, "dateTime") FROM stdin;
    public          postgres    false    227   �X       ?          0    24810    users 
   TABLE DATA           v   COPY public.users (id, username, "firstName", "lastName", email, phone, "userType", password, "joinDate") FROM stdin;
    public          postgres    false    229   �X       A          0    24816    viewcart 
   TABLE DATA           b   COPY public.viewcart ("cartItemId", "pizzaId", "itemQuantity", "userId", "addedDate") FROM stdin;
    public          postgres    false    231   �[       R           0    0    categories_categorieid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categories_categorieid_seq', 25, true);
          public          postgres    false    216            S           0    0    contact_contactid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.contact_contactid_seq', 1, true);
          public          postgres    false    218            T           0    0    contactreply_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.contactreply_id_seq', 2, true);
          public          postgres    false    220            U           0    0    orderitems_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.orderitems_id_seq', 51, true);
          public          postgres    false    222            V           0    0    orders_orderid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_orderid_seq', 33, true);
          public          postgres    false    224            W           0    0    pizza_pizzaid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.pizza_pizzaid_seq', 102, true);
          public          postgres    false    226            X           0    0    sitedetail_tempid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sitedetail_tempid_seq', 1, false);
          public          postgres    false    228            Y           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 12, true);
          public          postgres    false    230            Z           0    0    viewcart_cartitemid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.viewcart_cartitemid_seq', 54, true);
          public          postgres    false    232            �           2606    24831    categories categories_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY ("categorieId");
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            �           2606    24833    contact contact_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY ("contactId");
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public            postgres    false    217            �           2606    24835    contactreply contactreply_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.contactreply
    ADD CONSTRAINT contactreply_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.contactreply DROP CONSTRAINT contactreply_pkey;
       public            postgres    false    219            �           2606    24837    orderitems orderitems_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.orderitems DROP CONSTRAINT orderitems_pkey;
       public            postgres    false    221            �           2606    24839    orders orders_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY ("orderId");
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    223            �           2606    24841    pizza pizza_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pkey PRIMARY KEY ("pizzaId");
 :   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_pkey;
       public            postgres    false    225            �           2606    24843    sitedetail sitedetail_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sitedetail
    ADD CONSTRAINT sitedetail_pkey PRIMARY KEY ("tempId");
 D   ALTER TABLE ONLY public.sitedetail DROP CONSTRAINT sitedetail_pkey;
       public            postgres    false    227            �           2606    24845    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            �           2606    24847    viewcart viewcart_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.viewcart
    ADD CONSTRAINT viewcart_pkey PRIMARY KEY ("cartItemId");
 @   ALTER TABLE ONLY public.viewcart DROP CONSTRAINT viewcart_pkey;
       public            postgres    false    231            �           1259    24848    categorie_name_idx    INDEX     e   CREATE INDEX categorie_name_idx ON public.categories USING btree ("categorieName", "categorieDesc");
 &   DROP INDEX public.categorie_name_idx;
       public            postgres    false    215    215            �           1259    24849    pizza_name_idx    INDEX     T   CREATE INDEX pizza_name_idx ON public.pizza USING btree ("pizzaName", "pizzaDesc");
 "   DROP INDEX public.pizza_name_idx;
       public            postgres    false    225    225            �           1259    24850    username_idx    INDEX     I   CREATE UNIQUE INDEX username_idx ON public.users USING btree (username);
     DROP INDEX public.username_idx;
       public            postgres    false    229            1   J  x�e�=o� �g�7u��X�CRU�����bU6��5��$N�:]��yѣCh���;OɥZq\IB�s�Lr������6��ǒ������}7Z�}��Gfwbԃ�`l-<���>�]�l?1x�clh�-8���߭Z�*��j���F�۹���jr-���:�&dS6���2�e�T�	̨���44v�ƒE�1c�AC%'�����YG��-y�Q������8���]nxu�\������׸aMTg��(I�"O���<��6�HG�EP���������!��B$Y�FR�����w��)o��Ҝ��F���QJ��.��      3   U   x��M
� ��x
/��|�U��fH�@	��_�P�GϷ�G׫���$1�2�B¤���P�u�J`D��V��,�yN���1�_;      5   >   x�3�4�4�t�H�IT�JTH��/�)���4202�50�52R04�22"=#c3C�=... ���      7   �   x�-��u !Eѵ�#����:����F>h�7|�܆-d#�������6~o�o�	��G�d�I_�C�	6}�MdBϗ��M�v;T[�j;"����%&Ե�܎�{Z�W�:�����!���ګz���ͮ:��DV�%2%��/�ᢪj`<\/ց���+�l���O�@.���i"O��3���BDa      9     x�m��qC1�dj@�T�����Xk���%�e��j.����FyS�H���00m�.�����$.��k$m��`r�t$9�P�t��J�ԋ�m`g�Ͷr����f}�4{�C�R�f2��}'m����c.�'�Ŕ�hb`u�q�U'?����j�fIt��r����&�TWk���ѬE!I�+��	��Z�	c.�ɨ��;gOVk
@v�B���Su�ٔ�jL��2�M�=SUK�%G���t`�e|���ȃ���ve�      ;   �  x����n�8E��W�� �,>�L�i4�	�@�fC;�#đI�<�~�����t{�:��[��4�#��f[����H&d �|���JA�d�P�
�v����.�)��݌:B��p�!��7�T�>�4��˜�U����Yv7��m׷�N��A������g7�q���n�>��E�����@H�S�����I}�Z}ۦ�>ŧ�����fY4w��>t�nǔ���rISCmj�5�O~Ķm��b�\g�kkd�^�Ӯb{��УfD�#�-<m-����)%˘���q��v�;.QH���h*f�v�|*e(�Bz	�p�,����yA������="�����B��Dҽ�AH|�ұ�c��C|L�X�1�{�M���@n�-����h��s�*���A���Of���^z�!�`5h�����s�	Te�֘W��<��?U+Q./(X��)A���!����&]�)�Aσaߛ�1�W��"��g!��O����* �x�9�x�A�)o������C�V���5l����5Yogx�4�!�j3b/!�D�9.B`?ҮcN�r� tBK�Z�,�i3�ˌ�l�H F�%�g&�J�H4�81KZ��^�EZ*�B�.��zꞺa���ӶR����(�8�x�K���A
����d&�?��Z���r-�#�9��$���bF���錐匲dS��̘"�C�N��L�z�����R�6��w�)���֜J,D(!����<1ˋt�9�Ԟ��Z(n-[����AU-e�.��t mvz�Ş�{�Ŷ�נ�!���jn���7�=�}]�Ր��C�AzN�}M�����^�(ԁ�'i��+��3��L�>���͘�*
1��[7O�_�O.�9���Z*������l9      =   ^   x��;�  й��`h
L&������1����!,r�Y:lU�^���x.��m��{ft"���#����E�d����19�ȩuTJ���      ?     x�m�I��0�s��ژ�,�Ӹ��>��5��l�ۯ�8�m�3M�� Uԓ��`��"Ќe��2ߖ��L�\��ŏh'�L��09�Qq ��<!�ԓ�r�/;�����=۫�a�8�]��=�N�M^)������9`��34��YC�"ĂD�\�k�d\e��IF1(o�����}:RZ��y�f�u�sf�Zݕ>�k�<�sx���|�2(��2��]-^[���aD'�anjl���~��2>��;|0U���\�Y"M��m�͵Q.]�t7C� ^��s���?;{��	���*��T��HA�) 3)g��A�2��H��<8��Y�8+Z���y0��L�S8�}?�tj��=j��
�֐�
dS7A�i��<�C�����c�|MGyT:&%�S�{�:W�����[R쪴�Xh������S�(����PE�d�*5�M��E���wM�! ��$�������ϳ�x��xw;B�a$��~��g6̏3��]8��wC�Jnt� tk-jj�HV�<����xq���U� 4!䏱�.U*��Cu��9ң�ט-�{�F�r9�6����+8r�Uտx��gku}���O�`X��2�e ]p�!�~隦��n~      A   /   x�3�䴴�4�4�4202�5 "SCC+C+cS=cKK3K�=... ��     