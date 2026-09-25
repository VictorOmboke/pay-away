-- Create database schema.
-- Users table.
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    user_id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50),
    email VARCHAR(255) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id)
);

-- Transactions table.
DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions (
    transaction_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    category VARCHAR(255) NOT NULL,
    type ENUM('Income', 'Expense', 'Savings', 'Investments') NOT NULL,
    amount DECIMAL(13, 2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (transaction_id),
    CONSTRAINT transactions_fk_user_id FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE
);

-- Layaway items table.
DROP TABLE IF EXISTS Layaway_items;

CREATE TABLE Layaway_items (
    layaway_item_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    url VARCHAR(2048) NOT NULL,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(13, 2) NOT NULL,
    image VARCHAR(2048) NOT NULL,
    amount_saved DECIMAL(13, 2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (layaway_item_id),
    CONSTRAINT layaway_items_fk_user_id FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE
);

-- Installments table.
DROP TABLE IF EXISTS Installments;

CREATE TABLE Installments (
    installment_id INT NOT NULL AUTO_INCREMENT,
    layaway_item_id INT NOT NULL,
    total_installments INT NOT NULL,
    amount_due DECIMAL(13, 2) NOT NULL,
    payment_amount DECIMAL(13, 2),
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (installment_id),
    CONSTRAINT installments_fk_layaway_items_id FOREIGN KEY (layaway_item_id) REFERENCES Layaway_items (layaway_item_id) ON DELETE CASCADE
);
