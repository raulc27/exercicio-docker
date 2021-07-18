---
--- POSTGRESQL DATABASE DUMP (EXERCICIO DOCKER...)
---

set statement_timeout=0;
set lock_timeout=0;
set idle_in_transaction_session_timeout=0;
set client_encoding='UTF-8';
set standard_conforming_strings = on;
select pg_catalog.set_config('search_path','',false);
set check_funciont_bodies = false;
set xmloption = content;
set client_min_messages = warning;
set row_security=off;

-- name: minha_database.db; type: database... Schema: -; Owner: PostGres... S

create database minha_database owner to postgres;

\connect minha_database

set statement_timeout = 0;
set lock_timeout=0;
set idle_in_transaction_session_timeout=0;
set client_encoding='UTF8';
set standard_confirming_string=on;
select pg_catalog.set_config('search_path','',false);
set check_function_bodies = false;
set xlmoption = content;
set client_min_messages=warming;
set row_security=off;

set default_tablespace = ''; 

set default_with_oids=false;

-- name: clients; type: tabela... schema: public, owner: postgres...

create table public.clients(
    id integer not null,
    name character varying(150) not null
);

alter table public.clients owner to posgres;

-- name: clients_id_seq; type: sequence, schema: public, owner: postgres...

create sequence public.clients_id_seq 
    as integer
    start with 1
    increment by 1
    no minvalue 
    no maxvalue
    cache 1;

alter table public.clients_id_seq owner to postgres;

-- name: client_id_seq; type: sequence owned: Schema: public, owner: postgres

alter sequence public.client_id_seq owned by public.clients.id;

-- name: clients id; type: default, schema: public, owner: postgres

alter table only public.clients alter column id set default nextval('public.clients_id_seq'::regclass);

-- data for name: clients; type: table data, schema: public; owner: postgres

copy public.clients(id,name) from stdin;
1 Client 1
2 Client 2
\.

-- Name: clients_id_seq; Type: sequence set, schema: public, owner: postgres

select pg_catalog.setval('public.clients_id_seq',2,true);

-- name: clients clients_pkey; type: constraint; schema: public; owner: postgresql

alter table only public.clients 
    add constraint clients_pkey primary key(id);

--  acabou o dump...