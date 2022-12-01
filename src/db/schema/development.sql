INSERT INTO genres (name)
VALUES
  ('Science Fiction'),
  ('Action'),
  ('Southern Gothic Fiction'),
  ('Fantasy Fiction'),
  ('Fiction'),
  ('Non-Fiction');

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
  ('Dan Simmons'),
  ('James Clear'),
  ('Colleen Hoover'),
  ('Mark Manson'),
  ('Robert Greene'),
  ('Robert T. Kiyosaki'),
  ('Dale Carnegie'),
  ('Stephen King'),
  ('Richard Dawkins'),
  ('Steven Erikson');

INSERT INTO books (title, year, cover_art_url, genre_id)
VALUES 
  ('Dune', 1965, 'https://i0.wp.com/www.tor.com/wp-content/uploads/2019/07/Dune-cover-1.jpg?type=vertical&ssl=1', 1),
  ('Alita: Battle Angel', 1997, 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/ea319276482673.5c6ef1a84349a.jpeg', 2),
  ('To Kill a Mockingbird', 1960, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/1200px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg', 3),
  ('The Lord of the Rings', 1954, 'https://upload.wikimedia.org/wikipedia/en/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif', 4),
  ('A Game of Thrones', 1996, 'http://www.georgerrmartin.com/wp-content/uploads/2013/03/GOTMTI2.jpg', 4),
  ('The Great Gatsby', 1925, 'https://149352626.v2.pressablecdn.com/wp-content/uploads/2018/02/CK-3-684x1024.jpg', 5),
  ('1984', 1949, 'https://i0.wp.com/www.printmag.com/wp-content/uploads/2017/01/2a34d8_a6741e88335241308890543d203ad89dmv2.jpg?resize=500%2C815&ssl=1', 1),
  ('Shadow of the Torturer', 1980, 'https://m.media-amazon.com/images/I/A19BG5wLHDL.jpg', 1),
  ('House of Suns', 2008, 'https://upload.wikimedia.org/wikipedia/en/0/08/House_of_Suns_%28Amazon%29.jpg', 1),
  ('Hyperion', 1989, 'https://upload.wikimedia.org/wikipedia/en/7/73/Hyperion_cover.jpg', 1),
  ('Atomic Habits', 2018, 'https://covers.openlibrary.org/b/id/12886417-L.jpg', 6),
  ('It Ends With Us', 2016, 'https://covers.openlibrary.org/b/id/12916653-L.jpg', 5),
  ('The Subtle Art of Not Giving a Fuck', 2016, 'https://covers.openlibrary.org/b/id/12833521-L.jpg', 6),
  ('The 48 Laws of Power', 1998, 'https://covers.openlibrary.org/b/id/12920669-L.jpg', 6),
  ('It Starts With Us', 2022, 'https://covers.openlibrary.org/b/id/12964213-L.jpg', 5),
  ('Rich Dad, Poor Dad', 1990, 'https://m.media-amazon.com/images/I/81bsw6fnUiL.jpg', 6),
  ('How to Win Friends and Influence People', 1913, 'https://covers.openlibrary.org/b/id/12996599-L.jpg', 6),
  ('Verity', 2018, 'https://covers.openlibrary.org/b/id/12924621-L.jpg', 5),
  ('Duma Key', 2008, 'https://covers.openlibrary.org/b/id/10582232-L.jpg', 5),
  ('The God Delusion', 2001, 'https://covers.openlibrary.org/b/id/8231555-L.jpg', 6),
  ('The Claw of the Conciliator', 1981, 'https://img.bookfrom.net/img/1707050829/1074_the_claw_of_the_conciliator.jpg', 1),
  ('The Sword of the Lictor', 1981, 'https://covers.openlibrary.org/b/id/6594789-L.jpg', 1),
  ('The Citadel of the Autarch', 1982, 'https://upload.wikimedia.org/wikipedia/en/6/62/TheCitadelOfTheAutarch.jpg', 1),
  ('Gardens of the Moon', 1999, 'https://covers.openlibrary.org/b/id/6304201-L.jpg', 4),
  ('Deadhouse Gates', 2000, 'https://covers.openlibrary.org/b/id/6424046-L.jpg', 4);

INSERT INTO publishers (name, location, author_id, book_id)
VALUES
  ('Chilton Books', 'Boston, Massachusetts', 1, 1),
  ('Shueisha', 'Tokyo, Japan', 2, 2),
  ('J. B. Lippincott & Co.', 'Philadelphia, Pennsylvania', 3, 3),
  ('Allen & Unwin', 'Sydney, Australia', 4, 4),
  ('Bantam Spectra', 'New York City, New York', 5, 5),
  ('Charles Scribner''s Sons', 'New York City, New York', 6, 6),
  ('Secker & Warburg', 'London, England', 7, 7),
  -- TODO: add 'publishing_house' with name so we can link to id instead of 
  -- repeating values. Could do the same with 'publishing_location'.
  ('Simon & Schuster', 'Manhattan, New York City', 8, 8),
  ('Simon & Schuster', 'Manhattan, New York City', 12, 12),
  ('Simon & Schuster', 'Manhattan, New York City', 12, 15),
  ('Simon & Schuster', 'Manhattan, New York City', 16, 17),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 21),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 22),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 23),
  ('Gollancz', 'London, England', 9, 9),
  ('Doubleday', 'New York City, New York', 10, 10),
  ('Penguin', 'New York City, New York', 11, 11),
  ('Harper Collins', 'New York City, New York', 13, 13),
  ('Viking', 'New York City, New York', 14, 14),
  ('Warner Books', 'New York City, New York', 15, 16),
  ('Grand Central Publishing', 'New York City, New York', 12, 18),
  ('Hodder & Stoughton', 'London, England', 17, 19),
  ('Houghton Mifflin Harcourt', 'Boston, Massachusetts', 18, 20),
  ('Tor', 'New York City: New York', 19, 24),
  ('Tor', 'New York City: New York', 19, 25);


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