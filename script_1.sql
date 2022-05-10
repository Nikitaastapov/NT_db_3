create table if not exists Album (
id serial primary key,
album_year varchar(4) not null,
album_name varchar(40) not null
);

create table if not exists Singer (
id serial primary key,
singer_name varchar(40) not null
);

create table if not exists Genre (
id serial primary key,
genre_name varchar(40) not null
);

create table if not exists Website (
id_singer integer references singer (id),
id_genre integer references genre (id),
constraint WS primary key (id_singer, id_genre)
);

create table if not exists Singergenre (
singer_name_id integer references singer (id),
genre_name_id integer references genre (id),
constraint SG primary key (singer_name_id, genre_name_id)
);

create table if not exists Albumsinger (
singer_name_id integer references singer (id),
album_name_id integer references album (id),
constraint AlbS primary key (singer_name_id, album_name_id)
);

create table if not exists Collection (
id serial primary key,
track_name varchar(40) not null,
collection_year varchar(4) not null
);

CREATE TABLE if not exists Song(
Id serial primary key, 
track_name varchar(40) not null, 
track_dur numeric(4,2),
id_album integer references album (id)
);

create table if not exists Collectionname (
track_name_id integer references song (id),
collection_name_id integer references collection (id),
constraint ColN primary key (track_name_id, collection_name_id)
)
