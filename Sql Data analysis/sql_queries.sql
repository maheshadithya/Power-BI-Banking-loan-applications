select * from financial_loan_full

select count(*)from financial_loan_full

select count(*)from financial_loan_full
where MONTH(issue_date) = 11

select count(*) from financial_loan_full
where loan_status = 'Fully Paid' or loan_status = 'current'

	select 
	(
	count
	(
	case
	when loan_status = 'Charged off' 
	then id end)*100)/
	count(id) as Good_lan_percentage
	from financial_loan_full

	select
	(
	count
	(case
    when loan_status = 'Fully Paid' or loan_status = 'current'
	then id end)*100)/
	count(id) as Good_lan_percentage
	from financial_loan_full


	select loan_status,
	count(*) as total_customers,
	sum(loan_amount) as loan_amount,
	sum(total_payment) as total_amount
	from financial_loan_full
	where MONTH(issue_date)=12
	group by loan_status


	
	select 
	DATENAME(MONTH,issue_date) as month_name,
	count(*) as total_customers,
	sum(loan_amount) as loan_amount,
	sum(total_payment) as total_amount
	from financial_loan_full
	group by DATENAME(MONTH,issue_date)
	order by DATENAME(MONTH,issue_date)	
