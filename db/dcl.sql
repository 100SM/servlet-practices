-- db ����
show databases;

-- user ����
create user 'webdb'@'localhost' identified by 'webdb';

-- ���� �ο�
grant all privileges on webdb.* to 'webdb'@'localhost';