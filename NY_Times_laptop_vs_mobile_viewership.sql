-- Assume that you are given the table below containing information on viewership by device type (where the three types are laptop, tablet, and phone). Define “mobile” as the sum of tablet and phone viewership numbers. Write a query to compare the viewership on laptops versus mobile devices.

-- Output the total viewership for laptop and mobile devices in the format of "laptop_views" and "mobile_views".

SELECT COUNT(laptops) AS laptop_views, COUNT(mobiles) AS mobile_views
FROM (SELECT
          CASE WHEN device_type='laptop' THEN 1 ELSE NULL END AS laptops,
          CASE WHEN device_type='tablet' OR device_type = 'phone' THEN 1 ELSE NULL END AS mobiles
      FROM viewership) AS VIEWS;