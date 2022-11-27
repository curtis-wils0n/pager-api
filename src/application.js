const fs = require("fs");
const path = require("path");

const express = require("express");
const bodyparser = require("body-parser");
const helmet = require("helmet");
const cors = require("cors");

const app = express();

const db = require("./db");

const books = require('./routes/books');
const authors = require('./routes/authors');
const publishers = require('./routes/publishers');
const genres = require('./routes/genres');
const users = require('./routes/users');
const shelves = require('./routes/shelves');
const lists = require('./routes/lists');
const on_list = require('./routes/on_list');
const reviews = require('./routes/reviews');

function read(file) {
  return new Promise((resolve, reject) => {
    fs.readFile(
      file,
      {
        encoding: "utf-8"
      },
      (error, data) => {
        if (error) return reject(error);
        resolve(data);
      }
    );
  });
}

module.exports = function application(
  ENV
) {
  app.use(cors());
  app.use(helmet());
  app.use(bodyparser.json());
  
  app.use('/api', books(db));
  app.use('/api', authors(db));
  app.use('/api', publishers(db));
  app.use('/api', genres(db));
  app.use('/api', users(db));
  app.use('/api', shelves(db));
  app.use('/api', lists(db));
  app.use('/api', on_list(db));
  app.use('/api', reviews(db));

  if (ENV === "development" || ENV === "test") {
    Promise.all([
      read(path.resolve(__dirname, `db/schema/create.sql`)),
      read(path.resolve(__dirname, `db/schema/${ENV}.sql`))
    ])
      .then(([create, seed]) => {
        app.get("/api/debug/reset", (request, response) => {
          db.query(create)
            .then(() => db.query(seed))
            .then(() => {
              console.log("Database Reset");
              response.status(200).send("Database Reset");
            });
        });
      })
      .catch(error => {
        console.log(`Error setting up the reset route: ${error}`);
      });
  }

  app.close = function() {
    return db.end();
  };

  return app;
};