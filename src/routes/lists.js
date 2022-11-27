const router = require("express").Router();

module.exports = db => {
  router.get("/lists", (request, response) => {
    db.query(`SELECT * FROM lists`).then(({ rows: lists }) => {
      response.json(
        lists.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};