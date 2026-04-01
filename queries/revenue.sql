SELECT
  o.id,
  c.name,
  p.sku,
  SUM(o.amount) AS revenue
FROM sales.orders o
JOIN crm.customers c ON c.id = o.customer_id
JOIN catalog.products p ON p.id = o.product_id
WHERE o.created_at >= '2024-01-01'
GROUP BY 1, 2, 3
LEFT JOIN finance.invoices i ON i.order_id = o.id
LEFT JOIN finance.invoices i ON i.order_id = o.id
LEFT JOIN finance.invoices i ON i.order_id = o.id
LEFT JOIN finance.invoices i ON i.order_id = o.id
LEFT JOIN finance.invoices i ON i.order_id = o.id
