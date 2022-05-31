PGDMP     
                    z            pelam    14.2    14.2 \    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    16524    pelam    DATABASE     h   CREATE DATABASE pelam WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE pelam;
                asoko2    false            �            1259    16525    adonis_schema    TABLE     �   CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    batch integer NOT NULL,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.adonis_schema;
       public         heap    asoko2    false            �            1259    16529    adonis_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.adonis_schema_id_seq;
       public          asoko2    false    209            o           0    0    adonis_schema_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;
          public          asoko2    false    210            �            1259    16530    adonis_schema_versions    TABLE     M   CREATE TABLE public.adonis_schema_versions (
    version integer NOT NULL
);
 *   DROP TABLE public.adonis_schema_versions;
       public         heap    asoko2    false            �            1259    16533 
   api_tokens    TABLE     *  CREATE TABLE public.api_tokens (
    id integer NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    expires_at timestamp with time zone,
    created_at timestamp with time zone NOT NULL
);
    DROP TABLE public.api_tokens;
       public         heap    asoko2    false            �            1259    16538    api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_tokens_id_seq;
       public          asoko2    false    212            p           0    0    api_tokens_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.api_tokens_id_seq OWNED BY public.api_tokens.id;
          public          asoko2    false    213            �            1259    16539 	   domisilis    TABLE     �   CREATE TABLE public.domisilis (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.domisilis;
       public         heap    asoko2    false            �            1259    16544    domisilis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.domisilis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.domisilis_id_seq;
       public          asoko2    false    214            q           0    0    domisilis_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.domisilis_id_seq OWNED BY public.domisilis.id;
          public          asoko2    false    215            �            1259    16545    kehilangan_kks    TABLE       CREATE TABLE public.kehilangan_kks (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keterangan character varying(255),
    ktp character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
 "   DROP TABLE public.kehilangan_kks;
       public         heap    asoko2    false            �            1259    16550    kehilangan_kks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kehilangan_kks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.kehilangan_kks_id_seq;
       public          asoko2    false    216            r           0    0    kehilangan_kks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kehilangan_kks_id_seq OWNED BY public.kehilangan_kks.id;
          public          asoko2    false    217            �            1259    16830    keterangans    TABLE     
  CREATE TABLE public.keterangans (
    id integer NOT NULL,
    jenis_permohonan character varying(255),
    keterangan text,
    permohonan_id integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.keterangans;
       public         heap    asoko2    false            �            1259    16829    keterangans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keterangans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.keterangans_id_seq;
       public          asoko2    false    231            s           0    0    keterangans_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.keterangans_id_seq OWNED BY public.keterangans.id;
          public          asoko2    false    230            �            1259    16551    pemohons    TABLE     %  CREATE TABLE public.pemohons (
    id integer NOT NULL,
    nama character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date,
    jenis_kelamin character varying(255),
    kewarganegaraan character varying(255),
    nik character varying(255),
    agama character varying(255),
    pekerjaan character varying(255),
    telpon character varying(255),
    alamat character varying(255),
    kk character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer
);
    DROP TABLE public.pemohons;
       public         heap    asoko2    false            �            1259    16556    pemohons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pemohons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pemohons_id_seq;
       public          asoko2    false    218            t           0    0    pemohons_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pemohons_id_seq OWNED BY public.pemohons.id;
          public          asoko2    false    219            �            1259    16557    skcks    TABLE     �   CREATE TABLE public.skcks (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.skcks;
       public         heap    asoko2    false            �            1259    16562    skcks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skcks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.skcks_id_seq;
       public          asoko2    false    220            u           0    0    skcks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.skcks_id_seq OWNED BY public.skcks.id;
          public          asoko2    false    221            �            1259    16563    sktms    TABLE     �   CREATE TABLE public.sktms (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.sktms;
       public         heap    asoko2    false            �            1259    16568    sktms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sktms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sktms_id_seq;
       public          asoko2    false    222            v           0    0    sktms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sktms_id_seq OWNED BY public.sktms.id;
          public          asoko2    false    223            �            1259    16569    skus    TABLE     F  CREATE TABLE public.skus (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    nama_usaha character varying(255),
    jenis_usaha character varying(255),
    alamat_usaha character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.skus;
       public         heap    asoko2    false            �            1259    16574    skus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.skus_id_seq;
       public          asoko2    false    224            w           0    0    skus_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.skus_id_seq OWNED BY public.skus.id;
          public          asoko2    false    225            �            1259    16575    surat_keterangans    TABLE       CREATE TABLE public.surat_keterangans (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keterangan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
 %   DROP TABLE public.surat_keterangans;
       public         heap    asoko2    false            �            1259    16578    surat_keterangans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.surat_keterangans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.surat_keterangans_id_seq;
       public          asoko2    false    226            x           0    0    surat_keterangans_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.surat_keterangans_id_seq OWNED BY public.surat_keterangans.id;
          public          asoko2    false    227            �            1259    16579    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(180) NOT NULL,
    keterangan character varying(255),
    level text,
    remember_me_token character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    nama character varying(255),
    CONSTRAINT users_level_check CHECK ((level = ANY (ARRAY['1'::text, '2'::text, '3'::text, '4'::text])))
);
    DROP TABLE public.users;
       public         heap    asoko2    false            �            1259    16585    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          asoko2    false    228            y           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          asoko2    false    229            �           2604    16586    adonis_schema id    DEFAULT     t   ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);
 ?   ALTER TABLE public.adonis_schema ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    210    209            �           2604    16587    api_tokens id    DEFAULT     n   ALTER TABLE ONLY public.api_tokens ALTER COLUMN id SET DEFAULT nextval('public.api_tokens_id_seq'::regclass);
 <   ALTER TABLE public.api_tokens ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    213    212            �           2604    16588    domisilis id    DEFAULT     l   ALTER TABLE ONLY public.domisilis ALTER COLUMN id SET DEFAULT nextval('public.domisilis_id_seq'::regclass);
 ;   ALTER TABLE public.domisilis ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    215    214            �           2604    16589    kehilangan_kks id    DEFAULT     v   ALTER TABLE ONLY public.kehilangan_kks ALTER COLUMN id SET DEFAULT nextval('public.kehilangan_kks_id_seq'::regclass);
 @   ALTER TABLE public.kehilangan_kks ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    217    216            �           2604    16833    keterangans id    DEFAULT     p   ALTER TABLE ONLY public.keterangans ALTER COLUMN id SET DEFAULT nextval('public.keterangans_id_seq'::regclass);
 =   ALTER TABLE public.keterangans ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    231    230    231            �           2604    16590    pemohons id    DEFAULT     j   ALTER TABLE ONLY public.pemohons ALTER COLUMN id SET DEFAULT nextval('public.pemohons_id_seq'::regclass);
 :   ALTER TABLE public.pemohons ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    219    218            �           2604    16591    skcks id    DEFAULT     d   ALTER TABLE ONLY public.skcks ALTER COLUMN id SET DEFAULT nextval('public.skcks_id_seq'::regclass);
 7   ALTER TABLE public.skcks ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    221    220            �           2604    16592    sktms id    DEFAULT     d   ALTER TABLE ONLY public.sktms ALTER COLUMN id SET DEFAULT nextval('public.sktms_id_seq'::regclass);
 7   ALTER TABLE public.sktms ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    223    222            �           2604    16593    skus id    DEFAULT     b   ALTER TABLE ONLY public.skus ALTER COLUMN id SET DEFAULT nextval('public.skus_id_seq'::regclass);
 6   ALTER TABLE public.skus ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    225    224            �           2604    16594    surat_keterangans id    DEFAULT     |   ALTER TABLE ONLY public.surat_keterangans ALTER COLUMN id SET DEFAULT nextval('public.surat_keterangans_id_seq'::regclass);
 C   ALTER TABLE public.surat_keterangans ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    227    226            �           2604    16595    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    229    228            R          0    16525    adonis_schema 
   TABLE DATA           H   COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
    public          asoko2    false    209    l       T          0    16530    adonis_schema_versions 
   TABLE DATA           9   COPY public.adonis_schema_versions (version) FROM stdin;
    public          asoko2    false    211   �m       U          0    16533 
   api_tokens 
   TABLE DATA           \   COPY public.api_tokens (id, user_id, name, type, token, expires_at, created_at) FROM stdin;
    public          asoko2    false    212   �m       W          0    16539 	   domisilis 
   TABLE DATA           _   COPY public.domisilis (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    214   (�       Y          0    16545    kehilangan_kks 
   TABLE DATA           j   COPY public.kehilangan_kks (id, pemohon_nik, keterangan, ktp, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    216   ��       h          0    16830    keterangans 
   TABLE DATA           v   COPY public.keterangans (id, jenis_permohonan, keterangan, permohonan_id, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    231   �       [          0    16551    pemohons 
   TABLE DATA           �   COPY public.pemohons (id, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, kewarganegaraan, nik, agama, pekerjaan, telpon, alamat, kk, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    218   4�       ]          0    16557    skcks 
   TABLE DATA           [   COPY public.skcks (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    220   -�       _          0    16563    sktms 
   TABLE DATA           [   COPY public.sktms (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    222   ��       a          0    16569    skus 
   TABLE DATA           v   COPY public.skus (id, pemohon_nik, nama_usaha, jenis_usaha, alamat_usaha, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    224   �       c          0    16575    surat_keterangans 
   TABLE DATA           h   COPY public.surat_keterangans (id, pemohon_nik, keterangan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    226   T�       e          0    16579    users 
   TABLE DATA           {   COPY public.users (id, username, password, keterangan, level, remember_me_token, created_at, updated_at, nama) FROM stdin;
    public          asoko2    false    228   ��       z           0    0    adonis_schema_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.adonis_schema_id_seq', 16, true);
          public          asoko2    false    210            {           0    0    api_tokens_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_tokens_id_seq', 144, true);
          public          asoko2    false    213            |           0    0    domisilis_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.domisilis_id_seq', 4, true);
          public          asoko2    false    215            }           0    0    kehilangan_kks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.kehilangan_kks_id_seq', 4, true);
          public          asoko2    false    217            ~           0    0    keterangans_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.keterangans_id_seq', 17, true);
          public          asoko2    false    230                       0    0    pemohons_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pemohons_id_seq', 39, true);
          public          asoko2    false    219            �           0    0    skcks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.skcks_id_seq', 16, true);
          public          asoko2    false    221            �           0    0    sktms_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sktms_id_seq', 9, true);
          public          asoko2    false    223            �           0    0    skus_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.skus_id_seq', 2, true);
          public          asoko2    false    225            �           0    0    surat_keterangans_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.surat_keterangans_id_seq', 3, true);
          public          asoko2    false    227            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          asoko2    false    229            �           2606    16597     adonis_schema adonis_schema_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.adonis_schema DROP CONSTRAINT adonis_schema_pkey;
       public            asoko2    false    209            �           2606    16599    api_tokens api_tokens_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_pkey;
       public            asoko2    false    212            �           2606    16601 "   api_tokens api_tokens_token_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_token_unique UNIQUE (token);
 L   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_token_unique;
       public            asoko2    false    212            �           2606    16603    domisilis domisilis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.domisilis
    ADD CONSTRAINT domisilis_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.domisilis DROP CONSTRAINT domisilis_pkey;
       public            asoko2    false    214            �           2606    16605 "   kehilangan_kks kehilangan_kks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.kehilangan_kks
    ADD CONSTRAINT kehilangan_kks_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.kehilangan_kks DROP CONSTRAINT kehilangan_kks_pkey;
       public            asoko2    false    216            �           2606    16837    keterangans keterangans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.keterangans
    ADD CONSTRAINT keterangans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.keterangans DROP CONSTRAINT keterangans_pkey;
       public            asoko2    false    231            �           2606    16700    pemohons pemohons_nik 
   CONSTRAINT     O   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_nik UNIQUE (nik);
 ?   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_nik;
       public            asoko2    false    218            �           2606    16607    pemohons pemohons_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_pkey;
       public            asoko2    false    218            �           2606    16609    skcks skcks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.skcks
    ADD CONSTRAINT skcks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.skcks DROP CONSTRAINT skcks_pkey;
       public            asoko2    false    220            �           2606    16611    sktms sktms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sktms
    ADD CONSTRAINT sktms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sktms DROP CONSTRAINT sktms_pkey;
       public            asoko2    false    222            �           2606    16613    skus skus_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_pkey;
       public            asoko2    false    224            �           2606    16617 (   surat_keterangans surat_keterangans_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.surat_keterangans
    ADD CONSTRAINT surat_keterangans_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.surat_keterangans DROP CONSTRAINT surat_keterangans_pkey;
       public            asoko2    false    226            �           2606    16619    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            asoko2    false    228            �           2606    16620 %   api_tokens api_tokens_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_user_id_foreign;
       public          asoko2    false    212    3261    228            �           2606    16739    domisilis domisilis_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.domisilis
    ADD CONSTRAINT domisilis_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 @   ALTER TABLE ONLY public.domisilis DROP CONSTRAINT domisilis_fk;
       public          asoko2    false    3249    218    214            �           2606    16774     kehilangan_kks kehilangan_kks_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kehilangan_kks
    ADD CONSTRAINT kehilangan_kks_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 J   ALTER TABLE ONLY public.kehilangan_kks DROP CONSTRAINT kehilangan_kks_fk;
       public          asoko2    false    3249    218    216            �           2606    16727    skcks skcks_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.skcks
    ADD CONSTRAINT skcks_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.skcks DROP CONSTRAINT skcks_fk;
       public          asoko2    false    220    3249    218            �           2606    16711    sktms sktms_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sktms
    ADD CONSTRAINT sktms_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.sktms DROP CONSTRAINT sktms_fk;
       public          asoko2    false    222    3249    218            �           2606    16750    skus skus_fk    FK CONSTRAINT     s   ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 6   ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_fk;
       public          asoko2    false    218    224    3249            �           2606    16763 &   surat_keterangans surat_keterangans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.surat_keterangans
    ADD CONSTRAINT surat_keterangans_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 P   ALTER TABLE ONLY public.surat_keterangans DROP CONSTRAINT surat_keterangans_fk;
       public          asoko2    false    226    3249    218            R   {  x����N�0���)�Gb'� E*��Z����6�!R�\E�W�N���n�^����nv��U0&5S��~�������@� > ��|5@(<B\��! )�i�7U��t�xYr�\:� D��'(,C�"��UI��N%?��w�a���� i	�˚�hy:�~��?tۏ�zD����EUU)��9|/���$�Nd���&�8��0��ġn���g!Zb�H�K�Ո;V.�?Jc��C�wc��y�
���s�?ӥ�pGq��Q��`}��ܖ��U�^}̇��4���eJ�)�Q��`�D��;J[NmH�F97�>��6e�B>���%�Ed����= z�Z��z;��Ҭ��oZ�I�      T      x�3����� a �      U      x�}�ˮ$9n��=O�{�	Q�ng��7^�FW�0`�1���c�)�y&������!��/#�����������̹���?����s���o��G9�����kj���W�%尦Ők�Z:�TK�҈���K짬?�����?���R����K�T�)���S�P����R���f���=��4EӘ�z�ei�ͤ��c���C��%�k������Rl[��[
<�ܚe�uZM�O�!�M[u�k�8��:����:%{Y-:=�^z��o�'�i��A���VQ�Ǯ{�r��i�MZ�s��~�O|�r���w��;rΜ�b��Lϱ�3agk����Qw=���t���?�N��Y���!�ZJ��V��t����B�t�Rjvd����G[ύ���wݟ��qܯ`�Yק�c��16�t&NTz�Zr8u�.9�5�����4�l��͏�r��=��K5�<m؉k[=+q����^�]l�"<QYs����2]3p�c��+�/ɯ��CKx�ME�:��~N٭J��-��>P�ِ�[05��&I�p~�ӫ�|Ŗ���j�j��Ma�I�������AV��Oc�N�:B.=�8�h+��z��(W��T_�h���+�N!�I�]�t��VZ�{���Y�ξҩ<�n����ݾbyE��K�m� }U[���ӓ��v��'��I8+g�f)E�T˱d)2f���؀i�{�O��g���8�ïA#�A�����#[�A��8�s�U +�f�a���)�+��y���p��L'j����s��<����<9s�� ���	a��Cl����y5�,�J�F�F�:S= �6��Ԡe�jd��Ud�6i[̚Ï�5��C?���Ag�-QC�`t^65���}�(^W�`�|�
l�l�~���K��^��PmɄ��J�)<�ҳ�Թɸ�� ��Wt�|x�L�Q�+����5څj�k��J_d��l��#��J@���(>�Ur�6�)T0PAt��ؔ��R���`��(�P
;�R�Ay��Lqg�%e%�L]�VK�k8�)CC�Z,Pe���O����]#�W[X�/��c��K/� �>��J>��l��$�C��J����'XC�n%�F*S2lc9���a��	� �z�Q���4�T^���-~��*�y�'XḄT8J��V����	�~��3H8���j�*�������W��'X�s�e=S6�e�w��`�9��'*A��L�5m\WDj��PQ/o�tt�~�������:��n]5��ݣgK$D��
V�Pwq؇r�ج[^vcK|�5騆�tV0J:5{�X�šC��xj�S���Ϻ #���q���c��w�����P �1Ʊz�(g��	Ю��ղ�������２�����1�!�ӽ�O�����l�L�d��S0tF&�S��
���,����{��ˇl!p�hL½�'\+	EւN��	�0P��I���g����p+�C������[�Rxas./�k��ڮJM�Ժ@��}Ys�D9��R|O ��a��|z�P�ps�X/��O�Vs��mE�o�25WE5��1z�$cZS��A�*�S�>��Ф9D{�~��
���d9K�.�p�7�C+�6r ��3����X�p��&?��_���>�Z�|����7�.�o}�pą�cx4P�?��ؙ���!��]�OR.u��j��,yKg��;3ʫ!׃l9* OΌ+�Q��}��;�߱]:�{ϟ`md�7��Ō��Y��.l����B �kV�R9p%��f?��U7D��	�Lg�j�����G��@�Id���l,�>B��tpş���3�q\��`ͿJx �9xdXf��F�WK��1�����߱l�B�H���%�X{���؏�֐cbn�T[H�9�$w>	��5�6��V�\��%�������2]��`m�e���g���#�d�1�f��ʢC����g�@���ϿǶ�Zڝ��k��)�\������	j���
K>;r�wr����Hd��Q�Wl/+�y���X@�����Є�S��G���x��Y��:��V��!x�O�F�՗^�jO�6m,�-	��k.��B?Qp�:C+���QA66�u��臟����۞`�x���̲eB�����bNB�c����@!��z�'h�֚Cj�/���`��n�D['�J$�E;i�J5v���(?��,�z���=>`�c#�+��mO��$�ܽqh-a@��*+.� ������ZpFf�)�!-����R�V��k|պ�w��ّJi���`>*�0CC��!�(�۬K8���Լ��5�c?��� ����ֳ��JLfb�x���������wo��?����t{���~�5�*�:����dS��8�+
i���ĝAc��w�@nj+ysy���bG\��[�'X[Ӆ
!7�M�������	�Ե���.�c�+��I����qD��w�)=�GY��4B�,0@q��`y0�g�����F!$g4G������.'��`:"u�%[��B7��9�*�#���M��O^gy��k��ΛبT����k�$�bbl��^j[p>�[үojFAű�~"Hf,�0�#����8��d�v�XzµH�Ǝۼ��HD��~n�({�8���Vv�t�l�Xwq���p��p�
�� t���8a�eA1T��(�$��q�B���T�����!�E%�W�	�$ͻ�~�BBi=�B�������f�3������uX��m��o�$���W�'\Sݽt��mVj��V�b�v��:��B�US�R�5v��(��{��hp���{µ���4�#ⳗa��R�#*"*�TL�?C�J��Q��p�W��Xw��$=�Z���@E�yUҩ�ְ����A�V)��4�F�ļ��A�;�,�y��k�| $ ��q5�x���Zq��G�q�;ρv��
�5�����k�%����%+��/N��J!���0��6"����<�.�>c���-yN�书��X~�5��j 	븾��<�D�4S��I�RΙ[H@�%!8�Zm�}H�z�Z�Ʈ�Ώ�1�^�kL �1!q�ة���b�;�(q:�w2]!S�Qc����!��O��@��x/�Z;t$	GK<=�_���d�"�Hc7d��C쫳�����	�Vl�55�����.�,o`�q���{��P�GT�-�;0���ľnU/y�;\)σ ?�z?eR������0 m�sk_؊�3�*���}�
.�/\�O5ֱa�ྑ�i�׸.��&�#�o��o+I��U�Y}�`��e�U�%����
���7oѥpF���Hnɨ.8�<>!'�ٌ3��b����ЈfJ_��v�����V�:���aȪ9�>�Ǿ��6 /���5s*�n0�|��;vʬ�:�bs���1�YܢH��e��@uHۼ��q�e�u&=mvg��^��F�Gyq"W�\Mh�iF�ĉ&j�D�o��a�Q�.Y<9h�b�A�;�G�0�^����f�gq�~7��b}���1 R5��k^�lY/�m'�q��~i@h�/��U�屡�gv�bcS&�$lp�+M��b7�_�3!�GញzH��x��n(~�ɮ�OT��V��{腅�T�"Qa#��s���|�_��-�L���g��V�^�����q�ǎ&�¶���'�>ɼ$4x[�,��/Kfg��o�����Z����K���'"�P�A�(�gi>j�8JC{��t[<�����D�,ֽR���-�'Z�~G����K\A+g���m=���:@�_<�,*2Q����w��|��߁h�O^�o��!��w��@�T����)�4=��W	�&�j�c�a�9ޮ���Z�ʠ}���0e:�_àH���:��7|�W�aS��@<<Y�;,Ӵ6��߯a��_��X�Ej}�y��>�oů��:!b�p&E!�"q�0�	�Pk���{����	��$R`�C��s/�ޖ���b�:�=5V
�����o/��7C���+��m���?�����1��w��)���K��*~5	{8��8�w@�b��<| i
  �<^���ghX]x�p�l�����K]���>{�iZ��Z�,;��[\(B���3hO�rY���d��D�Cʩi d�1�I<h;Io��ÇۂMiﱯ#��ݿnO�"��^�m,��^U�\d����P���)�e���*W�]8���Hb�k��%����ɖ�MR�$�k����zh!���8f��b�VD� �=v�F�`���x�}H��EE�T���fRV��/�4�܀S���{�˔�p(w�'\��Q�X!��ԘL�_���z?X���Zi�:���c�Ok��wS�=���Ӏ��r
�∢{�iI�E~�%wAw��M\+��!�7m�w%F�ߦ�=�Z��5kc��uy��h`�.Ѝ���Zv�îY��C����L/�͛k.��k���k<��Z�b�����6E~ҝzҐ�� ��׶���^c�Nv5Ͽ��	פ�c
E��ٗ<�\[�x�,�5����;q(�M�{l������*<[B ��;;!�x�yH���H��A�zH:x�m��ř���{��u��)B��gu�S�'����ZGa��b�'S6چ���o����&�w6�k���}#	�<]Qŵ�)k&�7�݁ьQA�u���`{ʂ�+��x'� ��X��G^�߱��/L���K<E�}�%	j��]����nhd\pĲE��N7�=x�\�O�ޣT�	�����"k�s5;� D�癍�3�g�e�:�Q0�� ��gp�4�W�����|���r
	�>�N��PM�ɱ �ϊlr�W���wB��!���J���GK�����<�5Es����9D%όbO2Kpj�"̛������{������'x�[�����y����(��H�',�)l[�%OR=	�~M�����6e�]h��Ń�B���-8)�X��^����1�i�
^zX�p�o��oW�>��?�6��6��}t���9;Ә�l�4��1�Δ�7|^
�2%��r=�W�/�y$�HG(B%��g�eu�>X��s��m1Mr�zDh�쭠���f0~��]���^�POb�+���/#�^��(�uZ̵��#&	jE3#�P�>o��3��U~{ayJ�h���Xm�����P��|�(x�9��z-��W�x����O~.�+�nxߵO��V�N<�8A�X�Rb�{�v����������SpZi��?�[>8�<�ZL}��bԝ��R�\�V����E����c��	��{�kFew�?�%�k�b�O$�H��8�h��jM|�d�z����d�����f���؉����ǹ��3��_��4|�(�RUP� ���"9nx� ��6 �D��������!�U'�	��͘�:|ۼF�{���@TD#6b�U�?2]eE�VM.|${�0&�¯m���`+[��{��:�)>l�&	��f�ev2nǂ��ނߗ�~auw��q6Y+U�?�=�p��Jw
��-��6ԝO�w,~��H��fsz.>pb�ʷx�����D���X ����ɠ���	M��l����0vcJ�J�a���������ȉ<N'7�*�t��]�:�.��y(����s����B�
y�����z�v���/���V�7�^vuVI�Fߘo��S�7F�U1�O�T��/��w����<�mU�q<�
�L`�~r�1����N�ypcK��C�G��D�B%�W���f�I�}�O��o6n�|��M�n��Z���||4�3�f��e�=���3����n���xr�>�u�+s#�2w���o�ܪ�Q0o�i���ι(k��_�z���;������|r���Zīt�J?J,�P ��59nX�pRf���psŮ�J���q@9��p2�͌N3N��_�&Q�+@�Q��Mɽ#����*�|�v���;_�8�LƠ�*��J��6�ɻ���� ���N!���d�����c}������ۤ=N(wd�˕�d�-����Q:d�߮oVU8鉨9�d@?���c�X=v��r���0�w�%��Ϋ���}v/�%SJ�k�aW͚�X3O�#�߃���>�}�3�l���^���;�*;Rn��IQ�OkF=Ts4��9`�~y�/B�U�3���կ\%��4C#'�����/)d��u�&v�qRk�o��w|\�øw�'p�~sCڠ�Z��iH��|
������F�zo �;��_�9�ܻ~�uh���/_,�k�cǥ�(d����:؎X��F͂)��l����X�\�'��oh�qJ9%�׽�LP�<P˖�	.߽��l;�v��ɽtr*��������6��{�j߻�8�\W	>�L��`�'������6:5�+�u6OH�v�hɚ��WwƮ�;��keg G1=����-��a�����	�ǖ#f���ё���^ú>����<*cSj򩮾䠋VΡç)|9�Ҏ������N(�A�s�gp�u{��*7���q���(PDsM>�¹�Շ��/����hΰ��W&��x�v���#�W�}7$�fO2��[�u*2N\&��w"*ƴt�K���'��ScH�~����}��1i ��{�RX"�p�>�R�́���7����3��>,L^��Eþ>�'�����}��/�?)���      W   L   x�=ɹ� �UA�9�jqB�����Ǜ���:'l ����>LY�EW��ý��.��Ȍ�A����UD^&Y/      Y   x   x�E�1
�0k����Y'%*��7v�qa[��>"M��a���_n	����o��n=�~4.�ԍ�2��VM��JCY��a��cO>fHFp��_LH�c����~ˎ�Z���!�      h     x���=o�0�g�+n�@�` �]ӯ�c�b
�����$jZ:4�����sg�dҵ&ZZ9�iр�@	��c�Ф�I�h�7�!��������!RFġW��i(k>Z����K���GE�.a��Ò+̦�=��������ymO^�a��<��Y@��a�F8�49!h���2m�:��{�~Ao��%[�܀Vx��0o�lnz%O�4��������g�G�>g�J��7�:V���N8*�P�ñExW5<c?�U���.��a��Va�:��^�]�rǪy      [   �   x���=k�@�Y�ދ�>N'�[�Jt�b�I��+M�?=ڦ[�>�xiy��kzK<�S��C�H@�� ���|l.9`3����8�(3)w��as�W�m_ ;„���1��Ϛ�����v�=��`dnP�5b�]h���ۊu=5,����R�z�Χ���zj\@Q��ڭ���Q�Rj�Skb*�ʂ{͋����'�kE�Ld)�|0����{��F�_𾭪�%�&�      ]   R   x�=�!� PMO1�@�_
���A�\bɞ}R� ��s�̬a����}�;�����n�d���ppuGK���'��      _   P   x�Mɱ� �O�>�[`fI���Y?R�\{�����h <���|�\7Afx�8��a,�D�1��bM��������      a   U   x�5�1� й���@�/�Y\p����&��=�UQN53s�{�IW�m�A�9� �K5�%�I���'�s6l�Y?r{t�=:~u      c   R   x�=�+� @��7������ �^�IE�]��Tv�� ���k�=�ڎ #j�(�i�$Z/�_d��IKE�W�N���v      e   �  x����r�@��5<�vI��i��^`�0a�l�in� *���gH6�2��,ο��ԁe���z��
L��@Nct�˒����@ [x9�i�k��T��k�B�/�t�g]����M쥧�2VU� Rb��Ȗ�g����w�d M�5$��V7�OB}�g�{�G�1)Yr��m�!U�@𧞽 ���g!���;C���i��a8���pDeoi��)�mIJ�ޡ_�P� �U�|�^$ҧ )ɉ��`�)/s%��^,���e����١�2,u���AY�n�>KfTI'�ElM�a���3�ט���%���h �
�/�?$;��-� cn��꼾��l��,l_�SllF�/��ʊ�Q�r���JY���ӛ������+�~p����+Gc�������)y�A� �E����2��     