INSERT INTO genres (name)
VALUES
  ('Science Fiction'),
  ('Action'),
  ('Southern Gothic Fiction'),
  ('Fantasy Fiction'),
  ('Fiction');

INSERT INTO authors (name)
VALUES
  ('Frank Herbert'),
  ('Yukito Kishiro'),
  ('Harper Lee'),
  ('J.R.R. Tolkien'),
  ('George R. R. Martin'),
  ('F. Scott Fitzgerald'),
  ('George Orwell'),
  ('Gene Wolfe'),
  ('Alastair Reynolds'),
  ('Dan Simmons');

INSERT INTO books (title, year, cover_art_url, genre_id)
VALUES 
  ('Dune', 1965, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/Dune_cover.jpeg?raw=true', 1),
  ('Alita: Battle Angel', 1997, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/battle-angel-cover.jpeg?raw=true', 2),
  ('To Kill a Mockingbird', 1960, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/mockingbird-cover.jpg?raw=true', 3),
  ('The Lord of the Rings', 1954, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/the-lord-of-the-rings-book-cover.jpeg?raw=true', 4),
  ('A Game of Thrones', 1996, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/GOT-cover.jpeg?raw=true', 4),
  ('The Great Gatsby', 1925, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/great-gatsby-cover.jpeg?raw=true', 5),
  ('1984', 1949, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/nineteen-eighty-four-1984-cover.jpeg?raw=true', 1),
  ('Shadow of the Torturer', 1980, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/shadow-of-the-torturer.jpeg?raw=true', 1),
  ('House of Suns', 2008, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/house-of-suns-cover.jpeg?raw=true', 1),
  ('Hyperion', 1989, 'https://github.com/curtis-wils0n/pager-api/blob/main/src/db/assetts/Hyperion_cover.jpeg?raw=true', 1);

INSERT INTO publishers (name, location, author_id, book_id)
VALUES
  ('Chilton Books', 'Boston, Massachusetts', 1, 1),
  ('Shueisha', 'Tokyo, Japan', 2, 2),
  ('J. B. Lippincott & Co.', 'Philadelphia, Pennsylvania', 3, 3),
  ('Allen & Unwin', 'Sydney, Australia', 4, 4),
  ('Bantam Spectra', 'New York City, New York', 5, 5),
  ('Charles Scribner''s Sons', 'New York City, New York', 6, 6),
  ('Secker & Warburg', 'London, England', 7, 7),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 8),
  ('Gollancz', 'London, England', 9, 9),
  ('Doubleday', 'New York City, New York', 10, 10);

INSERT INTO users (first_name, last_name, username, email, profile_pic_url)
VALUES
  ('Test', 'McTest', 'testman', 'test@test.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
  ('Best', 'McBest', 'bestman', 'best@best.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
  ('Rest', 'McRest', 'restman', 'rest@rest.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
  ('Zest', 'McZest', 'zestman', 'zest@zest.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png');

INSERT INTO shelves (user_id, book_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  (1, 6),
  (1, 7),
  (1, 8),
  (1, 9),
  (1, 10),
  (2, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (3, 1),
  (4, 1),
  (4, 2),
  (4, 3),
  (4, 4),
  (4, 5),
  (4, 6),
  (4, 7),
  (4, 8),
  (4, 9);

INSERT INTO lists (title, description, user_id)
VALUES
  ('Test''s favourite books of 2022', 'These are some books that I really liked reading in 2022', 1),
  ('Best''s favourite books of 1998', 'These are some books that I remember really enjoying in 1998', 2),
  ('Test''s revised favourite books list of 2022', 'Here are a new bunch of books that I actually like better than the last list I made!', 1),
  ('Zest''s summer reading catalogue', 'READ THESE', 4);

INSERT INTO on_list (list_id, book_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (3, 6),
  (3, 7),
  (4, 1),
  (4, 2),
  (4, 3);

INSERT INTO reviews (stars, recommended, description, user_id, book_id)
VALUES
  (5, true, 'This is one of my favourite books, read it.', 2, 2),
  (1, false, 'This is the worst book on earth, don''t read it', 2, 9),
  (2, true, 'I don''t think it''s the best book, but it was entertaining to read.', 4, 1),
  (4, false, 'I recognize that it''s a classic, but it takes way too long to get to the good parts.', 3, 8);