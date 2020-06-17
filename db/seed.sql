--! BASE STYLE

create table style (
base_style_id SERIAL PRIMARY KEY,
styles text

);

INSERT INTO style (style) VALUES 
('Ale Styles'),
('Lager Styles'), 
('Hybrid Mixed Lagers or Ales');

SELECT * FROM STYLE;

--! STYLE ORIGIN
create table style_origin (
style_origin_id SERIAL PRIMARY KEY,
styles VARCHAR (100)
style_id INTEGER REFERENCES style(base_style_id)

);

-- DROP TABLE ale_styles

INSERT INTO style_origin (styles, style_id) VALUES 
('British Origin Ale Styles', 1),
('North American Origin Ale Styles',1),
('Belgian and French Origin Ale Styles',1),
('Irish Origin Ale Styles',1),
('German Origin Ale Styles',1),
('Other Origin Ale Styles',1),
('European Origin Lager Styles',2),
('North American Origin Lager Styles',2),
('Other Origin Lager Styles',2),
('All Origin Hybrid/Mixed Lagers or Ale',3);
