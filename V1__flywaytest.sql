CREATE TABLE resin_mart.flyway_test (
	country_key int8 NOT NULL,
	country_cd text NOT NULL,
	country_desc text NOT NULL,
	iso_3 text NOT NULL,
	iso_n int4 NULL,
	data_inserted_by text NULL DEFAULT 'SYSTEM'::text,
	data_inserted_at timestamp NULL DEFAULT now(),
	data_updated_by text NULL DEFAULT 'SYSTEM'::text,
	data_updated_at timestamp NULL DEFAULT now(),
	CONSTRAINT country_dim_pkey PRIMARY KEY (country_key)
);