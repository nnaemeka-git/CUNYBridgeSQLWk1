
SELECT tailnum, sum(engines) AS Total_Engines, sum(seats) AS Total_Seats 
from planes 
GROUP BY tailnum order by Total_Engines DESC, Total_Seats DESC;
