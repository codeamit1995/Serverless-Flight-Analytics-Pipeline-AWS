SELECT State_Name, Sum(Try_Cast(Flt_Dep_Ifr_2 As Integer)) As Departure_IFR, 
  Sum(Try_Cast(Flt_Arr_Ifr_2 As Integer)) As Arrival_IFR, 
  Sum(Try_Cast(Flt_Tot_Ifr_2 As Integer)) As Total_IFR
From Flights
Group By State_Name
Order By Total_IFR Desc;
