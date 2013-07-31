CREATE SEQUENCE resource_contact_id_seq;
CREATE TABLE resource_contact
(
	id integer DEFAULT nextval('resource_contact_id_seq') NOT NULL,
	sourcefileid VARCHAR(50),
	name character varying(100),
	organization_name character varying(100),
	address text,
	city character varying(100),
	administrative_area character varying(100),
	country character varying(100),
	postal_code character varying(10),
	online_url character varying(200),
	phone character varying(20),
	email character varying(200),
	CONSTRAINT resource_contact_pkey PRIMARY KEY (id)
);