PGDMP  3                     |            database    17rc1    17rc1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    database    DATABASE     �   CREATE DATABASE database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Dominican Republic.1252';
    DROP DATABASE database;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16396    roles    TABLE     b   CREATE TABLE public.roles (
    id_rol integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap r       postgres    false    4            �           0    0    TABLE roles    COMMENT     8   COMMENT ON TABLE public.roles IS 'Rol de cada usuario';
          public               postgres    false    218            �           0    0    COLUMN roles.id_rol    COMMENT     A   COMMENT ON COLUMN public.roles.id_rol IS 'Identificador de rol';
          public               postgres    false    218            �           0    0    COLUMN roles.nombre    COMMENT     >   COMMENT ON COLUMN public.roles.nombre IS 'Nombre de usuario';
          public               postgres    false    218            �            1259    16389    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying NOT NULL,
    rol integer,
    created_at timestamp without time zone
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false    4            �           0    0    TABLE usuarios    COMMENT     H   COMMENT ON TABLE public.usuarios IS 'Tabla almacenamiento de usuarios';
          public               postgres    false    217            �           0    0    COLUMN usuarios.id_usuario    COMMENT     M   COMMENT ON COLUMN public.usuarios.id_usuario IS 'Identificador unico tabla';
          public               postgres    false    217            �           0    0    COLUMN usuarios.nombre    COMMENT     A   COMMENT ON COLUMN public.usuarios.nombre IS 'Nombre de usuario';
          public               postgres    false    217            �           0    0    COLUMN usuarios.rol    COMMENT     >   COMMENT ON COLUMN public.usuarios.rol IS 'Rol que desempena';
          public               postgres    false    217                        0    0    COLUMN usuarios.created_at    COMMENT     E   COMMENT ON COLUMN public.usuarios.created_at IS 'Fecha de creacion';
          public               postgres    false    217            �          0    16396    roles 
   TABLE DATA           /   COPY public.roles (id_rol, nombre) FROM stdin;
    public               postgres    false    218   T       �          0    16389    usuarios 
   TABLE DATA           G   COPY public.usuarios (id_usuario, nombre, rol, created_at) FROM stdin;
    public               postgres    false    217   q       ]           2606    16402    roles roles_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pk PRIMARY KEY (id_rol);
 8   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pk;
       public                 postgres    false    218            [           2606    16395    usuarios usuarios_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pk PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pk;
       public                 postgres    false    217            ^           2606    16403    usuarios usuarios_roles_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_roles_fk FOREIGN KEY (rol) REFERENCES public.roles(id_rol);
 D   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_roles_fk;
       public               postgres    false    218    4701    217            �      x������ � �      �      x������ � �     