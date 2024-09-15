USE DATABASE {{db_name}}; 

SELECT COUNT(*) AS number_of_schemas FROM information_schema.schemata WHERE schema_name != 'INFORMATION_SCHEMA';

SELECT COUNT(*) AS number_of_tables FROM information_schema.tables WHERE table_schema != 'INFORMATION_SCHEMA';

SELECT COUNT(*) AS number_of_views FROM information_schema.views WHERE table_schema != 'INFORMATION_SCHEMA';

SELECT COUNT(*) AS number_of_stages FROM information_schema.stages WHERE stage_schema != 'INFORMATION_SCHEMA';

USE DATABASE {{db_name}}; SELECT * FROM employees;
