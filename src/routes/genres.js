const router = require("express").Router();

module.exports = db => {
  router.get("/genres", (request, response) => {
    db.query(`SELECT * FROM genres`).then(({ rows: genres }) => {
      response.json(
        genres.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};