
use portfolio_s;

create table persona (
	id int unsigned not null auto_increment primary key,
    nombre varchar(70) not null, 
    apellido varchar(70) not null,
    profesion varchar(70),
    foto_url varchar(200),
    resumen_cv_id int unsigned,
		foreign key (resumen_cv_id) references resumen_cv(id),
	usuario_id int unsigned,
		foreign key (usuario_id) references usuario(id),
	contacto_id int unsigned,
		foreign key (contacto_id) references contacto(id)
);

use portfolio_s;
create table resumen_cv (
	id int unsigned not null auto_increment primary key,
    descripcion text(2000)
);

use portfolio_s;
create table estudio (
	id int unsigned not null auto_increment primary key,
    tipo_est varchar(70),
    centro_est varchar(70),
    fecha_fin date,
    descripcion text(1000),
    persona_id int unsigned,
		foreign key (persona_id) references persona(id)
);

use portfolio_s;
create table usuario (
	id int unsigned not null auto_increment primary key,
    usuario varchar(45),
    contraseña varchar(45)
);

use portfolio_s;
create table contacto (
	id int unsigned not null auto_increment primary key,
    correo varchar(70),
    github_url varchar(500),
    linkedin_url varchar(250),
    telefono varchar(45),
    domicilio varchar(100)
);

use portfolio_s;
create table proyecto (
	id int unsigned not null auto_increment primary key,
    titulo varchar(100),
    url varchar(250),
    descripcion varchar(200),
    persona_id int unsigned,
		foreign key (persona_id) references persona(id)
);

use portfolio_s;
create table skill (
	id int unsigned not null auto_increment primary key,
    nombre_skill varchar(45),
    descripcion text(1000),
    persona_id int unsigned,
		foreign key (persona_id) references persona(id),
	tipo_skill_id int unsigned,
		foreign key (tipo_skill_id) references tipo_skill(id)
);

use portfolio_s;
create table tipo_skill (
	id int unsigned not null auto_increment primary key,
    que_tipo varchar(45)
);

use portfolio_s;
create table exp_laboral (
	id int unsigned not null auto_increment primary key,
    puesto varchar(45),
    descripcion text(500),
    empresa varchar(45),
    url_empresa varchar(250),
    duracion varchar(45),
    persona_id int unsigned,
		foreign key (persona_id) references persona(id)
);
