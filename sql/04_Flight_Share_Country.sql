With StateTraffic As (
    Select State_Name, Sum(Flt_Tot_1) As Total_Flights
    From Flights
    Group By State_Name
    )

Select State_Name, Total_Flights, 
  Round((Total_Flights*100)/Sum(Total_Flights) Over(), 2) As Traffic_Share_Percent
From StateTraffic
Order By Total_Flights Desc;
    
