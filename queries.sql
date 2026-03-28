- 1. Daily Revenue
SELECT
  date_date,
  ROUND(SUM(turnover), 2) AS daily_revenue
FROM `loyal-coyote-456809-g0.gwz_Finance.financial_Analysis`
GROUP BY date_date
ORDER BY date_date;

-- 2. Daily Orders
SELECT
  date_date,
  COUNT(DISTINCT orders_id) AS daily_orders
FROM `loyal-coyote-456809-g0.gwz_Finance.financial_Analysis`
GROUP BY date_date
ORDER BY date_date;

-- 3. Average Revenue per Order
SELECT
  date_date,
  ROUND(SUM(turnover) / COUNT(DISTINCT orders_id), 2) AS avg_revenue_per_order
FROM `loyal-coyote-456809-g0.gwz_Finance.financial_Analysis`
GROUP BY date_date
ORDER BY date_date;

-- 4. Top Revenue Days
SELECT
  date_date,
  ROUND(SUM(turnover), 2) AS daily_revenue
FROM `loyal-coyote-456809-g0.gwz_Finance.financial_Analysis`
GROUP BY date_date
ORDER BY daily_revenue DESC
LIMIT 5;

-- 5. Lowest Revenue Days
SELECT
  date_date,
  ROUND(SUM(turnover), 2) AS daily_revenue
FROM `loyal-coyote-456809-g0.gwz_Finance.financial_Analysis`
GROUP BY date_date
ORDER BY daily_revenue ASC
LIMIT 5;

-- 6. Revenue vs Orders vs Value
SELECT
  date_date,
  ROUND(SUM(turnover), 2) AS daily_revenue,
  COUNT(DISTINCT orders_id) AS daily_orders,
  ROUND(SUM(turnover) / COUNT(DISTINCT orders_id), 2) AS avg_order_value
FROM `loyal-coyote-456809-g0.gwz_Finance.financial_Analysis`
GROUP BY date_date
ORDER BY avg_order_value DESC;
