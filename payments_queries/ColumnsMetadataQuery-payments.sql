SELECT
	* EXCEPT (ordinal_position, is_generated, generation_expression, is_stored, is_hidden, is_updatable, is_system_defined, is_partitioning_column, clustering_ordinal_position, collation_name, column_default, rounding_mode)
FROM
	`lucid-totality-409609.retail_dataset`.INFORMATION_SCHEMA.COLUMNS
WHERE
	table_name = 'payments';