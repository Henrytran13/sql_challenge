---PART 1
---Locate a duplicate record with one field
SELECT 
	* 
FROM 
	yarns y1
WHERE 
	(SELECT 
	 COUNT(*) 
	 FROM yarns y2
		WHERE y1.yarn_name = y2.yarn_name) > 1;
	   
---PART 2

----Locate a duplicate record with more than one field	

SELECT 
	* 
FROM 
	yarns y1
WHERE 
	(SELECT 
	 COUNT(*) 
	 FROM yarns y2
		WHERE y1.yarn_name = y2.yarn_name
			AND y1.yarn_type = y2.yarn_type
		   AND y1.grams = y2.grams
		   AND y1.color = y2.color
		   AND y1.lot = y2.lot
		   AND y1.qty = y2.qty
		   AND y1.vendor_id = y2.vendor_id) > 1;
