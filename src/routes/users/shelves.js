const router = require("express").Router();

module.exports = db => {
  router.get("/shelves/:id", (request, response) => {
    db.query(`
      SELECT
        shelves.id,
        books.title,
        authors.name,
        books.year,
        books.cover_art_url,
        publishers.name AS publisher_name,
        publishers.location,
        genres.name AS genre
      FROM shelves
      JOIN books ON shelves.book_id = books.id
      JOIN publishers ON publishers.book_id = books.id
      JOIN authors ON publishers.author_id = authors.id
      JOIN genres ON books.genre_id = genres.id
      WHERE user_id = $1
    `, [request.params.id]
    ).then(({ rows: shelves }) => {
      response.json(
        shelves.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};