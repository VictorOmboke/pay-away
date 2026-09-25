-- Create sample data for database.
-- Sample data for Users table.
INSERT INTO
    USERS (firstName, lastName, email, password_hash)
VALUES
    (
        'Peter',
        'Parker',
        'spidey@nyc.org',
        'password hash'
    ),
    (
        'Naruto',
        'Uzumaki',
        'hokage7@hiddenleaf.org',
        'password hash'
    ),
    (
        'Cristiano',
        'Ronaldo',
        'goat@portugal.org',
        'password hash'
    );

-- Sample data for Transactions table.
INSERT INTO
    Transactions (user_id, category, type, amount)
VALUES
    (1, 'Daily Bugle Pay', 'Income', 300.00),
    (1, 'Rent', 'Expense', 1625.00),
    (1, 'Groceries', 'Expense', 220.00),
    (2, 'Hokage Salary', 'Income', 1000.00),
    (2, 'Ramen', 'Expense', 10.00),
    (
        2,
        'Ichiraku Ramen Investment',
        'Investments',
        300.00
    ),
    (3, 'Al Nassar Pay', 'Income', 20000000.00),
    (
        3,
        'Luxury Home Accommodations',
        'Expense',
        300000.00
    ),
    (3, 'Savings', 'Savings', 5000000.00);

-- Sample data for Layaway_items table.
INSERT INTO
    Layaway_items (user_id, url, name, price, image, amount_saved)
VALUES
    (
        1,
        'https://www.edmunds.com/volkswagen/jetta/2012/vin/3VWDP7AJ2CM300800/?radius=25',
        '2012 Volkswagen Jetta SE PZEV',
        2937.00,
        'https://www.edmunds.com/assets/m2/for-sale/40-3VWDP7AJ2CM300800/img-1-960x.jpg',
        20.00
    ),
    (
        2,
        'https://www.bizbuysell.com/business-opportunity/turnkey-sushi-and-ramen-restaurant-in-vancouver-wa/2549225/',
        'Turnkey Sushi & Ramen Restaurant in Vancouver, WA',
        178000.00,
        'https://images.bizbuysell.com/shared/listings/254/2549225/f17c0e6c-a976-4f49-ab09-947bfec511cf-W768.webp',
        10000.00
    ),
    (
        3,
        'https://yachtr.com/130-riva-2025-2846536/',
        '2025 Riva 130\'',
        22950000.00,
        'https://cdn.yachtbroker.org/images/2846536_28cfd7fc.jpg.webp',
        7650000.00
    );

-- Sample data for Installments table.
INSERT INTO
    Installments (
        layaway_item_id,
        total_installments,
        amount_due,
        payment_amount
    )
VALUES
    (1, 147, 20.00, 20.00),
    (2, 356, 500, 500),
    (3, 2, 7650000, 7650000);