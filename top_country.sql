SELECT BillingCountry, SUM(Total) from Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC 
LIMIT 1
