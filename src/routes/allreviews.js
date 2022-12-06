const router = require("express").Router();

module.exports = db => {
  router.get("/allreviews", (request, response) => {
    db.query(`
      SELECT
        reviews.id,
        reviews.stars,
        reviews.recommended,
        reviews.description,
        users.first_name,
        users.last_name,
        books.title,
        books.id AS book_id,
        authors.name AS author_name,
        books.year,
        publishers.name as publisher_name,
        publishers.location,
        books.cover_art_url,
        genres.name AS genre
      FROM reviews
      JOIN users ON reviews.user_id = users.id
      JOIN books ON reviews.book_id = books.id
      JOIN publishers ON publishers.book_id = books.id
      JOIN authors ON publishers.author_id = authors.id
      JOIN genres ON books.genre_id = genres.id
    `)
      .then(({ rows: reviews }) => {
        response.json(reviews);
      });
  });

  return router;
};