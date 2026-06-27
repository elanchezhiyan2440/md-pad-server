-- USERS
CREATE TABLE users (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR(25) UNIQUE NOT NULL,
    "fullname" VARCHAR(50) NOT NULL,
    "isApproved" BOOLEAN DEFAULT FALSE,
    "isAdmin" BOOLEAN DEFAULT FALSE,
    "password_hash" TEXT NOT NULL
);

-- POSTS
CREATE TABLE posts (
    "id" SERIAL PRIMARY KEY,
    "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "title" TEXT NOT NULL UNIQUE,
    "content" TEXT NOT NULL,
    "author_id" INT NOT NULL,
    "isApproved" BOOLEAN DEFAULT FALSE,
    FOREIGN KEY ("author_id") REFERENCES users("id")
);

-- comments
CREATE TABLE comments(
    "user_id" INT NOT NULL,
    "post_id" INT NOT NULL,
    "title" TEXT NOT NULL,
    "body" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES users("id"),
    FOREIGN KEY("post_id") REFERENCES posts("id")
);