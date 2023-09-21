create table if not exists Musics_genres(
	id serial primary key,
	genre_name varchar(30) not null
);

create table if not exists Signer(
	id serial primary key,
	nickname varchar(40) not null
);

create table if not exists Signer_Genres(
	id serial primary key,
	signer_id integer not null references Signer(id),
	genres_id integer not null references Musics_genres(id)
);

create table if not exists Album(
	id serial primary key,
	title varchar(30) not null,
	release_year date
);

create table if not exists Signer_Album(
	id serial primary key,
	signer_id integer not null references Signer(id),
	album_id integer not null references Album(id)
);

create table if not exists Track(
	id serial primary key,
	title varchar(30) not null,
	duration interval,
	album_id integer not null references Album(id)
);

create table if not exists Collection(
	id serial primary key,
	title varchar(30) not null,
	release_year date
); 

create table if not exists Collection_Track(
	id serial primary key,
	collection_id integer not null references Collection(id),
	track_id integer not null references Track(id)
);