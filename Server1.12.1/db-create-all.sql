create table hsp_home (
  id                            integer not null,
  player_name                   varchar(32) not null,
  name                          varchar(32),
  updated_by                    varchar(32) not null,
  world                         varchar(32) not null,
  x                             double not null,
  y                             double not null,
  z                             double not null,
  pitch                         float,
  yaw                           float,
  bed_home                      integer(1) default 0 not null,
  default_home                  integer(1) default 0 not null,
  last_modified                 timestamp not null,
  date_created                  timestamp not null,
  constraint uq_hsp_home_player_name_name unique (player_name,name),
  constraint pk_hsp_home primary key (id)
);

create table hsp_homeinvite (
  id                            integer not null,
  home_id                       integer not null,
  invited_player                varchar(32) not null,
  expires                       timestamp,
  last_modified                 timestamp not null,
  date_created                  timestamp not null,
  constraint uq_hsp_homeinvite_home_id_invited_player unique (home_id,invited_player),
  constraint pk_hsp_homeinvite primary key (id),
  foreign key (home_id) references hsp_home (id) on delete restrict on update restrict
);

create table hsp_player (
  id                            integer not null,
  name                          varchar(32) not null,
  uuid                          varchar(36),
  world                         varchar(32),
  x                             double,
  y                             double,
  z                             double,
  pitch                         float,
  yaw                           float,
  last_modified                 timestamp not null,
  date_created                  timestamp not null,
  constraint uq_hsp_player_name unique (name),
  constraint pk_hsp_player primary key (id)
);

create table hsp_playerlastloc (
  id                            integer not null,
  player_name                   varchar(32) not null,
  world                         varchar(32) not null,
  x                             double not null,
  y                             double not null,
  z                             double not null,
  pitch                         float,
  yaw                           float,
  last_modified                 timestamp not null,
  date_created                  timestamp not null,
  constraint uq_hsp_playerlastloc_world_player_name unique (world,player_name),
  constraint pk_hsp_playerlastloc primary key (id)
);

create table hsp_playerspawn (
  id                            integer not null,
  player_name                   varchar(32) not null,
  world                         varchar(32) not null,
  x                             double not null,
  y                             double not null,
  z                             double not null,
  pitch                         float,
  yaw                           float,
  spawn_id                      integer,
  last_modified                 timestamp not null,
  date_created                  timestamp not null,
  constraint uq_hsp_playerspawn_world_player_name unique (world,player_name),
  constraint pk_hsp_playerspawn primary key (id),
  foreign key (spawn_id) references hsp_spawn (id) on delete restrict on update restrict
);

create table hsp_spawn (
  id                            integer not null,
  world                         varchar(32) not null,
  name                          varchar(32),
  updated_by                    varchar(32) not null,
  group_name                    varchar(32),
  x                             double not null,
  y                             double not null,
  z                             double not null,
  pitch                         float,
  yaw                           float,
  last_modified                 timestamp not null,
  date_created                  timestamp not null,
  constraint uq_hsp_spawn_name unique (name),
  constraint uq_hsp_spawn_world_group_name unique (world,group_name),
  constraint pk_hsp_spawn primary key (id)
);

create table hsp_version (
  id                            integer not null,
  database_version              integer not null,
  constraint pk_hsp_version primary key (id)
);

