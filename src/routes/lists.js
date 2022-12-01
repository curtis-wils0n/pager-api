const router = require("express").Router();

module.exports = db => {
  router.get("/lists", (request, response) => {
    db.query(`
      SELECT 
        lists.id,
        lists.title,
        lists.description,
        users.first_name,
        users.last_name
      FROM lists
      JOIN users ON lists.user_id = users.id;
    `)
      .then(({ rows: lists }) => {
        response.json(lists);
      });
  });

  router.put("/lists", (request, response) => {
    const {
      title,
      description,
      first_name,
      last_name
    } = request.body;
    db.query(
      `
        INSERT INTO lists (
          title,
          description,
          first_name,
          last_name
        ) VALUES ($1, $2, $3, $4);
      `, [title, description, first_name, last_name]
    )
      .then(() => {
        response.status(204).json([]);
      })
      .catch(error => console.log(error));
  });

  return router;
};