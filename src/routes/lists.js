const router = require("express").Router();

module.exports = db => {
  router.get("/lists", (request, response) => {
    db.query(`
     SELECT 
     lists.id, 
     lists.title,
     books.title,
     books.cover_art_url,
     books.id AS book_id
     FROM lists
     LEFT OUTER JOIN on_list ON lists.id = on_list.list_id
     LEFT OUTER JOIN books ON on_list.book_id = books.id
     WHERE lists.user_id = $1
    `, [1])
      .then(({ rows: lists }) => {
        response.json(lists);
      });
  });

  router.put("/lists", (request, response) => {
    const {
      title,
      description,
      user_id
    } = request.body;
    db.query(
      `
        INSERT INTO lists (
          title,
          description,
          user_id
        ) VALUES ($1, $2, $3);
      `, [title, description, user_id]
    )
      .then(() => {
        response.status(204).json([]);
      })
      .catch(error => console.log(error));
  });

  return router;
};