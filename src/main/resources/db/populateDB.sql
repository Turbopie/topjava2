-- noinspection SqlWithoutWhereForFile
DELETE FROM user_roles;
DELETE FROM users;
DELETE FROM meals;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (user_id, datetime, calories, description)
VALUES ('100000', '2020-01-30 10:00:00', '500','Завтрак'),
       ('100000', '2020-01-30 13:00:00', '1000','Обед'),
       ('100000', '2020-01-30 20:00:00', '500', 'Ужин'),
       ('100000', '2020-01-31 00:00:00', '100', 'Еда на граничное значение'),
       ('100000', '2020-01-31 10:00:00', '1000', 'Завтрак'),
       ('100000', '2020-01-31 13:00:00', '500', 'Обед'),
       ('100000', '2020-01-31 20:00:00', '410', 'Ужин');