-- +goose Up
-- +goose StatementBegin
CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO posts (title, content, created_at) VALUES
('First Post', 'This is the content of the first post.', '2024-08-17 10:00:00'),
('Second Post', 'This is the content of the second post.', '2024-08-17 10:05:00'),
('Third Post', 'This is the content of the third post.', '2024-08-17 10:10:00'),
('Fourth Post', 'This is the content of the fourth post.', '2024-08-17 10:15:00'),
('Fifth Post', 'This is the content of the fifth post.', '2024-08-17 10:20:00'),
('Sixth Post', 'This is the content of the sixth post.', '2024-08-17 10:25:00'),
('Seventh Post', 'This is the content of the seventh post.', '2024-08-17 10:30:00'),
('Eighth Post', 'This is the content of the eighth post.', '2024-08-17 10:35:00'),
('Ninth Post', 'This is the content of the ninth post.', '2024-08-17 10:40:00'),
('Tenth Post', 'This is the content of the tenth post.', '2024-08-17 10:45:00');
     
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE posts;
-- +goose StatementEnd
