SELECT * 
FROM orders


--------    

SELECT occurred_at, account_id, channel
from web_events
limit 15

--------

SELECT id, account_id, total
FROM orders
ORDER BY account_id, total DESC

--- 

SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5

----

SELECT id, account_id, 
poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
FROM orders
LIMIT 10;

---

SELECT name
FROM accounts
WHERE name LIKE 'C%';

---

SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

---

SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

---

SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

---

SELECT id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

---

SELECT orders.*, accounts.*
FROM accounts
JOIN orders
ON accounts.id = orders.account_id;


---

SELECT o.*, a.*
FROM orders o
JOIN accounts a
ON o.account_id = a.id

---

SELECT a.primary_poc, w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE a.name = 'Walmart';

---

SELECT r.name region, a.name account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
WHERE o.standard_qty > 100;