SELECT geolocation_zip_code_prefix, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.geolocation
GROUP BY geolocation_zip_code_prefix