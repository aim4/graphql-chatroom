CREATE TABLE IF NOT EXISTS "user" (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS "message" (
    id SERIAL PRIMARY KEY NOT NULL,
    "createdAt" TIMESTAMP NOT NULL DEFAULT now(),
    content TEXT,
    "from" VARCHAR(255) NOT NULL,
    "authorId" INTEGER NOT NULL,
    FOREIGN KEY ("authorId") REFERENCES "user"(id)
);
