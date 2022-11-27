const router = require("express").Router();

module.exports = db => {
  router.get("/publishers", (request, response) => {
    db.query(`SELECT * FROM publishers`).then(({ rows: publishers }) => {
      response.json(
        publishers.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};