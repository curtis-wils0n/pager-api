const router = require("express").Router();

module.exports = db => {
  router.get("/lists/:id", (request, response) => {
    db.query(`
      SELECT 
        lists.id,
        lists.title,
        lists.description,
        users.first_name,
        users.last_name
      FROM lists
      JOIN users ON lists.user_id = users.id
      WHERE users.id = $1
    `, [request.params.id]
    ).then(({ rows: lists }) => {
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