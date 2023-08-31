CREATE TABLE Family (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    family_id INT,
    FOREIGN KEY (family_id) REFERENCES Family(id)
);

INSERT INTO Family (name) VALUES ('Smith');
INSERT INTO Person (name, surname, family_id)
VALUES ('John', 'Smith', (SELECT id FROM Family WHERE name = 'Smith'));
