const router = require("express").Router();

module.exports = db => {
  router.get("/shelves", (request, response) => {
    db.query(`SELECT * FROM shelves`).then(({ rows: shelves }) => {
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