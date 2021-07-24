# 1. Which destination in the flights database is the furthest distance away, based on information in the flights table
SELECT dest, sum(distance) AS TOTAL_DISTANCE from flights GROUP BY dest order by TOTAL_DISTANCE desc;

# 2. What are the different numbers of engines in the planes table? For each number of engines, which aircraft have
#the most number of seats?
SELECT tailnum, sum(engines) AS Total_Engines, sum(seats) AS Total_Seats from planes 
GROUP BY tailnum order by Total_Engines DESC, Total_Seats DESC;

# 3. Show the total number of flights.
SELECT distinct count(*) as "Total Flights" from flights;

# 4. Show the total number of flights by airline (carrier)
SELECT carrier, COUNT(*) as "Total Flights" from flights GROUP BY carrier;

# 5. Show all of the airlines, ordered by number of flights in descending order
SELECT carrier, COUNT(*) as "Number of Flights" from flights GROUP BY carrier ORDER BY "Number of Flights" DESC;

# 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order
SELECT * from 
(SELECT carrier, COUNT(*) as "Number of Flights" from flights GROUP BY carrier ORDER BY "Number of Flights" DESC) A limit 5;

# 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of
#flights in descending order
SELECT * from 
(SELECT carrier, COUNT(*) as "Number of Flights" from flights
where distance >= 1000 GROUP BY carrier ORDER BY "Number of Flights" DESC) A limit 5;

# 8. What is the average amount of time (in hours) spent in the air by each plane?
select tailnum, (avg(air_time)/60) as mean_time from flights group by tailnum order by mean_time desc;