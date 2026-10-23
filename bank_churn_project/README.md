# Bank Churn Analysis

<img width="1313" height="737" alt="image" src="https://github.com/user-attachments/assets/3e27b32d-9c67-44a9-9208-d410384852f2" />

## Insights
Around one-fifth of the bank’s customers had churned, highlighting a significant customer retention issue. Here are some key findings and recommendations:
* Complaints were the most significant indicator of churn; those who filed a complaint had a 99.51% churn rate compared with 0.05% among those who had not. Customer support services should be improved to resolve complaints and reduce customer attrition.
* Germans accounted for 50% of churners. Further investigation into regional customer behavior, service quality, product offerings, or competition within the German market is advised.
* Customers with a higher number of products were more likely to churn. This may indicate that customers are farming promotions from multiple products; the bank can investigate this behavior further and change promotional criteria to prevent abuse.
* Customers were more likely to churn within their first year, suggesting that the initial customer experience is important for long-term retention. Offering loyalty programs or improving onboarding initiatives may mitigate this issue.
* Ages 50-65 had the highest churn rate despite making up only around 10% of customer base. Further research should be conducted to address the needs of this demographic.
* Customers holding balances exceeding €200,000 had a churn rate above 50%, making this group particularly impactful from a revenue perspective. Financial advisors should try to tailor services and build relationships with these customers to strengthen retention.
* Other variables in the dataset such as card type and gender did not appear to be correlated with churn.

## Predictions

<img width="1126" height="550" alt="image" src="https://github.com/user-attachments/assets/bc71bf47-e0b6-44e3-a659-ff42db5908bc" />
<br/><br/>

I used a random forest machine learning model to find out which customers were likely to churn. Applying the model to the bank’s current customer base indicated that the vast majority of existing customers had a low predicted likelihood of churn. However, nine customers were classified as being at medium risk of churn, while two were identified as being at high risk.

The model confirmed the previous finding that complaints were the most significant churn indicator. Given the small number of customers identified as being at elevated risk, a targeted retention strategy would be appropriate. The bank should consider contacting these 11 customers individually to address outstanding complaints, resolve any service-related concerns, and improve the likelihood of retaining their business.

The model achieved an accuracy rate exceeding 99% which indicates excellent performance, but such a high result is very unusual. To reduce possible overfitting, less significant features were removed and stratified K-fold cross validation was implemented, but the model continued to produce highly accurate results. Since the dataset was sourced from [Kaggle](https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn/data), it is possible that the data is intentionally well structured for machine learning purposes and may not be reflective of real world banking data.
