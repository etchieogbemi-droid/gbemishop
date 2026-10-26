create table users(id bigint generated always as identity primary key,role text default 'user',name text,email text unique,phone text,location text,salt text,pass text,created timestamptz default now());
create table products(id bigint generated always as identity primary key,code text,name text,descr text,price numeric,stock int,images jsonb,created timestamptz default now());
create table requests(id bigint generated always as identity primary key,uid bigint references users(id),pid bigint,pname text,code text,price numeric,qty int,total numeric,status int default 0,acct text default '',note text default '',eta timestamptz,history jsonb,created timestamptz default now());
create table chat(id bigint generated always as identity primary key,uid bigint,sender text,text text,d timestamptz default now());
alter table users enable row level security;alter table products enable row level security;alter table requests enable row level security;alter table chat enable row level security;
insert into storage.buckets(id,name,public) values('products','products',true) on conflict do nothing;
