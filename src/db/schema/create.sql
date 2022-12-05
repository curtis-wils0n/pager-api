DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS publishers CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS shelves CASCADE;
DROP TABLE IF EXISTS lists CASCADE;
DROP TABLE IF EXISTS on_list CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;

CREATE TABLE genres (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE authors (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255) NOT NULL,
  year INTEGER NOT NULL,
  cover_art_url TEXT DEFAULT 'https://freesvg.org/img/CrazyTerabyte_Book.png',
  description TEXT NOT NULL,
  genre_id INTEGER REFERENCES genres(id) ON DELETE CASCADE
);

CREATE TABLE publishers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  author_id INTEGER REFERENCES authors(id) ON DELETE CASCADE,
  book_id INTEGER REFERENCES books(id) ON DELETE CASCADE
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  profile_pic_url VARCHAR(255) NOT NULL
);

CREATE TABLE shelves (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  book_id INTEGER REFERENCES books(id) ON DELETE CASCADE

);

CREATE TABLE lists (
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE on_list (
  id SERIAL PRIMARY KEY NOT NULL,
  list_id INTEGER REFERENCES lists(id) ON DELETE CASCADE,
  book_id INTEGER REFERENCES books(id) ON DELETE CASCADE
);

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  stars INTEGER,
  CONSTRAINT stars_ck CHECK (stars BETWEEN 1 AND 5),
  recommended BOOLEAN,
  description VARCHAR(255),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  book_id INTEGER REFERENCES books(id) ON DELETE CASCADE
);
