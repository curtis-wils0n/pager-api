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
    `).then(({ rows: books }) => {
      response.json(
        books.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};