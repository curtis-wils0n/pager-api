const router = require("express").Router();

module.exports = db => {
  router.get("/books", (request, response) => {
    db.query(`
      SELECT 
        books.id,
        books.title,
        authors.name AS author_name,
        books.year,
        books.cover_art_url,
        genres.name AS genre,
        publishers.name AS publisher_name,
        publishers.location
      FROM publishers
      JOIN authors ON publishers.author_id = authors.id
      JOIN books ON publishers.book_id = books.id
      JOIN genres ON books.genre_id = genres.id
      ORDER BY author_name, year, title
    `)
      .then(({ rows: books }) => {
        response.json(books);
      });
  });

  router.put("/books", (request, response) => {
    const { 
      author_name,
      genre: genre_name,
      book_title,
      book_year,
      book_cover_art_url,
      pub_name,
      pub_location
    } = request.body;
    db.query(
      `
        INSERT INTO authors (name)
        SELECT $1::text
        WHERE NOT EXISTS (
          SELECT 1 FROM authors WHERE name ILIKE $1::text
        );
      `, [author_name]
    )
      .then(() => {
        db.query(
          `
          INSERT INTO genres (name)
          SELECT $1::text
          WHERE NOT EXISTS (
            SELECT 1 FROM genres WHERE name ILIKE $1::text
          )
        `, [genre_name]
        )
      })
      .then(() => {
        db.query(
          `
          INSERT INTO books (title, year, cover_art_url, genre_id)
          SELECT 
            $1::text,
            $2::integer,
            $3::text,
            (SELECT id FROM genres WHERE name ILIKE $4)::integer 
          WHERE NOT EXISTS (
            SELECT 1 FROM books WHERE title = $1::text
          );
        `, [book_title, book_year, book_cover_art_url, genre_name]
        )
      })
      .then(() => {
        db.query(
          `
          INSERT INTO publishers (name, location, author_id, book_id)
          SELECT
            $1::text,
            $2::text,
            (SELECT id FROM authors WHERE name ILIKE $3)::integer,
            (SELECT id FROM books WHERE title ILIKE $4)::integer
          WHERE NOT EXISTS (
            SELECT 1 FROM publishers WHERE name = $1::text
          );
        `, [pub_name, pub_location, author_name, book_title]
        )
      })
      .then(() => {
        response.status(204).json([]);
      })
      .catch(error => console.log(error));
  });

  return router;
};