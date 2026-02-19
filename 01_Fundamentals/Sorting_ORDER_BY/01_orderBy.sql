--Return all of the ids after ordering them by the weight in descending order
SELECT DISTINCT id
FROM feathers
ORDER BY weight DESC

--Return all of the ids after ordering them by the area in descending order.
--If the feathers have the same area, sort them by weight in ascending order.
SELECT DISTINCT id
FROM feathers
ORDER BY area DESC,weight