# United-State-Bank-Loan

### Project Overview
The dashboard provides a comprehensive analysis of the bank’s loan applications, funding, repayments, and key performance metrics. It highlights monthly trends (MTD) and month-over-month (MoM) growth rates, offering actionable insights for strategic decision-making.

### Data Sources 
The primary source of data used here is a financial loan data.csv and this is an open source data that can be be freely downloaded from (https://www.kaggle.com/) 

### Tools Used
- Microsoft Excel 
- SQL
- Power Bi

## Table of Contents 
[Project Summary](#project-summary)

[SQL Queries Overview](#SQL-QUEIRES OVERVIEW)

[Insights and Recommendations](#Insights-and Recommendations)

  ### Project Summary
- Loan Applications: The bank has processed a total of 38,580 loan applications.
Good loans account for 86% of the total applications, translating to 33,200 applications that meet the bank's credit criteria.
Bad loans represent 13.8% of total applications, amounting to 5,000 applications.
Funded Loans

- The total amount funded by the bank is $435.8 million.
For the month-to-date (MTD) period, the funded amount is $54.0 million, reflecting continued loan issuance activity.
The month-over-month (MoM) growth in funding is 13.0%, indicating a positive trend in loan disbursement.
Received Loan Payments

- The bank has received a total repayment amount of $473.1 million from borrowers.
MTD repayments amount to $58.1 million, showing strong collection efforts.
MoM repayment growth is 15.8%, highlighting improved loan repayment rates.

- Interest Rates and Debt-to-Income (DTI)
The average interest rate across all loans is 12%, with a slight increase to 12.4% MTD.
The average debt-to-income ratio (DTI) is 13.3%, with a marginal increase to 13.7% MTD.
MoM growth is 3.5% for interest rates and 2.7% for DTI, indicating stable but rising trends.
Good Loans Performance

- Good loans contribute significantly to the bank's portfolio:
$370 million has been funded for good loans.
$436 million has been received as repayments from good loan customers.
Bad Loans Performance

- Bad loans account for a smaller portion of the portfolio:
$66 million has been funded for bad loans.
$37 million has been received in repayments from bad loan customers.
Loan Growth Trends

- The number of loan applications increased by 6.9% MoM, reflecting growing demand.
Loan funding and repayment activities have also shown steady growth, with 13.0% MoM growth in funded amounts and 15.8% MoM growth in received payments.
These key metrics illustrate the bank's solid performance in loan issuance, repayment collection, and overall financial health.


### Visuals
![Visuals](https://github.com/user-attachments/assets/1d7c37c5-2c29-40ed-9349-214750cb72b7)

### SQL Queries Overview
```SQL
SELECT 
      (Count(Case
	   when loan_status = 'Fully Paid' or
	             Loan_status = 'Current' then id
	 end) *100)/
	 count(id) as Good_loan_Percentage
from Bank_loan;
```
### Insights and Recommendations
1) Good Loan Segment Dominance:
 - The bank has a high percentage of good loan applications (86%), with significant contributions to funded ($370m) and received ($436m) amounts. This indicates strong creditworthiness among the majority of applicants.
 
- Recommendation: Continue prioritizing strategies that target and retain good loan applicants to maintain high-quality loan performance.
Bad Loan Applications:

2) Bad loans represent 13.8% of total applications and contribute $66m funded and $37m received, indicating higher risk with lower returns.
- Recommendation: Strengthen credit screening processes to reduce bad loan applications and focus on recovering outstanding bad loans.
Strong Monthly Trends:

3) Month-over-month growth is promising, with a 13.0% increase in funded loans and a 15.8% rise in received amounts. This shows effective loan processing and repayment mechanisms.
- Recommendation: Scale this momentum by leveraging targeted marketing and outreach programs to onboard new borrowers.
Interest Rate and DTI Improvements:

4) The average interest rate (12%) and average DTI (13.3%) align with industry standards, with positive monthly growth trends.
- Recommendation: Introduce products with flexible interest rates to attract more customers while monitoring DTI to mitigate potential default risks.
Growth in Loan Applications:

5) The bank recorded a 6.9% MoM increase in loan applications, reflecting growing customer interest and market penetration.
- Recommendation: Expand marketing campaigns and optimize the loan application process to sustain this growth.

- Conclusion
The dashboard highlights the bank’s strong performance in managing loan applications, funding, and repayments. With 86% good loans, healthy MTD, and MoM growth rates across all metrics, the bank demonstrates a robust financial position. To further improve, the bank should focus on minimizing bad loans, optimizing loan products, and scaling marketing efforts to drive long-term success.



