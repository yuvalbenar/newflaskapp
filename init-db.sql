-- init-db.sql
CREATE DATABASE IF NOT EXISTS flaskdb;
USE flaskdb;
CREATE TABLE IF NOT EXISTS images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255) NOT NULL
);
INSERT INTO images (url) VALUES
('https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExOXpyZDlzODRsejNicHc4dDVvNXRscjdybDNldXc1eWhqejM3cjY4ciZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/QvBoMEcQ7DQXK/giphy.gif'),

('https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcjZicG53am5jdmNrbTY1YXZ1a3B2NXE5cnU3bWljamQ0M2x0MmI4eiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/yXBqba0Zx8S4/giphy.gif'),
('https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExbnV4MThhYXlxa2RyeGx5Mng4cXc5NDRwa3J6Y2VtN2ttZTE5ZjZrdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/y4PQTcLTYJwOI/giphy.gif')
('https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcXIyNnR2OXBiZTBzdzVyNmx2MWtheWU5djFucWx4OXU3bTJ2d3F4MyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3ohs7XRrW0HAoNqzUA/giphy.gif')