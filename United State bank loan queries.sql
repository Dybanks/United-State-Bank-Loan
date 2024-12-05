Select *
from Bank_Loan

select count(id) as Total_Loan_Applications
from Bank_Loan;

select count(id) as MTD_Total_Loan_Applications
from Bank_Loan
where month(Issue_date) = 12 and Year(issue_date) = 2021;

SELECT SUM(loan_amount) as MTD_Total_loan_funded
from Bank_loan
where month(Issue_date) = 12 and Year(issue_date) = 2021;

SELECT SUM(loan_amount) as PMTD_Total_loan_funded
from Bank_loan
where month(Issue_date) = 11 and Year(issue_date) = 2021;

SELECT SUM(total_payment) as MTD_Total_amount_received
from Bank_loan
where month(Issue_date) = 12 and Year(issue_date) = 2021;

SELECT SUM(total_payment) as PMTD_Total_amount_received
from Bank_loan
where month(Issue_date) = 11 and Year(issue_date) = 2021;

SELECT round(AVG(int_rate),4) *100 AS Interest_Rate
from Bank_loan

SELECT round(AVG(int_rate),4) *100 AS MTD_Interest_Rate
from Bank_loan
where  month(Issue_date) = 12 and Year(issue_date) = 2021;

SELECT round(AVG(int_rate),4) *100 AS PMTD_Interest_Rate
from Bank_loan
where  month(Issue_date) = 11 and Year(issue_date) = 2021;

SELECT round(AVG(dti),4) *100 AS MTD_dti
from Bank_loan
where  month(Issue_date) = 12 and Year(issue_date) = 2021;

SELECT round(AVG(dti),4) *100 AS PMTD_dti
from Bank_loan
where  month(Issue_date) = 11 and Year(issue_date) = 2021;

SELECT 
      (Count(Case
	   when loan_status = 'Fully Paid' or
	             Loan_status = 'Current' then id
	 end) *100)/
	 count(id) as Good_loan_Percentage
from Bank_loan;

SELECT count(id) as Good_loan_applications
from Bank_loan
where loan_status = 'Fully Paid' or Loan_status = 'Current';

SELECT sum(loan_amount) as Good_loan_funded
from Bank_loan
where loan_status = 'Fully Paid' or Loan_status = 'Current';

SELECT sum(total_payment) as Good_loan_reecieved
from Bank_loan
where loan_status = 'Fully Paid' or Loan_status = 'Current';

SELECT 
      (Count(Case
	   when loan_status = 'Charged off' then id
	 end) *100)/
	 count(id) as Bad_loan_Percentage
from Bank_loan;

SELECT count(id) as Bad_loan_applications
from Bank_loan
where loan_status = 'Charged off'


SELECT sum(loan_amount) as Bad_loan_funded
from Bank_loan
where loan_status = 'Charged off' 

SELECT sum(total_payment) as Bad_loan_reecieved
from Bank_loan
where loan_status = 'Charged off';

Select loan_status, Count(id) as Loan_count, sum(total_payment) as Total_amount_received, AVG(int_rate) *100 AS Interest_Rate, AVG(dti) *100 AS Dti
FROM Bank_Loan
group by loan_status
order by Loan_count,Total_amount_received,Interest_Rate,Dti desc;

Select loan_status, Count(id) as Loan_count, sum(total_payment) as MTD_Total_amount_received, AVG(int_rate) *100 AS MTD_Interest_Rate, AVG(dti) *100 AS MTD_Dti
FROM Bank_Loan
WHERE month(issue_date) = 12
group by loan_status
order by Loan_count,MTD_Total_amount_received,MTD_Interest_Rate,MTD_Dti desc;

select month(issue_date) as month_number, datename(month,issue_date), count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
group by month(issue_date),datename(month,issue_date)
order by month_number;

select term, count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
group by term
order by Total_loan_applications desc;

select emp_length, count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
group by emp_length
order by Total_applications desc;

select purpose, count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
group by purpose
order by Total_applications desc;

select home_ownership, count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
group by home_ownership
order by Total_applications desc;

select home_ownership, count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
where grade = 'A'
group by home_ownership
order by Total_applications desc;

select home_ownership, count(id) Total_applications, sum(loan_amount) as Total_loan_applications, sum(total_payment) as Total_amount_received
from Bank_Loan
where grade = 'A' AND address_state ='CA'
group by home_ownership
order by Total_applications desc;

