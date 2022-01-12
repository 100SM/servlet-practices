-- db 积己
show databases;

-- user 积己
create user 'webdb'@'localhost' identified by 'webdb';

-- 鼻茄 何咯
grant all privileges on webdb.* to 'webdb'@'localhost';