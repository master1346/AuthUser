create table my_user(
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         username VARCHAR(256) NOT NULL ,
                         password VARCHAR(256) NOT NULL
);

create table roles (
                       id INT NOT NULL AUTO_INCREMENT,
                       name ENUM('ROLE_ADMIN', 'ROLE_USER'),
                       PRIMARY KEY (id) ,
                       FOREIGN KEY (id) REFERENCES my_user (id)
);

create table user_roles(
                           user_id INT NOT NULL,
                           roles_id INT NOT NULL
);


create table files (
                       id VARCHAR(256) NOT NULL,
                       name VARCHAR(256) NOT NULL,
                       type VARCHAR(256) NOT NULL,
                       data LONGBLOB NOT NULL,
                       PRIMARY KEY(id)
);


insert into my_user(username, password) values('user', 'password');
insert into my_user(username, password) values('admin', 'password');
insert into my_user(username, password) values('qwe', '123');

insert into roles(name) values('ROLE_USER');
insert into roles(name) values('ROLE_ADMIN');

insert into user_roles(user_id, roles_id) values('1','1');
insert into user_roles(user_id, roles_id) values('2','2');
insert into user_roles(user_id, roles_id) values('3','1');