-- Create profiles table
create table if not exists profiles (
id uuid references auth.users(id) on delete cascade,
username text,
avatar_url text,
bio text,
created_at timestamp with time zone default now(),
updated_at timestamp with time zone default now(),
primary key (id)
);


-- Enable RLS
alter table profiles enable row level security;


-- Policies
create policy "Users can view their own profile"
on profiles
for select
using (auth.uid() = id);


create policy "Users can insert their own profile"
on profiles
for insert
with check (auth.uid() = id);


create policy "Users can update their own profile"
on profiles
for update
using (auth.uid() = id);


-- Trigger: create profile on auth.users insert
create or replace function public.handle_new_user()
returns trigger as $$
begin
insert into public.profiles (id)
values (new.id);
return new;
end;
$$ language plpgsql security definer;


create trigger on_auth_user_created
after insert on auth.users
for each row execute function public.handle_new_user();