ALTER TABLE IF EXISTS employee
ADD COLUMN gender INT;

ALTER TABLE employee
ALTER COLUMN gender SET NOT NULL ;

ALTER TABLE employee
DROP COLUMN gender;



















