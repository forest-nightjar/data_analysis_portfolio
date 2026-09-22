# Excel Cafe Sales Dashboard

![preview](/cafe_sales_dashboard_preview.png)

## Insights
* Despite middling popularity, salad generates the most revenue due to having the highest unit price. Consider focusing advertising efforts on salads to increase sales volume.
* Coffee is very popular but isn't very profitable. A slight price increase could increase revenue but the impact on customer demand and overall profitability should be closely monitored.
* Cookies and tea are the least popular and generate the least revenue. This indicates that the products may be unprofitable, but more data on expenses is needed to confirm.
* Cash accounts for a third of known payment methods, so it is not advised to transition to a cashless model like many stores are doing nowadays.
* Takeaway accounts for half of known order methods. A conveniently located pickup shelf or counter could help streamline takeaway orders and improve traffic flow within the store.
* February had the least sales out of the year. Utilizing discounts during this time may help attract more customers.
  * Note that February has fewer days than the other months, which could contribute to the lower number of sales.

## Issues
The large number of missing, error, or unknown values limits the reliability of these conclusions. To preserve as much data as possible, rows with blank values were not removed. Instead, they are filtered out via slicers in the dashboard by default so users can see the impact of blank values on the overall data if desired.

Another issue I encountered was the limited functionality on the web version of Excel. It does not allow copy-pasting pivot tables and slicers from other sheets, so the pivot tables and slicers were created below the dashboard on the same sheet as a workaround.

## Workflow
* Data cleaning
  * Validate that transaction ids are unique
  * Standardize errors and unknown values by converting to blank cells which can be filtered out later
* Data processing
  * Separate menu items into food and drink categories using IF statements
  * Get unit price from menu with XLOOKUP
  * Extract month in separate column using TEXT
  * Calculate total spent by multiplying quantity and unit price
* Data analysis
  * Make pivot tables and charts
  * Create slicers to filter dashboard

## Project Info
Dataset is from https://www.kaggle.com/datasets/ahmedmohamed2003/cafe-sales-dirty-data-for-cleaning-training
* I split the transactions and menu items into different sheets to make it more realistic and demonstrate joins.



