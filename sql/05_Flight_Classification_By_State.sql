With CountryTraffic As (
    Select State_Name, Sum(Flt_Tot_1) As Total_Flights
    From Flights
    Group By State_Name
    )
Select State_Name, Total_Flights,
    Case
        When Total_Flights >= 8000000 Then 'High Traffic'
        When Total_Flights >= 3000000 Then 'Medium Traffic'
        Else 'Low Traffic'
    End As Traffic_Category
From CountryTraffic
Order By Total_Flights;
