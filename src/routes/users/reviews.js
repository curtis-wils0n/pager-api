const router = require("express").Router();

module.exports = db => {
  router.get("/reviews/:id", (request, response) => {
    db.query(`
      SELECT
        reviews.id,
        reviews.stars,
        reviews.recommended,
        reviews.description,
        users.first_name,
        users.last_name,
        publishers.name as publisher_name,
        publishers.location,
        authors.name AS author_name,
        books.title,
        books.year,
        books.cover_art_url,
        books.genre_id
      FROM reviews
      JOIN users ON reviews.user_id = users.id
      JOIN books ON reviews.book_id = books.id
      JOIN publishers ON publishers.book_id = books.id
      JOIN authors ON publishers.author_id = authors.id
      WHERE users.id = $1;
    `, [request.params.id]
    ).then(({ rows: reviews }) => {
      response.json(
        reviews.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};