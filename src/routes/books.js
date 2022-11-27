const router = require("express").Router();

module.exports = db => {
  router.get("/books", (request, response) => {
    db.query(`
      SELECT 
        publishers.id,
        publishers.name AS publisher_name,
        publishers.location,
        publishers.author_id,
        publishers.book_id,
        books.*,
        authors.id,
        authors.name AS author_name
      FROM publishers
      JOIN authors ON publishers.author_id = authors.id
      JOIN books ON publishers.book_id = books.id;
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