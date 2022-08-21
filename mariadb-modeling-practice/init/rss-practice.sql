CREATE TABLE BLOG (
                      id int auto_increment not null primary key,
    company varchar(100),
    blog_tile varchar(1000),
    link varchar(2000),
    description varchar(5000)
);

CREATE TABLE POST (
    id int auto_increment not null primary key,
    title varchar(2000),
    link varchar(2000),
    description varchar(5000),
    language varchar(50),
    pub_date datetime,
    origin_blog_id numeric,
    created_date datetime,
    last_modified_date datetime,
    FOREIGN KEY(origin_blog_id) REFERENCES BLOG(id)
);

CREATE TABLE R_POST_CATEGORY (
    post_id numeric,
    category_id numeric,
    FOREIGN KEY(post_id) REFERENCES POST(id),
    FOREIGN KEY(category_id) REFERENCES CATEGORY(id)
);

CREATE TABLE CATEGORY (
    id numeric,
    category varchar(500)
);