employees working at certain station:


SELECT employee_id, customer.first_name, customer.last_name, post_station.station_name
From employee
INNER JOIN post_station on station_id = (fk_works_at_id)
INNER JOIN customer on customer_id = (fk_customer_id)
WHERE post_station.station_id = 1




show customer bye zip:

SELECT DISTINCT customer.first_name, customer.last_name, adress.street, adress.house_nr,  adress.fk_zip, zip.city 
FROM `delivery` 
INNER JOIN customer on customer_id = (fk_sender_id) 
INNER JOIN adress on adress_id = (fk_adress) 
INNER JOIN zip on zip = (fk_zip) 
WHERE zip.zip = 1010



show customer delivered to bye zip

SELECT delivery_id, customer.first_name, customer.last_name, adress.street, adress.house_nr, adress.fk_zip, zip.city, deposit_date, receiving_date 
FROM `delivery` 
INNER JOIN customer on customer_id = (fk_receiver_id) 
INNER JOIN adress on adress_id = (fk_adress) 
INNER JOIN zip on zip = (fk_zip) 
WHERE zip.zip = 6780



show customer delivered to by zip and station:

SELECT delivery_id, customer.first_name, customer.last_name, adress.street, adress.house_nr, adress.fk_zip, zip.city, deposit_date, receiving_date, post_station.station_id 
FROM `delivery` 
INNER JOIN customer on customer_id = (fk_receiver_id) 
INNER JOIN adress on adress_id = (fk_adress) 
INNER JOIN zip on zip = (fk_zip) 
INNER JOIN post_station on station_id = (fk_processing_station_id) 
WHERE zip.zip = 6780
AND post_station.station_id = 1



show customer delivered to by zip and station and employee id

SELECT delivery_id, customer.first_name, customer.last_name, adress.street, adress.house_nr, adress.fk_zip, zip.city, deposit_date, receiving_date, post_station.station_id 
FROM `delivery` 
INNER JOIN customer on customer_id = (fk_receiver_id) 
INNER JOIN adress on adress_id = (fk_adress) 
INNER JOIN zip on zip = (fk_zip) 
INNER JOIN post_station on station_id = (fk_processing_station_id) 
WHERE zip.zip = 6780
AND post_station.station_id = 1


show delivery on certain date:

SELECT delivery_id, customer.first_name, customer.last_name, adress.street, adress.house_nr, adress.fk_zip, zip.city, deposit_date, receiving_date 
FROM `delivery` 
INNER JOIN customer on customer_id = (fk_receiver_id)
INNER JOIN adress on adress_id = (fk_adress) 
INNER JOIN zip on zip = (fk_zip) WHERE delivery.receiving_date = '2020-07-16'



show employees at certain station:

SELECT employee_id, customer.first_name, customer.last_name, post_station.station_name
From employee
INNER JOIN post_station on station_id = (fk_works_at_id)
INNER JOIN customer on customer_id = (fk_customer_id)
WHERE post_station.station_id = 1

