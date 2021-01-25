SELECT BillingCountry, COUNT(BillingCountry) from Invoice
GROUP BY BillingCountry
