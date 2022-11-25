const router = require("express").Router();

module.exports = db => {
  router.get("/books", (request, response) => {
    db.query(`SELECT * FROM books`).then(({ rows: books }) => {
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