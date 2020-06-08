create database if not exists example;
use example;

drop table if exists users;
CREATE TABLE IF NOT EXISTS users (
id INT, 
name VARCHAR(255)
);

use sample;
describe users;
