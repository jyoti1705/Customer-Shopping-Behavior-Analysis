USE customer_behaviour;

-- 1. Basic Overview 

SELECT COUNT(*) AS total_records FROM customer;
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM customer;
SELECT DISTINCT gender FROM customer;

-- 2. Gender Analysis
SELECT gender, COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY gender
ORDER BY total_customers DESC;

-- 3. Age Analysis 

SELECT ROUND(AVG(age), 2) AS avg_age FROM customer;

SELECT age, COUNT(*) AS total_customers
FROM customer
GROUP BY age
ORDER BY age;

SELECT age_group, COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY age_group
ORDER BY avg_spending DESC;

-- 4. Revenue Analysis 

SELECT SUM(purchase_amount) AS total_revenue FROM customer;

SELECT category, COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM customer
GROUP BY category
ORDER BY total_revenue DESC;

SELECT season, SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY season
ORDER BY total_revenue DESC;

-- 5. Discount & Promo Analysis 

SELECT discount_applied, COUNT(*) AS total_orders,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY discount_applied;

-- 6. Subscription Analysis 

SELECT subscription_status, COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY subscription_status;

-- 7. Shipping & Payment

SELECT shipping_type, COUNT(*) AS total_orders,
    ROUND(AVG(purchase_amount), 2) AS avg_spending
FROM customer
GROUP BY shipping_type;

SELECT payment_method, COUNT(*) AS usage_count,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- 8. Customer Loyalty 
SELECT customer_id, SUM(purchase_amount) AS total_spent
FROM customer
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

SELECT 
    CASE 
        WHEN previous_purchases > 5 THEN 'Loyal Customer'
        ELSE 'Regular Customer'
    END AS customer_type,
    COUNT(*) AS total_customers
FROM customer
GROUP BY customer_type;