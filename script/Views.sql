Create View vw_ChurnData as
    select * from db_Churn.dbo.prod_Churn  where Customer_Status In ('Churned', 'Stayed')
  

Create View vw_JoinData as
    select * from db_Churn.dbo.prod_Churn where Customer_Status = 'Joined'