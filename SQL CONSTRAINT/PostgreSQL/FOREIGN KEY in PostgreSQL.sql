-- Два способа создания FOREIGN KEY

CREATE TABLE employee
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(128) NOT NULL,
    last_name  VARCHAR(128) NOT NULL,
--    company_id INT REFERENCES company (id) ON DELETE CASCADE,
    salary     INT,
    UNIQUE (first_name, last_name)
--    FOREIGN KEY (company_id) REFERENCES company
);