const router = require("express").Router();

module.exports = db => {
  router.get("/reviews", (request, response) => {
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
      WHERE users.id = $1
    `, [1])
      .then(({ rows: reviews }) => {
        response.json(reviews);
      });
  });

  router.put("/reviews", (request, response) => {
    const {
      stars,
      recommended,
      description,
      user_id,
      book_id
    } = request.body;
    db.query(
      `
        INSERT INTO reviews (
          stars,
          recommended,
          description,
          user_id,
          book_id
        ) VALUES ($1, $2, $3, $4, $5);
      `, [stars, recommended, description, user_id, book_id]
    )
      .then(() => {
        response.status(204).json([]);
      })
      .catch(error => console.log(error));
  });

  return router;
};