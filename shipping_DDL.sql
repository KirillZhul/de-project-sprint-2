-- public.shipping definition

-- Drop table

-- DROP TABLE public.shipping;

CREATE TABLE public.shipping (
	id serial4 NOT NULL,
	shippingid int8 NULL, -- id of shipping of sale
	saleid int8 NULL,
	orderid int8 NULL,
	clientid int8 NULL,
	payment_amount numeric(14, 2) NULL,
	state_datetime timestamp NULL,
	productid int8 NULL,
	description text NULL,
	vendorid int8 NULL,
	namecategory text NULL,
	base_country text NULL,
	status text NULL,
	state text NULL,
	shipping_plan_datetime timestamp NULL,
	hours_to_plan_shipping numeric(14, 2) NULL,
	shipping_transfer_description text NULL,
	shipping_transfer_rate numeric(14, 3) NULL,
	shipping_country text NULL,
	shipping_country_base_rate numeric(14, 3) NULL,
	vendor_agreement_description text NULL,
	CONSTRAINT shipping_pkey PRIMARY KEY (id)
);
CREATE INDEX shippingid ON public.shipping USING btree (shippingid);

-- Column comments

COMMENT ON COLUMN public.shipping.shippingid IS 'id of shipping of sale';
