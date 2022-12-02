const router = require("express").Router();

module.exports = db => {
  router.get("/lists/:id", (request, response) => {
    db.query(`
    SELECT 
    lists.id, 
    lists.title,
    books.title,
    books.cover_art_url
    FROM lists
    LEFT OUTER JOIN on_list ON lists.id = on_list.list_id
    LEFT OUTER JOIN books ON on_list.book_id = books.id
    WHERE on_list.list_id = $1
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