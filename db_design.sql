/* Adlister Design */

CREATE TABLE users (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    passwd VARCHAR(16) NOT NULL,
    PRIMARY KEY (user_id),
    CONSTRAINT users_unique UNIQUE (email)
);

CREATE TABLE categories (
    category_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(20),
    PRIMARY KEY (category_id),
    CONSTRAINT categories_unique UNIQUE (category)
);

CREATE TABLE ads (
    post_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(1200) NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE category_map (
    post_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (post_id) REFERENCES ads (post_id),
    FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

/* Adlister Queries */

SELECT email FROM users WHERE user_id = (
    SELECT user_id FROM ads WHERE post_id = 1
);

SELECT category FROM categories WHERE category_id IN (
    SELECT category_id FROM category_map WHERE category_id = 1
);

SELECT * FROM ads WHERE post_id IN (
    SELECT post_id FROM category_map WHERE category_id = 1
);

SELECT * FROM ads WHERE user_id = 1;

/* Quiz Application */

CREATE TABLE questions (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    question VARCHAR(250) NOT NULL,
    ans ENUM('A', 'B', 'C', 'D') NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE quizzes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
);

CREATE TABLE quiz_map (
    quiz_id INT UNSIGNED NOT NULL,
    question_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (quiz_id) REFERENCES quizzes (id),
    FOREIGN KEY (question_id) REFERENCES questions (id)
);

CREATE TABLE students (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE student_answers (
    ans ENUM('A', 'B', 'C', 'D') NOT NULL,
    s_id INT UNSIGNED NOT NULL,
    q_id INT UNSIGNED NOT NULL,
    qu_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (s_id) REFERENCES students (id),
    FOREIGN KEY (q_id) REFERENCES questions (id),
    FOREIGN KEY (qu_id) REFERENCES quizzes (id)
);

