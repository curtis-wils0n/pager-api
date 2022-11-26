INSERT INTO genres (name)
VALUES
  ('Science Fiction'),
  ('Action'),
  ('Southern Gothic Fiction'),
  ('Fantasy Fiction'),
  ('Fiction');

INSERT INTO publishers (name, location)
VALUES
  ('Chilton Books', 'Boston, Massachusetts'),
  ('Shueisha', 'Tokyo, Japan'),
  ('J. B. Lippincott & Co.', 'Philadelphia, Pennsylvania'),
  ('Allen & Unwin', 'Sydney, Australia'),
  ('Bantam Spectra', 'New York City, New York'),
  ('Charles Scribner''s Sons', 'New York City, New York'),
  ('Secker & Warburg', 'London, England'),
  ('Simon & Schuster', 'Manhattan, New York City'),
  ('Gollancz', 'London, England'),
  ('Doubleday', 'New York City, New York');

INSERT INTO authors (name, publisher_id)
VALUES
  ('Frank Herbert', 1),
  ('Yukito Kishiro', 2),
  ('Harper Lee', 3),
  ('J.R.R. Tolkien', 4),
  ('George R. R. Martin', 5),
  ('F. Scott Fitzgerald', 6),
  ('George Orwell', 7),
  ('Gene Wolfe', 8),
  ('Alastair Reynolds', 9),
  ('Dan Simmons', 10);

INSERT INTO books (title, year, cover_art_url, author_id, publisher_id, genre_id)
VALUES 
  ('Dune', 1965, 'https://i0.wp.com/www.tor.com/wp-content/uploads/2019/07/Dune-cover-1.jpg?type=vertical&ssl=1', 1, 1, 1),
  ('Alita: Battle Angel', 1997, 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/ea319276482673.5c6ef1a84349a.jpeg', 2, 2, 2),
  ('To Kill a Mockingbird', 1960, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/1200px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg', 3, 3, 3),
  ('The Lord of the Rings', 1954, 'https://upload.wikimedia.org/wikipedia/en/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif', 4, 4, 4),
  ('A Game of Thrones', 1996, 'http://www.georgerrmartin.com/wp-content/uploads/2013/03/GOTMTI2.jpg', 5, 5, 4),
  ('The Great Gatsby', 1925, 'https://149352626.v2.pressablecdn.com/wp-content/uploads/2018/02/CK-3-684x1024.jpg', 6, 6, 5),
  ('1984', 1949, 'https://i0.wp.com/www.printmag.com/wp-content/uploads/2017/01/2a34d8_a6741e88335241308890543d203ad89dmv2.jpg?resize=500%2C815&ssl=1', 7, 7, 1),
  ('Shadow of the Torturer', 1980, 'https://m.media-amazon.com/images/I/A19BG5wLHDL.jpg', 8, 8, 1),
  ('House of Suns', 2008, 'https://upload.wikimedia.org/wikipedia/en/0/08/House_of_Suns_%28Amazon%29.jpg', 9, 9, 1),
  ('Hyperion', 1989, 'https://upload.wikimedia.org/wikipedia/en/7/73/Hyperion_cover.jpg', 10, 10, 1);
