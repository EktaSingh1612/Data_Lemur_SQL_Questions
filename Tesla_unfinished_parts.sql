-- Tesla is investigating bottlenecks in their production, and they need your help to extract the relevant data. Write a SQL query that determines which parts have begun the assembly process but are not yet finished.

SELECT DISTINCT(part) FROM parts_assembly
WHERE finish_date IS NULL;