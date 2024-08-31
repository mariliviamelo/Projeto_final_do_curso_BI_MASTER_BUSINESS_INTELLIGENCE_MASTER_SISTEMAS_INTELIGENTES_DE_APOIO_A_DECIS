PGDMP     $                    |            DW_PROGRAMAS_SOCIAIS    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    57549    DW_PROGRAMAS_SOCIAIS    DATABASE     �   CREATE DATABASE "DW_PROGRAMAS_SOCIAIS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 &   DROP DATABASE "DW_PROGRAMAS_SOCIAIS";
                postgres    false            �            1259    58909    dim_meio_pgto    TABLE     8  CREATE TABLE public.dim_meio_pgto (
    sk_cod_pagto integer NOT NULL,
    nk_cod_pgto character varying(4) NOT NULL,
    nm_meio_pgto character varying(200) NOT NULL,
    etl_dt_inicio timestamp without time zone NOT NULL,
    etl_dt_fim timestamp without time zone NOT NULL,
    etl_versao integer NOT NULL
);
 !   DROP TABLE public.dim_meio_pgto;
       public         heap    postgres    false            �            1259    58908    dim_meio_pgto_sk_cod_pagto_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_meio_pgto_sk_cod_pagto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dim_meio_pgto_sk_cod_pagto_seq;
       public          postgres    false    221                       0    0    dim_meio_pgto_sk_cod_pagto_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dim_meio_pgto_sk_cod_pagto_seq OWNED BY public.dim_meio_pgto.sk_cod_pagto;
          public          postgres    false    220            �           2604    58912    dim_meio_pgto sk_cod_pagto    DEFAULT     �   ALTER TABLE ONLY public.dim_meio_pgto ALTER COLUMN sk_cod_pagto SET DEFAULT nextval('public.dim_meio_pgto_sk_cod_pagto_seq'::regclass);
 I   ALTER TABLE public.dim_meio_pgto ALTER COLUMN sk_cod_pagto DROP DEFAULT;
       public          postgres    false    220    221    221                      0    58909    dim_meio_pgto 
   TABLE DATA           w   COPY public.dim_meio_pgto (sk_cod_pagto, nk_cod_pgto, nm_meio_pgto, etl_dt_inicio, etl_dt_fim, etl_versao) FROM stdin;
    public          postgres    false    221   �                  0    0    dim_meio_pgto_sk_cod_pagto_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.dim_meio_pgto_sk_cod_pagto_seq', 1, false);
          public          postgres    false    220            �           2606    58914    dim_meio_pgto sk_cod_meio_pgto 
   CONSTRAINT     f   ALTER TABLE ONLY public.dim_meio_pgto
    ADD CONSTRAINT sk_cod_meio_pgto PRIMARY KEY (sk_cod_pagto);
 H   ALTER TABLE ONLY public.dim_meio_pgto DROP CONSTRAINT sk_cod_meio_pgto;
       public            postgres    false    221               x   x���1�0F��9E.���R��JABRь��9J;�V��7<h�9�9E�����r�4! B��Koq�bm{wR���� �XԊ�dׇ�2�)�I��G�z����W�����)���&�     