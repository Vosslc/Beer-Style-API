create table style (
style_id SERIAL PRIMARY KEY,
styles text

);

INSERT INTO style (styles) VALUES 
('Ale Styles'),
('Lager Styles'), 
('Hybrid Mixed Lagers or Ales');

SELECT * FROM STYLE;

--! ORIGIN
-- *******
create table ale_styles_origin (
style_id SERIAL PRIMARY KEY,
styles VARCHAR (100)
);

-- ALTER TABLE Origin RENAME COLUMN style_id TO origin_id;

INSERT INTO ale_styles_origin (ale_styles_origin) VALUES 
('British Origin Ale Styles'),
('North American Origin Ale Styles'),
('Belgian and French Origin Ale Styles'),
('Irish Origin Ale Styles'),
('German Origin Ale Styles'),
('Other Origin Ale Styles');
SELECT * FROM ale_styles_origin;
-- *******

-- *******
create table Lager_styles_origin(
style_id SERIAL PRIMARY KEY,
Lager_Styles_Origin VARCHAR (100)
);
INSERT INTO Lager_styles_origin (Lager_styles_origin) VALUES 
('European Origin Lager Styles'),
('North American Origin Lager Styles'),
('Other Origin Lager Styles');
SELECT * FROM lager_styles_origin;
-- ****
-- ****
create table Hybrid_Mixed_Lager_Ale_Styles_Origin (
style_id SERIAL PRIMARY KEY,
Hybrid_Mixed_Lager_Ale_Styles_Origin VARCHAR (100)
);
INSERT INTO Hybrid_Mixed_Lager_Ale_Styles_Origin (Hybrid_Mixed_Lager_Ale_Styles_Origin) VALUES 
('All Origin Hybrid/Mixed Lagers or Ale');
SELECT * FROM Hybrid_Mixed_Lager_Ale_Styles_Origin;
-- ***END***


