const router = require("express").Router();

module.exports = db => {
  router.get("/authors", (request, response) => {
    db.query(`SELECT * FROM authors`).then(({ rows: authors }) => {
      response.json(
        authors.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};