# 📌 Retail Sales Data Analysis

# Step 1: Create Realistic Dataset
product <- c("Laptop", "Mobile", "Tablet", "Headphones", "Charger")
price <- c(50000, 20000, 15000, 2000, 500)
quantity <- c(5, 10, 7, 15, 25)

# Step 2: Create Data Frame (like database table)
sales <- data.frame(product, price, quantity)

# Step 3: Add Total Revenue Column
sales$revenue <- sales$price * sales$quantity

# Step 4: Display Data
print("Sales Data:")
print(sales)

# Step 5: Business Insights

# Total Revenue
print("Total Revenue:")
print(sum(sales$revenue))

# Average Price
print("Average Price:")
print(mean(sales$price))

# Best Selling Product (max quantity)
best_product <- sales[sales$quantity == max(sales$quantity), ]
print("Best Selling Product:")
print(best_product)

# Step 6: Filter High Revenue Products
high_revenue <- sales[sales$revenue > 20000, ]
print("High Revenue Products:")
print(high_revenue)

# Step 7: Categorize Products
sales$category <- ifelse(sales$price > 20000, "Premium",
                  ifelse(sales$price > 5000, "Mid-Range", "Budget"))

print("Updated Sales Data:")
print(sales)

# Step 8: Summary (like dashboard data)
summary_list <- list(
  total_products = length(product),
  total_revenue = sum(sales$revenue),
  avg_price = mean(price)
)

print("Summary:")
print(summary_list)