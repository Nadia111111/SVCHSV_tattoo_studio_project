PGDMP      1                |            beautifire_db    15.6    16.2 >    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16423    beautifire_db    DATABASE     �   CREATE DATABASE beautifire_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE beautifire_db;
                postgres    false                        2615    16517 
   схема    SCHEMA        CREATE SCHEMA "схема";
    DROP SCHEMA "схема";
                postgres    false            �            1259    16448 
   Categories    TABLE     �   CREATE TABLE public."Categories" (
    id integer NOT NULL,
    name text,
    picture text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Categories";
       public         heap    postgres    false            �            1259    16447    Categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categories_id_seq";
       public          postgres    false    221            �           0    0    Categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;
          public          postgres    false    220            �            1259    16507    Clients    TABLE       CREATE TABLE public."Clients" (
    id integer NOT NULL,
    login text,
    password character varying(255),
    telephone character varying(255),
    "isAdmin" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Clients";
       public         heap    postgres    false            �            1259    16506    Clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Clients_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Clients_id_seq";
       public          postgres    false    229            �           0    0    Clients_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Clients_id_seq" OWNED BY public."Clients".id;
          public          postgres    false    228            �            1259    16430    Masters    TABLE     �   CREATE TABLE public."Masters" (
    id integer NOT NULL,
    name text,
    category text,
    description text,
    picture text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Masters";
       public         heap    postgres    false            �            1259    16429    Masters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Masters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Masters_id_seq";
       public          postgres    false    217            �           0    0    Masters_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Masters_id_seq" OWNED BY public."Masters".id;
          public          postgres    false    216            �            1259    16488    Reservations    TABLE     �  CREATE TABLE public."Reservations" (
    id integer NOT NULL,
    "clientName" character varying(255),
    "clientNumber" character varying(255),
    "masterId" integer,
    price integer,
    "serviceId" integer,
    "time" character varying(255),
    date character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Reservations";
       public         heap    postgres    false            �            1259    16487    Reservations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reservations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Reservations_id_seq";
       public          postgres    false    227            �           0    0    Reservations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Reservations_id_seq" OWNED BY public."Reservations".id;
          public          postgres    false    226            �            1259    16439    Rewiews    TABLE     �   CREATE TABLE public."Rewiews" (
    id integer NOT NULL,
    text text,
    name text,
    "isValid" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Rewiews";
       public         heap    postgres    false            �            1259    16438    Rewiews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Rewiews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Rewiews_id_seq";
       public          postgres    false    219            �           0    0    Rewiews_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Rewiews_id_seq" OWNED BY public."Rewiews".id;
          public          postgres    false    218            �            1259    16424    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    16457    Services    TABLE       CREATE TABLE public."Services" (
    id integer NOT NULL,
    name text,
    "categoryId" integer,
    description text,
    price text,
    picture text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Services";
       public         heap    postgres    false            �            1259    16456    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public          postgres    false    223            �           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
          public          postgres    false    222            �            1259    16471    masterServices    TABLE     �   CREATE TABLE public."masterServices" (
    id integer NOT NULL,
    "masterId" integer,
    "serviceId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."masterServices";
       public         heap    postgres    false            �            1259    16470    masterServices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."masterServices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."masterServices_id_seq";
       public          postgres    false    225            �           0    0    masterServices_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."masterServices_id_seq" OWNED BY public."masterServices".id;
          public          postgres    false    224            1           2604    16451    Categories id    DEFAULT     r   ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);
 >   ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            5           2604    16510 
   Clients id    DEFAULT     l   ALTER TABLE ONLY public."Clients" ALTER COLUMN id SET DEFAULT nextval('public."Clients_id_seq"'::regclass);
 ;   ALTER TABLE public."Clients" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            /           2604    16433 
   Masters id    DEFAULT     l   ALTER TABLE ONLY public."Masters" ALTER COLUMN id SET DEFAULT nextval('public."Masters_id_seq"'::regclass);
 ;   ALTER TABLE public."Masters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            4           2604    16491    Reservations id    DEFAULT     v   ALTER TABLE ONLY public."Reservations" ALTER COLUMN id SET DEFAULT nextval('public."Reservations_id_seq"'::regclass);
 @   ALTER TABLE public."Reservations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            0           2604    16442 
   Rewiews id    DEFAULT     l   ALTER TABLE ONLY public."Rewiews" ALTER COLUMN id SET DEFAULT nextval('public."Rewiews_id_seq"'::regclass);
 ;   ALTER TABLE public."Rewiews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            2           2604    16460    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            3           2604    16474    masterServices id    DEFAULT     z   ALTER TABLE ONLY public."masterServices" ALTER COLUMN id SET DEFAULT nextval('public."masterServices_id_seq"'::regclass);
 B   ALTER TABLE public."masterServices" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �          0    16448 
   Categories 
   TABLE DATA           S   COPY public."Categories" (id, name, picture, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �H       �          0    16507    Clients 
   TABLE DATA           h   COPY public."Clients" (id, login, password, telephone, "isAdmin", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   �I       �          0    16430    Masters 
   TABLE DATA           g   COPY public."Masters" (id, name, category, description, picture, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   -J       �          0    16488    Reservations 
   TABLE DATA           �   COPY public."Reservations" (id, "clientName", "clientNumber", "masterId", price, "serviceId", "time", date, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   �K       �          0    16439    Rewiews 
   TABLE DATA           X   COPY public."Rewiews" (id, text, name, "isValid", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   GL       �          0    16424    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    215   LO       �          0    16457    Services 
   TABLE DATA           s   COPY public."Services" (id, name, "categoryId", description, price, picture, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   �O       �          0    16471    masterServices 
   TABLE DATA           a   COPY public."masterServices" (id, "masterId", "serviceId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   �W       �           0    0    Categories_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Categories_id_seq"', 9, true);
          public          postgres    false    220            �           0    0    Clients_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Clients_id_seq"', 4, true);
          public          postgres    false    228            �           0    0    Masters_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Masters_id_seq"', 12, true);
          public          postgres    false    216            �           0    0    Reservations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Reservations_id_seq"', 7, true);
          public          postgres    false    226            �           0    0    Rewiews_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Rewiews_id_seq"', 8, true);
          public          postgres    false    218            �           0    0    Services_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Services_id_seq"', 34, true);
          public          postgres    false    222            �           0    0    masterServices_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."masterServices_id_seq"', 75, true);
          public          postgres    false    224            =           2606    16455    Categories Categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
       public            postgres    false    221            E           2606    16514    Clients Clients_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_pkey";
       public            postgres    false    229            9           2606    16437    Masters Masters_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Masters"
    ADD CONSTRAINT "Masters_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Masters" DROP CONSTRAINT "Masters_pkey";
       public            postgres    false    217            C           2606    16495    Reservations Reservations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Reservations"
    ADD CONSTRAINT "Reservations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Reservations" DROP CONSTRAINT "Reservations_pkey";
       public            postgres    false    227            ;           2606    16446    Rewiews Rewiews_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Rewiews"
    ADD CONSTRAINT "Rewiews_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Rewiews" DROP CONSTRAINT "Rewiews_pkey";
       public            postgres    false    219            7           2606    16428     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    215            ?           2606    16464    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public            postgres    false    223            A           2606    16476 "   masterServices masterServices_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."masterServices"
    ADD CONSTRAINT "masterServices_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."masterServices" DROP CONSTRAINT "masterServices_pkey";
       public            postgres    false    225            I           2606    16496 '   Reservations Reservations_masterId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reservations"
    ADD CONSTRAINT "Reservations_masterId_fkey" FOREIGN KEY ("masterId") REFERENCES public."Masters"(id);
 U   ALTER TABLE ONLY public."Reservations" DROP CONSTRAINT "Reservations_masterId_fkey";
       public          postgres    false    217    227    3129            J           2606    16501 (   Reservations Reservations_serviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reservations"
    ADD CONSTRAINT "Reservations_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public."Services"(id);
 V   ALTER TABLE ONLY public."Reservations" DROP CONSTRAINT "Reservations_serviceId_fkey";
       public          postgres    false    3135    227    223            F           2606    16465 !   Services Services_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Categories"(id);
 O   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_categoryId_fkey";
       public          postgres    false    221    3133    223            G           2606    16477 +   masterServices masterServices_masterId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."masterServices"
    ADD CONSTRAINT "masterServices_masterId_fkey" FOREIGN KEY ("masterId") REFERENCES public."Masters"(id);
 Y   ALTER TABLE ONLY public."masterServices" DROP CONSTRAINT "masterServices_masterId_fkey";
       public          postgres    false    3129    225    217            H           2606    16482 ,   masterServices masterServices_serviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."masterServices"
    ADD CONSTRAINT "masterServices_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public."Services"(id);
 Z   ALTER TABLE ONLY public."masterServices" DROP CONSTRAINT "masterServices_serviceId_fkey";
       public          postgres    false    225    223    3135            �   �   x����n�0�g�)�Wۄ�<K��Z�UID��@�Z	f$ԡ/�"�B�>ùo�M�Y2X�l�|�;�+�8"�12�sd����9���r�|��=;jF~��۠'�2^Cy��Q�ụ��~P�;O�'���#����
6c�\\�a0�h,(�)G&�T�&�J��Ey�O]W�0�.�v�)����F��[�q8���	�/�duU����z�a�l�`�~����ݿ�W��n#[��:�s�j��      �   �   x�3�0�[.l��Hn�T1JR14P�06���r��
7���
7�2K��7�IK,��,N�L5-	�L1���IKJ6�ps�*��6675��0��017�L�4202�50�54Q02�2��2��312�60�#����� �+�      �     x��S�N�@>�O�wCiK1���	�l��j�	#�B����l�*Z�����9�$�hb�riwf:_�o�Yǀg�T	�`��$�!QcHa�n�"5�L�%����T��X�����)ò��Dݩ<-�/�.aC���a,a�t�+HD�1�g���Ɩ�<6�o������w����v���U��v��������C�tx@XABx*��5���N!�4��I�h���=���*1N5ZtÂa��aģIe4��
'�"j$"��H�])gW w�G�:����g�#�J�*��/_����EB8�*�C�o�L{�a���ܕ�w	2r���^��4��~�7
#�ߣ>�`u�Y��n�Y�uUb=��i��?�4=      �   {   x�}��	1C��)��H�;v2˭�����(� $�@�h>�9��5��OڽL�
���d�������Mx�xi�;�?S���I�P7RB�r�M��u��` ��5��nS:JJ�Gc7�      �   �  x��U�n�P]_���J��5b�T��DU!�HU�X6-U�5,`G���ޘ�u�������3׭����"���̜ǌW�\J^��s"���I"S��ԃp�.76h��F+�յ'��O��j�Tn,��uq*���p�_��>�r�5�\�r+I�_�e,�$V&X��&�Y�-w�`2����nE�Yq`�V����QdΒ$+N-�1C�oɭ��'�ȷ���W�)E�K�D-#I��y��}���혽���F�
����p����'�����Q�<:�ǃ)��Us'�C *qq�e�� ���Z�~��0x(S�B��[c���K �!p�=r��B��e]�s�����ّQ	��ʆߘ�戒8V�������nwa�F~j�c�2,%)��0H�\���8*?��Ox#ԍo�V�hE�����v���㑣�r���5%�/��`�ʹ�(��* ���1d��|%�>W�(����%�Y��z��y�Q9jJ�`�;��t���nu���?�;��/L�
�r�v��5�y�Jg�)k�Ѓڊ�:���6o���������wF���X���)5����T��n�Yڏ	���-�'Ӳѐ�\hؔ͒kCCSk���<dk����U i9�SO&h��G:�0��th^�>�w��[���Xǈ�}�[-(!Y%�Zu�p��'OuVq�L��ə��T����KF�u'����{"���i5=�}O<8�^����ױy      �   {   x�m���0��{������K�lL	B�m$��r(�z��������^|MC��rQk��x�,��Mפ�W@���\{�T���)�t$|���	�����������!�a�3%���/�s�	ҿG[      �   �  x��X�n�F=�_��QI��$Ǣ@/E{ȡ_�8h�v(z��(���N���")�cQ��ň�H
�,�_�7o�)ѩ�\�ܝ�y���,[mϾ�Qֵ~vlC;��M�70xd=��=��={nS;�)E6��5Y/�s_jG�Y���3S��d�x1˞�K�w���a��a-���6h��6Ry���}11��~f���@ �G�3�oC�
�왍�αl,�`E�"�� ��M���y�f�s�ٹ�j�v�v�s�}k��ٺ���ȫ�֖g���~���~���T���M�̲S�Eg@�����~n,$@RЀ���Ą�$�,��g�&PH��!,��SҀX��ؖ��E��Z�=Ŷ"Y\��K.��4�J"v�|A@.E�c�v�"{�=��H����q�D �֐�]��0�!����Pl�0�;��SPA�/b�DFɏ!�`:H�;�S#�D\�nz��i���Ky�ȇ�UW����r�<�����U���kA�EJ����d�\f�
&�N��V�4H���|�1&<e�'��c$��qN_�����HMuɞH�]�!c��l��29SafO�2Ƴ�칤p.Er��0��o�7+�U&�����p%���$X���0CAk@JO?)�ۗ)e%m��[���η^���7<���&�爘�	}�˅ "\[�����������?�Z ���"i`Z)AF+��s[���At����	Q�����="e�x)m����."\'�̤a�gT��`m���{Å���/�)�IU
R��C_s�po�,9#P'�\2��{�"�Tr��T�ŉx%v��U�͑kh2���q��R�~^��š����SK4�C�`ŁX�x"��I1q�r}��N����n�Mӎ���O9S�0##:UD-U����Vf��iH�n��]خ�ϐ�#~�5�6_�lN�u�Jo�_�j��u������`#�H���X�h��l�k�������ߤ��t��IZ�Dȿ]�^� C�
�K�V���B�t$=xq���8D�k&��aQ�Јu�r���Ī#L��+�K��������k�l��no�ν{³?���U��-���n��w
�/:�#K���LWQ�Ј�rn���h	9о*
��[�D�Y, OE7���r�LL�P��qXs��r��,!�u.�\k8w �?���|�K��y�� �&q�T�^���l�\�^��k�3vbםGJd�=�y_m���<bOpb-���k���~o0�ڡ���?*Ca���Q�2̀_�4[��״f����h�I�d���d1�JO��,P�	sRȌu�Y~�'s7��&���LR4N0���l'�~���]M���ʭ�N�F�*�cљC��+c�I!��Fն�zl~m�Ka\)]��H�WqҚ�H!q+�pADm�1$j�F��U�U��`�j�4*]��*������Q.i����P�セN4�|�{F�/���;r�jC�M�7���%�O)1��Fsg��3-�<\_MK���W��+��XU�+e  '_�2e�ޭ��w�˽������������u�@ r�����'��O �z�d�"$�t\S)7&���M�Y7je[+��
�K�����\;޶����?�;��>��A[ty�[�^q�]�Ⱦ�=K���!��c��O|�9t(�l'5������K<~n8V&��C��\"�gp��ͷWP^���g_�9������֋@�U$�X����{/Ʒ�#ɩܓdJ9��j��eN��;�;��\����t��n^U�D/�R3��xqǪ�d`,Oy�/j#�ꗫ����t�����M��,k�����V�^:�w���$���:@X��4/�à��c)w����luZ,V	�`n���v��ªH1�C�=Q���)�ukm����_K�u����ҏ�JwdI~��O~')]=ꦽ�oD�����Dӵ`n%y[�P��� ��EΩ��i�W5�~���������P�      �   �   x��ԻAE��[9���R�ׁ�@p���Z�ո�yZ���_�h�8�����t�p�8���S>��cOa:���coa:��c{�^ׂ�Mׂ8
Ӆզ�х�(^�(<)��ū�x>E��Sr'F5�4��:4�u���~}��wL8�XEiޱӼ��yg+L�NW$4�����y��"������4�\6q޹�S-���7i����t���u]?��ǻ     