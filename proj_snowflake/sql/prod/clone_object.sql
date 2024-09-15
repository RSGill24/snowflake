CREATE DATABASE <+env.name>_<+stage.variables.DB_name> CLONE <+pipeline.stages.Create_non_prod_env.spec.env.name>_<+pipeline.stages.Create_non_prod_env.variables.DB_name>;

USE DATABASE <+env.name>_<+stage.variables.DB_name>; 
ALTER SCHEMA <+pipeline.stages.Create_non_prod_env.spec.env.name>_<+pipeline.stages.Create_non_prod_env.variables.Schema_name> RENAME TO <+env.name>_<+stage.variables.Schema_name>;
