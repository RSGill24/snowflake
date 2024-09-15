CREATE DATABASE {{prod_db_name}} CLONE {{stage_db_name}};

USE DATABASE {{prod_db_name}}; 
ALTER SCHEMA {{stage_schema_name}} RENAME TO {{prod_schema_name}};
