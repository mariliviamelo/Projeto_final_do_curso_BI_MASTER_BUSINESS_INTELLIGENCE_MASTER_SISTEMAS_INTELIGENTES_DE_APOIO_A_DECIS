PGDMP         
                |            DW_PROGRAMAS_SOCIAIS    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    57549    DW_PROGRAMAS_SOCIAIS    DATABASE     �   CREATE DATABASE "DW_PROGRAMAS_SOCIAIS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 &   DROP DATABASE "DW_PROGRAMAS_SOCIAIS";
                postgres    false            �            1259    58916    dim_situacao_familia    TABLE     >  CREATE TABLE public.dim_situacao_familia (
    sk_cod_sit integer NOT NULL,
    nk_cod_sit_fam character varying(11) NOT NULL,
    nm_sit_fam character varying(50) NOT NULL,
    etl_dt_inicio timestamp without time zone NOT NULL,
    etl_dt_fim timestamp without time zone NOT NULL,
    etl_versao integer NOT NULL
);
 (   DROP TABLE public.dim_situacao_familia;
       public         heap    postgres    false            �            1259    58915 #   dim_situacao_familia_sk_cod_sit_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_situacao_familia_sk_cod_sit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.dim_situacao_familia_sk_cod_sit_seq;
       public          postgres    false    223                       0    0 #   dim_situacao_familia_sk_cod_sit_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.dim_situacao_familia_sk_cod_sit_seq OWNED BY public.dim_situacao_familia.sk_cod_sit;
          public          postgres    false    222            �           2604    58919    dim_situacao_familia sk_cod_sit    DEFAULT     �   ALTER TABLE ONLY public.dim_situacao_familia ALTER COLUMN sk_cod_sit SET DEFAULT nextval('public.dim_situacao_familia_sk_cod_sit_seq'::regclass);
 N   ALTER TABLE public.dim_situacao_familia ALTER COLUMN sk_cod_sit DROP DEFAULT;
       public          postgres    false    222    223    223                      0    58916    dim_situacao_familia 
   TABLE DATA           }   COPY public.dim_situacao_familia (sk_cod_sit, nk_cod_sit_fam, nm_sit_fam, etl_dt_inicio, etl_dt_fim, etl_versao) FROM stdin;
    public          postgres    false    223   �                  0    0 #   dim_situacao_familia_sk_cod_sit_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.dim_situacao_familia_sk_cod_sit_seq', 1, false);
          public          postgres    false    222            �           2606    58921    dim_situacao_familia sk_cod_sit 
   CONSTRAINT     e   ALTER TABLE ONLY public.dim_situacao_familia
    ADD CONSTRAINT sk_cod_sit PRIMARY KEY (sk_cod_sit);
 I   ALTER TABLE ONLY public.dim_situacao_familia DROP CONSTRAINT sk_cod_sit;
       public            postgres    false    223               x   x��̻�0�᚜�P9�2���!���s�N���_p�\*i ���L#DM���� (͏�}꽒���&�AǢQ<�k��ۼ���"��m����^�9�w©��Ֆ~F�&f�֝0)     