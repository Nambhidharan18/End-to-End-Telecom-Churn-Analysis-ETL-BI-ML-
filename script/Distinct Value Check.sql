select Gender, count(Gender) as Total, count(Gender) *100.0 / (Select count(*) from db_Churn.dbo.stg_Churn) as Percentage
from db_Churn.dbo.stg_Churn Group by Gender


select Contract, count(Contract) as Totalcount,
Count(Contract) * 1.0/ (Select count(*) from db_Churn.dbo.stg_Churn) as Percentage
from db_churn.dbo.stg_Churn
Group by Contract


Select Customer_Status,Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) * 100 / (Select sum(Total_Revenue) from db_Churn.dbo.stg_Churn) as RevPercentage
From db_Churn.dbo.stg_Churn
Group by Customer_Status

Select State,count(State) as TotalCount, Count(State) * 100.0/ (Select count(State) from db_Churn.dbo.stg_Churn)  as Percentage
from db_Churn.dbo.stg_Churn
Group by State
Order by Percentage Desc

select Distinct Internet_Type from db_Churn.dbo.stg_Churn

