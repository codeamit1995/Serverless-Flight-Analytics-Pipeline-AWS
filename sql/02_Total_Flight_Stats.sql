Select Count(*) As Total_Records, 
  Count(Distinct Apt_Name) As Total_Airports, 
  Count(Distinct State_Name) As Total_Countries, 
  Sum(Flt_Tot_1) As Total_Flight_Movements
From flights;
