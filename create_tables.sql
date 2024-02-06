-- Fishes Table
CREATE TABLE fishes (
    id INT PRIMARY KEY,
    weights VARCHAR(3)
);

-- Customers Table
CREATE TABLE customers (
    id INT PRIMARY KEY,
    ages INT,
    genders VARCHAR(1)
);

-- Transactions Table
CREATE TABLE transactions (
    id INT PRIMARY KEY,
    cid INT,
    fid INT,
    FOREIGN KEY (cid) REFERENCES customers(id),
    FOREIGN KEY (fid) REFERENCES fishes(id)
);