USE customer_behaviour;

CREATE OR REPLACE VIEW revenue_by_category AS SELECT category,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM customer
GROUP BY category;

CREATE OR REPLACE VIEW revenue_by_season AS SELECT season, SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY season;

CREATE OR REPLACE VIEW gender_summary AS SELECT gender, COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY gender;

CREATE OR REPLACE VIEW discount_summary AS SELECT discount_applied,
    COUNT(*) AS total_orders,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY discount_applied;

-- Verify all views were created 

SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';

SELECT * FROM revenue_by_category;
SELECT * FROM revenue_by_season;
SELECT * FROM gender_summary;
SELECT * FROM discount_summary;