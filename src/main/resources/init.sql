--Part 1: For create tables
--CREATE TABLE IF NOT EXISTS users
--(
--    user_id bigserial NOT NULL,
--    name text NOT NULL,
--    email text NOT NULL,
--    password text NOT NULL,
--    role text DEFAULT 'USER',
--    status text DEFAULT 'ACTIVE',
--    created_date_time timestamp without time zone,
--    CONSTRAINT users_pkey PRIMARY KEY (user_id),
--    CONSTRAINT user_email UNIQUE (email),
--    CONSTRAINT user_name UNIQUE (name)
--);
--
--CREATE TABLE IF NOT EXISTS articles
--(
--    article_id bigserial NOT NULL,
--    title text NOT NULL,
--    anons text NOT NULL,
--    full_text text NOT NULL,
--    user_id bigint NOT NULL,
--    created_date_time timestamp without time zone,
--    likes integer,
--    reposts integer,
--    views integer,
--    CONSTRAINT article_pkey PRIMARY KEY (article_id),
--    CONSTRAINT users_fkey FOREIGN KEY (user_id) REFERENCES users (user_id)
--);
--CREATE TABLE IF NOT EXISTS comments
--(
--    comment_id bigserial NOT NULL,
--    article_id bigint NOT NULL,
--    user_id bigint NOT NULL,
--    full_text text NOT NULL,
--    created_date_time timestamp without time zone,
--    CONSTRAINT comments_pkey PRIMARY KEY (comment_id),
--    CONSTRAINT articles_fkey FOREIGN KEY (article_id) REFERENCES articles (article_id),
--    CONSTRAINT users_fkey FOREIGN KEY (user_id) REFERENCES users (user_id)
--);
--
--CREATE TABLE IF NOT EXISTS tags
--(
--    id bigserial NOT NULL,
--    name text NOT NULL,
--    CONSTRAINT tags_pkey PRIMARY KEY (id),
--    CONSTRAINT tag_name UNIQUE (name)
--);
--CREATE TABLE IF NOT EXISTS article_tags
--(
--    article_id bigint NOT NULL,
--    tag_id bigint NOT NULL,
--    CONSTRAINT article_tags_pkey PRIMARY KEY (article_id, tag_id),
--    CONSTRAINT articles_fkey FOREIGN KEY (article_id) REFERENCES articles (article_id),
--    CONSTRAINT tags_fkey FOREIGN KEY (tag_id) REFERENCES tags (id)
--);

--Part 2: For clean tables
--delete from article_tags;
--delete from tags;
--delete from comments;
--delete from articles;
--delete from users;


--Part 3: For insert into tables
INSERT INTO users(name, email, password, role, status, created_date_time) VALUES('bob', 'bob@mail.ru', '$2a$12$rVi.x37AHxeGjMdwxmHBbeEvS/mkG9LSGaYjsNKr.4ZZY.v7Wadcy', 'USER', 'ACTIVE', '2016-03-02 12:05:00');
INSERT INTO users(name, email, password, role, status, created_date_time) VALUES('alice', 'alice@mail.ru', '$2a$12$8TFMF358WS26.8.GTe0xKOAMH/rStYIhhoZGrUWpRfAlKpda6bQQO', 'USER', 'ACTIVE', '2017-04-11 12:05:00');
INSERT INTO users(name, email, password, role, status, created_date_time) VALUES('admin', 'admin@mail.ru', '$2a$12$ChfGOXVH0SoUcMrBRYRcmO39PPjYmouU4aLZiyzsy4dwNCYn7Ucwm', 'ADMIN', 'ACTIVE', '2015-12-01 12:05:00');
INSERT INTO users(name, email, password, role, status, created_date_time) VALUES('eva', 'eva@mail.ru', '$2a$12$BEfybZRlCsX43bDSK4BPle/k6d7ai4n.QoyKRCoJ8uOdfAtpWekI2', 'USER', 'ACTIVE', '2017-06-15 12:05:00');

INSERT INTO articles(title, anons, full_text, user_id, created_date_time, likes, reposts, views) VALUES('first', 'about_first', 'text_for_first', 1, '2016-08-10 12:05:00', 2, 1, 10);
INSERT INTO articles(title, anons, full_text, user_id, created_date_time, likes, reposts, views) VALUES('second', 'about_second', 'text_for_second', 1, '2016-12-25 12:05:00', 1, 0, 4);
INSERT INTO articles(title, anons, full_text, user_id, created_date_time, likes, reposts, views) VALUES('third', 'about_third', 'text_for_third', 2, '2018-03-17 12:05:00', 5, 0, 20);
INSERT INTO articles(title, anons, full_text, user_id, created_date_time, likes, reposts, views) VALUES('fourth', 'about_fourth', 'text_for_fourth', 4, '2019-01-01 12:05:00', 3, 7, 32);

INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(1, 1, 'comment1', '2016-08-15 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(1, 2, 'comment2', '2016-09-20 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(1, 3, 'comment3', '2016-10-01 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(2, 4, 'comment4', '2017-01-02 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(2, 4, 'comment5', '2017-01-03 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(3, 1, 'comment6', '2018-03-20 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(3, 2, 'comment7', '2018-03-21 12:05:00');
INSERT INTO comments(article_id, user_id, full_text, created_date_time) VALUES(3, 4, 'comment8', '2018-03-22 12:05:00');

INSERT INTO tags(name) VALUES('tag1');
INSERT INTO tags(name) VALUES('tag2');
INSERT INTO tags(name) VALUES('tag3');
INSERT INTO tags(name) VALUES('tag4');
INSERT INTO tags(name) VALUES('tag5');

INSERT INTO article_tags(article_id, tag_id) VALUES(1, 1);
INSERT INTO article_tags(article_id, tag_id) VALUES(1, 2);
INSERT INTO article_tags(article_id, tag_id) VALUES(1, 3);
INSERT INTO article_tags(article_id, tag_id) VALUES(2, 1);
INSERT INTO article_tags(article_id, tag_id) VALUES(3, 1);
INSERT INTO article_tags(article_id, tag_id) VALUES(4, 4);
INSERT INTO article_tags(article_id, tag_id) VALUES(4, 5);




