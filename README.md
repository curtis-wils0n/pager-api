# pager-api

This is a simple development server for [Pager](https://github.com/curtis-wils0n/pager), a final project for Lighthouse Lab's full-time web development bootcamp created by [Curtis Wilson](https://github.com/curtis-wils0n) and [Emily Villett](https://github.com/MeowPup).

## Setup

Install dependencies with `npm install`.

## Creating the DB

1. Create a psql user/password combination.
2. Create a database while logged in as the user with command `CREATE DATABASE [database name];` 
3. Copy the `.env.example` file into a `.env.development` file and write the relevant information into each field.

## Seeding

Run the development server with `npm start`. After doing so, either make a `GET` request to `http://localhost:8001/api/debug/reset` with `curl`, or navigate to the above link in your browser.

## Run the Server

Start the server with `npm start`.
