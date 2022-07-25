#Сервис авторизации

## Начало работы
Для начала нужно установить docker и запустить образ с mysql

docker pull mysql/mysql-server:latest

Затем создать контейнер на порту 3366

docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_ROOT_USER=root -e MYSQL_DATABASE=MyLesson -d mysql/mysql-server:latest -p 3366:3366

После запуска контйнера к нему надо подклюячиться уже из приложения 

Или же запустить приложение тоже как контейнер 
Внутри приложил Dockerfile



