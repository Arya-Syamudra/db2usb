PGDMP             
            {            anggap_saja_toko    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49152    anggap_saja_toko    DATABASE     ?   CREATE DATABASE anggap_saja_toko WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
     DROP DATABASE anggap_saja_toko;
                postgres    false            ?            1259    49198    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    stok integer,
    id_supplier integer,
    harga integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    49178    kasir    TABLE     ?   CREATE TABLE public.kasir (
    id_kasir integer NOT NULL,
    nama_kasir character varying(50),
    alamat_kasir character varying(50)
);
    DROP TABLE public.kasir;
       public         heap    postgres    false            ?            1259    49218 	   pelanggan    TABLE     w   CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    bayar integer,
    id_kasir integer NOT NULL
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            ?            1259    49193    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50),
    alamat_supplier character varying(50)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    49228 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer NOT NULL,
    jumlah integer,
    id_pelanggan integer NOT NULL
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    49198    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, stok, id_supplier, harga) FROM stdin;
    public          postgres    false    216   c                 0    49178    kasir 
   TABLE DATA           C   COPY public.kasir (id_kasir, nama_kasir, alamat_kasir) FROM stdin;
    public          postgres    false    214                    0    49218 	   pelanggan 
   TABLE DATA           B   COPY public.pelanggan (id_pelanggan, bayar, id_kasir) FROM stdin;
    public          postgres    false    217   o                 0    49193    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, alamat_supplier) FROM stdin;
    public          postgres    false    215   ?                 0    49228 	   transaksi 
   TABLE DATA           R   COPY public.transaksi (id_transaksi, id_barang, jumlah, id_pelanggan) FROM stdin;
    public          postgres    false    218   ?       y           2606    49202    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    216            u           2606    49182    kasir kasir_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kasir
    ADD CONSTRAINT kasir_pkey PRIMARY KEY (id_kasir);
 :   ALTER TABLE ONLY public.kasir DROP CONSTRAINT kasir_pkey;
       public            postgres    false    214            {           2606    49222    pelanggan pelanggan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217            w           2606    49197    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    215            }           2606    49232    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    218            ~           2606    49203    barang barang_id_supplier_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_id_supplier_fkey FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier);
 H   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_id_supplier_fkey;
       public          postgres    false    215    216    3191                       2606    49223 !   pelanggan pelanggan_id_kasir_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_id_kasir_fkey FOREIGN KEY (id_kasir) REFERENCES public.kasir(id_kasir);
 K   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_id_kasir_fkey;
       public          postgres    false    217    3189    214            ?           2606    49233 %   transaksi transaksi_id_pelanggan_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_id_pelanggan_fkey FOREIGN KEY (id_pelanggan) REFERENCES public.pelanggan(id_pelanggan);
 O   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_id_pelanggan_fkey;
       public          postgres    false    217    3195    218               ?  x?u??n?0E??W?
K~%?f
?mZ ?g1-fCw?D?-????")Mg??<?xy)?9?g%Y#?????,???~?????????SNN??$????q=?8="?K??\???W?A?J?ߎ2IX????Gy]^?%줱8???'??)???????nø?Yu@?q??w?ݩ?A?P˳h?иٱ??Ԅ=?V3[?>?>??c?e??~??&/?w???|?kKhph???`EШA??Y?2`?pMK?ر?l????r??????YuիT??Տ?G??????G??ܺ?]]???q?F?#?T?3^މ?????K+?&?g?:͞?Ԏ*?"?_P?n??xӢ%???%????8w*.?L??+?U????????ϮTѕ<X?ŉvBi?$???Ԙ?????`???"?,??pL?T         K   x?34?t,?LT?L?-M)J?,I??M-?O??24???/???M,*?24?t??/??W Re?yy??N???\1z\\\ ?Y         8   x?321?40?41 NC.#߄??o?i?A?f?FF`?!?o?????qqq W??         ?   x?E??n?0E??W?@I?]:??ABH?\?[L?	rlE??N?E7?}?=3??(?a?v?.pV-,y?????ZG???M/vpC?0D?????$4;?Yb???????yy?Йֲ_????\?j???????oP?ٍ??j?qm???ˈu??J??"?5???y?mсTJ#֭)a???43Σ????!?:???Y?R?ES?A?؆3OR+?}???-]????؂
??Q):??s)??4cq         G   x?]ʱ? C??&ga?.????)?Խ??=!????R72??^?BM?T???R϶t??P??8t?? <?g&     