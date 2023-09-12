drop schema gama cascade;

create schema gama;

create table gama.contract (
    id_contract uuid not null default uuid_generate_v4(), primary key,
    description text,
    amount numeric,
    periods integer,
    data timestamp
);

create table gama.payment (
    id_payment uuid not null default uuid_generate_v4(), primary key,
    id_contract uuid references gama.contract(id_contract),
    amount numeric,
    data timestamp
);

insert into gama.contract values ('7b294bba-0828-43a7-9baa-7ae95834bc96', 'Prestação de serviços escolares', 6000, 12, '2022-01-01T10:00:00');

insert into gama.payment values ('9c6d3b60-feea-4342-be86-db71fe5d2e63', '7b294bba-0828-43a7-9baa-7ae95834bc96', 6000, '2022-01-01T10:00:00');