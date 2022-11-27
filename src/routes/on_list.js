const router = require("express").Router();

module.exports = db => {
  router.get("/on_list", (request, response) => {
    db.query(`SELECT * FROM on_list`).then(({ rows: on_list }) => {
      response.json(
        on_list.reduce(
          (previous, current) => ({ ...previous, [current.id]: current }),
          {}
        )
      );
    });
  });

  return router;
};