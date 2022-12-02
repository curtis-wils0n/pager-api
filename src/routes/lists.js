const router = require("express").Router();

module.exports = db => {
  router.get("/lists", (request, response) => {
    db.query(`
     SELECT 
      lists.id, 
      lists.title,
      books.title,
      books.cover_art_url
     FROM lists
     LEFT OUTER JOIN on_list ON lists.id = on_list.list_id
     LEFT OUTER JOIN books ON on_list.book_id = books.id
     WHERE lists.user_id = $1;
    `, [1])
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