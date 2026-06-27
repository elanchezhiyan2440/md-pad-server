-- INSERT DUMMY USERS
INSERT INTO users ("username", "fullname", "isApproved", "isAdmin", "password_hash") VALUES
('john_doe', 'John Doe', TRUE, TRUE, '$2b$10$UnR1NzI0NTY3ODkwMTIzNHXV.u1y9mE2mS8Wb1K7oXfC9Vz5bK3mG'),
('jane_smith', 'Jane Smith', TRUE, FALSE, '$2b$10$YTIzNDU2Nzg5MDEyMzQ1NupR.fH6Nl8X9vM3oP4qR5sT6uV7wX8xY'),
('bob_jones', 'Bob Jones', FALSE, FALSE, '$2b$10$MTIzNDU2Nzg5MDEyMzQ1NuuP.gG5mL7wX8vN2oO3pQ4rS5tU6vW7x');

-- INSERT DUMMY POSTS
INSERT INTO posts ("title", "content", "author_id", "isApproved") VALUES
('Getting Started with PostgreSQL', 'PostgreSQL is a powerful, open-source object-relational database system...', 1, TRUE),
('Mastering Express.js Routers', 'When building production Node.js applications, structuring your routes is key...', 2, TRUE),
('A Deep Dive into Row Level Security', 'Security is paramount when dealing with multi-tenant database architectures...', 1, FALSE);

-- INSERT DUMMY COMMENTS
INSERT INTO comments ("user_id", "post_id", "title", "body") VALUES
(2, 1, 'Great Guide!', 'This breakdown of Postgres constraints made things a lot clearer.'),
(3, 1, 'Question on Syntax', 'Does the ordering of NOT NULL matter for every database engine?'),
(1, 2, 'Spot on', 'The router export mismatch error is exactly what tripped me up yesterday.');