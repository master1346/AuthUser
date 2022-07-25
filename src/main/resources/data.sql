create table my_users(
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         username VARCHAR(256) NOT NULL ,
                         password VARCHAR(256) NOT NULL ,
                         roles SET('ROLE_ADMIN', 'ROLE_USER')
);

create table roles (
                       id INT NOT NULL AUTO_INCREMENT,
                       name ENUM('ROLE_ADMIN', 'ROLE_USER'),
                       PRIMARY KEY (id) ,
                       FOREIGN KEY (id) REFERENCES my_users (id)
);

create table user_roles(
                           user_id INT NOT NULL,
                           roles_id INT NOT NULL,
                           FOREIGN KEY (user_id) REFERENCES my_users (id),
                           FOREIGN KEY (roles_id) REFERENCES roles (id)

);

insert into my_users(username, password) values('user', 'password');
insert into my_users(username, password) values('admin', 'password');
insert into my_users(username, password) values('qwe', '123');

insert into roles(name) values('ROLE_USER');
insert into roles(name) values('ROLE_ADMIN');
insert into roles(name) values('ROLE_USER');
