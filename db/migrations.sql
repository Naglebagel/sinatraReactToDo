CREATE DATABASE todo;

\c todo

CREATE TABLE tasks (
	id SERIAL PRIMARY KEY,
	todo VARCHAR(500),
	assignee VARCHAR(200)
);