CREATE TABLE IF NOT EXISTS orders (
    id VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    tax FLOAT NOT NULL,
    final_price FLOAT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO orders (id, price, tax, final_price) VALUES ('order1', 10.0, 1.5, 11.5);
INSERT INTO orders (id, price, tax, final_price) VALUES ('order2', 20.0, 2.5, 22.5);
INSERT INTO orders (id, price, tax, final_price) VALUES ('order3', 30.0, 3.5, 33.5);
