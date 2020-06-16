CREATE TABLE airplanes (
  plane_id SERIAL NOT NULL,
  plane_type varchar(40) NOT NULL,
  passenger_count integer NOT NULL
);


INSERT INTO airplanes VALUES (1, 'B37', 50);

SELECT * FROM
airplanes

DROP TABLE airplanes1




