CREATE SEQUENCE s_c_group
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_c_group; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_c_group', 1, false);


SET default_with_oids = false;

--
-- Name: c_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE c_group (
    c_group numeric(30,0) DEFAULT nextval('s_c_group'::regclass) NOT NULL,
    struct_unit numeric(30,0),
    name character varying(100),
    description character varying(300),
    created timestamp without time zone,
    created_by numeric(30,0),
    updated timestamp without time zone,
    updated_by numeric(30,0)
);


--
-- Name: s_comm_device; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_comm_device
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_comm_device; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_comm_device', 1, false);


--
-- Name: comm_device; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE comm_device (
    comm_device numeric(30,0) DEFAULT nextval('s_comm_device'::regclass) NOT NULL,
    comm_device_type numeric(30,0),
    customer numeric(30,0),
    value_text character varying(100),
    orderb numeric(30,0),
    created timestamp without time zone
);


--
-- Name: s_comm_device_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_comm_device_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_comm_device_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_comm_device_type', 1, false);


--
-- Name: comm_device_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE comm_device_type (
    comm_device_type numeric(30,0) DEFAULT nextval('s_comm_device_type'::regclass) NOT NULL,
    name character varying(100),
    description character varying(300)
);


--
-- Name: s_contract; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract', 1, false);


--
-- Name: contract; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE contract (
    contract numeric(30,0) DEFAULT nextval('s_contract'::regclass) NOT NULL,
    contract_manager numeric(30,0),
    contract_status_type numeric(30,0),
    customer numeric(30,0),
    contract_type numeric(30,0),
    cnt_number character varying(20),
    name character varying(200),
    description character varying(300),
    valid_from timestamp without time zone,
    valid_to timestamp without time zone,
    parent_cnt numeric(30,0),
    created timestamp without time zone,
    updated timestamp without time zone,
    created_by numeric(30,0),
    updated_by numeric(30,0),
    conditions character varying(300),
    note character varying(300),
    value_amount numeric(32,16),
    struct_unit numeric(30,0)
);


--
-- Name: s_contract_manager; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_manager
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_manager; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_manager', 1, false);


--
-- Name: contract_manager; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE contract_manager (
    contract_manager numeric(30,0) DEFAULT nextval('s_contract_manager'::regclass) NOT NULL,
    contract numeric(30,0),
    employee numeric(30,0),
    valid_from timestamp without time zone,
    valid_to timestamp without time zone,
    status numeric(30,0),
    created timestamp without time zone,
    created_by numeric(30,0),
    updated timestamp without time zone,
    updated_by numeric(30,0)
);


--
-- Name: s_contract_status; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_status
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_status; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_status', 1, false);


--
-- Name: contract_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE contract_status (
    contract_status numeric(30,0) DEFAULT nextval('s_contract_status'::regclass) NOT NULL,
    contract numeric(30,0),
    contract_status_type numeric(30,0),
    valid_from timestamp without time zone,
    valid_to timestamp without time zone,
    status numeric(30,0),
    created timestamp without time zone,
    created_by numeric(30,0),
    ended timestamp without time zone,
    ended_by numeric(30,0)
);


--
-- Name: s_contract_status_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_status_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_status_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_status_type', 1, false);


--
-- Name: contract_status_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE contract_status_type (
    contract_status_type numeric(30,0) DEFAULT nextval('s_contract_status_type'::regclass) NOT NULL,
    name character varying(100)
);


--
-- Name: s_contract_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_type', 1, false);


--
-- Name: contract_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE contract_type (
    contract_type numeric(30,0) DEFAULT nextval('s_contract_type'::regclass) NOT NULL,
    name character varying(200)
);


--
-- Name: s_cst_address; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cst_address
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cst_address; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cst_address', 1, false);


--
-- Name: cst_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cst_address (
    cst_address numeric(30,0) DEFAULT nextval('s_cst_address'::regclass) NOT NULL,
    customer numeric(30,0),
    zip character varying(20),
    house character varying(100),
    address character varying(100),
    county character varying(100),
    parish character varying(100),
    town_county character varying(100),
    address_type numeric(30,0),
    phone character varying(20),
    sms character varying(20),
    mobile character varying(20),
    email character varying(30),
    note character varying(50),
    country numeric(30,0),
    created timestamp without time zone,
    updated timestamp without time zone,
    created_by numeric(30,0),
    updated_by numeric(30,0)
);


--
-- Name: s_cst_state_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cst_state_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cst_state_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cst_state_type', 1, false);


--
-- Name: cst_state_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cst_state_type (
    cst_state_type numeric(30,0) DEFAULT nextval('s_cst_state_type'::regclass) NOT NULL,
    name character varying(100)
);


--
-- Name: cst_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cst_type (
    cst_type numeric(30,0) NOT NULL,
    name character varying(100)
);


--
-- Name: s_cst_user; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cst_user
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cst_user; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cst_user', 1, false);


--
-- Name: cst_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cst_user (
    cst_user numeric(30,0) DEFAULT nextval('s_cst_user'::regclass) NOT NULL,
    customer numeric(30,0),
    username character varying(20),
    passw character varying(300),
    user_status_type numeric(30,0),
    user_status_date timestamp without time zone,
    created timestamp without time zone,
    updated timestamp without time zone,
    created_by numeric(30,0),
    updated_by numeric(30,0),
    last_session numeric(30,0),
    contact_email character varying(30)
);


--
-- Name: customer_id; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customer_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customer_id; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customer_id', 1, false);


--
-- Name: customer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE customer (
    customer numeric(30,0) DEFAULT nextval('customer_id'::regclass) NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    identity_code character varying(20),
    note character varying(1000),
    created timestamp without time zone,
    updated timestamp without time zone,
    created_by numeric(30,0),
    updated_by numeric(30,0),
    birth_date timestamp without time zone,
    cst_type numeric(2,0),
    cst_state_type numeric(2,0)
);


--
-- Name: s_customer_group; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_customer_group
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_customer_group; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_customer_group', 1, false);


--
-- Name: customer_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE customer_group (
    customer_group numeric(30,0) DEFAULT nextval('s_customer_group'::regclass) NOT NULL,
    customer numeric(30,0),
    c_group numeric(30,0),
    created timestamp without time zone,
    created_by numeric(30,0)
);


--
-- Name: s_emp_user; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_emp_user
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_emp_user; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_emp_user', 1, false);


--
-- Name: emp_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE emp_user (
    emp_user numeric(30,0) DEFAULT nextval('s_emp_user'::regclass) NOT NULL,
    employee numeric(30,0),
    username character varying(20),
    passw character varying(300),
    user_status_type numeric(30,0),
    created timestamp without time zone,
    created_by numeric(30,0),
    updated timestamp without time zone,
    updated_by numeric(30,0),
    last_session numeric(30,0),
    contact_email character varying(20)
);


--
-- Name: s_employee; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_employee
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_employee; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_employee', 1, false);


--
-- Name: employee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employee (
    employee numeric(30,0) DEFAULT nextval('s_employee'::regclass) NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    emp_code character varying(20),
    created_by numeric(30,0),
    updated_by numeric(30,0),
    current_position numeric(30,0),
    current_manager numeric(30,0),
    current_struct_unit numeric(30,0),
    created timestamp without time zone,
    updated timestamp without time zone,
    emp_role numeric(30,0)
);


--
-- Name: s_employee_struct_unit; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_employee_struct_unit
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_employee_struct_unit; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_employee_struct_unit', 1, false);


--
-- Name: employee_struct_unit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employee_struct_unit (
    employee_struct_unit numeric(30,0) DEFAULT nextval('s_employee_struct_unit'::regclass) NOT NULL,
    employee numeric(30,0) NOT NULL,
    struct_unit numeric(30,0) NOT NULL,
    relation_type numeric(30,0) NOT NULL,
    active character varying(1),
    valid_from timestamp without time zone,
    valid_to timestamp without time zone,
    created timestamp without time zone,
    created_by numeric(30,0),
    updated timestamp without time zone,
    updated_by numeric(30,0)
);


--
-- Name: s_catalog_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_catalog_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_catalog_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_catalog_type', 1, false);


--
-- Name: s_contract_atr_type_value; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_atr_type_value
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_atr_type_value; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_atr_type_value', 1, false);


--
-- Name: s_contract_attribute; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_attribute
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_attribute; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_attribute', 1, false);


--
-- Name: s_contract_property; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_property
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_property; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_property', 1, false);


--
-- Name: s_contract_relation; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_relation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_relation; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_relation', 1, false);


--
-- Name: s_contract_type_atrib; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_contract_type_atrib
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_contract_type_atrib; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_contract_type_atrib', 1, false);


--
-- Name: s_cst_app_session; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cst_app_session
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cst_app_session; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cst_app_session', 1, false);


--
-- Name: s_cst_type_atr_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cst_type_atr_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cst_type_atr_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cst_type_atr_type', 1, false);


--
-- Name: s_cust_event_atrib; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cust_event_atrib
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cust_event_atrib; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cust_event_atrib', 1, false);


--
-- Name: s_cust_event_atrib_value; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cust_event_atrib_value
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cust_event_atrib_value; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cust_event_atrib_value', 1, false);


--
-- Name: s_cust_event_class; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cust_event_class
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cust_event_class; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cust_event_class', 1, false);


--
-- Name: s_cust_event_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_cust_event_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_cust_event_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_cust_event_type', 1, false);


--
-- Name: s_customer_atr_type_value; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_customer_atr_type_value
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_customer_atr_type_value; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_customer_atr_type_value', 1, false);


--
-- Name: s_customer_attribute; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_customer_attribute
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_customer_attribute; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_customer_attribute', 1, false);


--
-- Name: s_customer_event; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_customer_event
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_customer_event; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_customer_event', 1, false);


--
-- Name: s_customer_message; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_customer_message
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_customer_message; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_customer_message', 1, false);


--
-- Name: s_emp_app_session; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_emp_app_session
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_emp_app_session; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_emp_app_session', 1, false);


--
-- Name: s_ent_address; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_ent_address
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_ent_address; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_ent_address', 1, false);


--
-- Name: s_ent_relation; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_ent_relation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_ent_relation; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_ent_relation', 1, false);


--
-- Name: s_ent_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_ent_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_ent_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_ent_type', 1, false);


--
-- Name: s_enterprise; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_enterprise
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_enterprise; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_enterprise', 1, false);


--
-- Name: s_enterprise_customer; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_enterprise_customer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_enterprise_customer; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_enterprise_customer', 1, false);


--
-- Name: s_order; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order', 1, false);


--
-- Name: s_order_customer; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order_customer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order_customer; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order_customer', 1, false);


--
-- Name: s_order_item; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order_item
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order_item; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order_item', 1, false);


--
-- Name: s_order_relation; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order_relation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order_relation; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order_relation', 1, false);


--
-- Name: s_order_status; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order_status
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order_status; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order_status', 1, false);


--
-- Name: s_order_status_class; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order_status_class
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order_status_class; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order_status_class', 1, false);


--
-- Name: s_order_status_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_order_status_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_order_status_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_order_status_type', 1, false);


--
-- Name: s_paym_graph; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_paym_graph
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_paym_graph; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_paym_graph', 1, false);


--
-- Name: s_paym_part; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_paym_part
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_paym_part; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_paym_part', 1, false);


--
-- Name: s_product; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product', 1, false);


--
-- Name: s_product_atr_type_value; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product_atr_type_value
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product_atr_type_value; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product_atr_type_value', 1, false);


--
-- Name: s_product_attribute; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product_attribute
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product_attribute; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product_attribute', 1, false);


--
-- Name: s_product_catalog; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product_catalog
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product_catalog; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product_catalog', 1, false);


--
-- Name: s_product_catalog_atr_type; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product_catalog_atr_type
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product_catalog_atr_type; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product_catalog_atr_type', 1, false);


--
-- Name: s_product_catalog_relation; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product_catalog_relation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product_catalog_relation; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product_catalog_relation', 1, false);


--
-- Name: s_product_product_catalog; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_product_product_catalog
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_product_product_catalog; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_product_product_catalog', 1, false);


--
-- Name: s_project; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_project
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_project; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_project', 1, false);


--
-- Name: s_project_relation; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_project_relation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_project_relation; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_project_relation', 1, false);


--
-- Name: s_project_status; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_project_status
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_project_status; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_project_status', 1, false);


--
-- Name: s_prop_type_atrib; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_prop_type_atrib
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_prop_type_atrib; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_prop_type_atrib', 1, false);


--
-- Name: s_property; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_property
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_property; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_property', 1, false);


--
-- Name: s_property_atr_value; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_property_atr_value
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_property_atr_value; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_property_atr_value', 1, false);


--
-- Name: s_property_attribute; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_property_attribute
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_property_attribute; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_property_attribute', 1, false);


--
-- Name: s_property_relation; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_property_relation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_property_relation; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_property_relation', 1, false);


--
-- Name: s_property_status; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_property_status
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_property_status; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_property_status', 1, false);


--
-- Name: s_struct_unit; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE s_struct_unit
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: s_struct_unit; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('s_struct_unit', 1, false);


--
-- Name: struct_unit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE struct_unit (
    struct_unit numeric(30,0) DEFAULT nextval('s_struct_unit'::regclass) NOT NULL,
    struct_unit_type numeric(30,0) NOT NULL,
    unit_code character varying(20),
    name character varying(300),
    description character varying(1000),
    upper_unit numeric(30,0),
    name_in_en character varying(300)
);


--
-- Data for Name: c_group; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: comm_device; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: comm_device_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO comm_device_type (comm_device_type, name, description) VALUES (1, 'telefon', '');
INSERT INTO comm_device_type (comm_device_type, name, description) VALUES (2, 'mobiil', '');
INSERT INTO comm_device_type (comm_device_type, name, description) VALUES (3, 'faks', '');
INSERT INTO comm_device_type (comm_device_type, name, description) VALUES (4, 'mail', '');


--
-- Data for Name: contract; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: contract_manager; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: contract_status; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: contract_status_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO contract_status_type (contract_status_type, name) VALUES (6, 'l?petatud uuega');
INSERT INTO contract_status_type (contract_status_type, name) VALUES (5, 'l?petatud');
INSERT INTO contract_status_type (contract_status_type, name) VALUES (4, 'peatatud');
INSERT INTO contract_status_type (contract_status_type, name) VALUES (3, 'kehtiv');
INSERT INTO contract_status_type (contract_status_type, name) VALUES (2, 'kinnitatud');
INSERT INTO contract_status_type (contract_status_type, name) VALUES (1, 'projekt');


--
-- Data for Name: contract_type; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: cst_address; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: cst_state_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO cst_state_type (cst_state_type, name) VALUES (1, 'aktiivne');
INSERT INTO cst_state_type (cst_state_type, name) VALUES (2, 'suletud');


--
-- Data for Name: cst_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO cst_type (cst_type, name) VALUES (1, 'Edasim??ja');
INSERT INTO cst_type (cst_type, name) VALUES (2, 'Klient');
INSERT INTO cst_type (cst_type, name) VALUES (3, 'Partner');
INSERT INTO cst_type (cst_type, name) VALUES (4, 'Suurklient');


--
-- Data for Name: cst_user; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: customer_group; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: emp_user; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: employee_struct_unit; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: struct_unit; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (1, 1, 'HC1', 'Peakontor', 'Peakontor', 0, 'Main office');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (2, 2, 'STORE1', 'Metsapood', 'Metsas asuv pood', 1, 'Forest shop');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (3, 2, 'SP1', 'Spordivahendid 1', 'Spordivahendite pood', 1, 'Sports1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (4, 2, 'SP2', 'Spordivahendid- suusapood', 'Suusad', 1, 'SportsWinter');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (5, 2, 'RM1', 'Meditsiiniraamatud', 'Meditsiiniraamatute pood', 1, 'MedBook');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (6, 2, 'RM2', 'Tehnikaraamatute pood', 'tehnikaraamat', 1, 'TechBook');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (7, 2, 'EL1', 'Elektroonika kauplus', 'elektroonikapood', 1, 'Electronics');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (8, 2, 'IT1', 'Arvutipood', 'arvutustehnika', 1, 'PC products');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (9, 2, 'IT2', 'Arvutipood ettev?tetele', 'serverid', 1, 'IT Enterprise');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (10, 2, 'OF1', 'Kontoritarbed1', 'Kontoritarvete pood pealinnas', 1, 'Office1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (11, 2, 'OF2', 'Kontoritarbed2', 'Kontoritarbed linnas2', 1, 'Office2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (12, 2, 'CR1', 'Autotarvikud1', 'Autotarvikute pood', 1, 'Car 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (13, 2, 'FR1', 'M??bel1', 'M??blipood', 1, 'Furniture 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (14, 2, 'SF1', 'Tarkvara1', 'Kontoritarkvara', 1, 'Software1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (15, 2, 'KC1', 'K??gitarbed', 'K??gitarvete pood', 1, 'Kitchen 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (16, 2, 'CD1', 'Plaadipood1', 'Plaadipood', 1, 'Music1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (17, 2, 'SF2', 'Tarkvara2', 'Tarkvara2', 1, 'Software2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (18, 2, 'OF3', 'Kontoritarbed3', 'Kontoritarbed3', 1, 'Office3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (19, 2, 'TC1', 'Piletid', 'Piletite pood', 1, 'Tickets');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (20, 2, 'PH1', 'Telefonid1', 'Telefoni pood 1', 1, 'Phones1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (21, 2, 'PH2', 'Telefonid2', 'Telefoni pood2', 1, 'Phones2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (22, 2, 'PH3', 'Telefonid3', 'Telefoni pood 3', 1, 'Phones3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (23, 2, 'BL1', 'Ehituspood', 'Ehitustarved', 1, 'Building materials');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (24, 2, 'SF3', 'Tarkvara3', 'Tarkvara3', 1, 'Software3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (25, 2, 'MP3_1', 'Muusika mp3_1', 'Mp3_1', 1, 'mp3_1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (26, 2, 'MP3_2', 'Muusika mp3_2', 'Mp3_2', 1, 'mp3_2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (27, 2, 'GRDN1', 'Aiatarbed 1', 'Aiatarvete pood 1', 1, 'Garden 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (28, 2, 'GRDN2', 'Aiatarbed 2', 'Aiatarvete pood 2', 1, 'Garden 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (29, 2, 'GRDN3', 'Aiatarbed 3', 'Aiatarvete pood 3', 1, 'Garden 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (30, 2, 'TOY1', 'M?nguasjad 1', 'M?nguasjade pood 1', 1, 'Toys 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (31, 2, 'TOY2', 'M?nguasjad 2', 'M?nguasjade pood 2', 1, 'Toys 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (32, 2, 'TOY3', 'M?nguasjad 3', 'M?nguasjade pood 3', 1, 'Toys 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (33, 2, 'ZOO1', 'Zoo 1', 'Zookauplus 1', 1, 'Zoo1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (34, 2, 'ZOO2', 'Zoo 2', 'Zookauplus 2', 1, 'Zoo 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (35, 2, 'FR2', 'M??bel 2', 'M??blipood 2', 1, 'Furniture 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (36, 2, 'FR3', 'M??bel 3', 'M??blipood 3', 1, 'Furniture 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (37, 2, 'EL2', 'Elektroonika kauplus 2', 'elektroonikapood 2', 1, 'Electronics');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (38, 2, 'KT1', 'K??gitehnika 1', 'K??gitehnika pood 1', 1, 'Kitchen technics');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (39, 2, 'KT2', 'K??gitehnika 2', 'K??gitehnika pood 2', 1, 'Kitchen technics');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (40, 2, 'VG1', 'Videom?ngud 1', 'Videom?ngud 1', 1, 'Video games 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (41, 2, 'VG2', 'Videom?ngud 2', 'Videom?ngud 2', 1, 'Video games 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (42, 2, 'VG3 ', 'Videom?ngud 3', 'Videom?ngud 3', 1, 'Video games 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (43, 2, 'CM1', 'Ehitusmasinad 1', 'Ehitusmasinad 1', 1, 'Construction machines 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (44, 2, 'CM2', 'Ehitusmasinad 2', 'Ehitusmasinad 2', 1, 'Construction machines 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (45, 2, 'ELTLS1', 'El. t??riistad 1', 'Elektrilised t??riistad 1', 1, 'Electrical tools 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (46, 2, 'ELTLS2', 'El. t??riistad 2', 'Elektrilised t??riistad 2', 1, 'Electrical tools 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (47, 2, 'TLS1', 'T??riistad 1', 'T??riistad 1', 1, 'Tools 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (48, 2, 'TLS2', 'T??riistad 2', 'T??riistad 2', 1, 'Tools 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (49, 2, 'TLS3', 'T??riistad 3', 'T??riistad 3', 1, 'Tools 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (50, 2, 'CD2', 'Plaadipood 2', 'Plaadipood 2', 1, 'Music2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (51, 2, 'KNV1', 'Taskunoad', 'Taskunoad 1', 1, 'Knives 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (52, 2, 'GRDNF1', 'Aiam??bel 1', 'Aiam??bel 1', 1, 'Garden furniture 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (53, 2, 'GRDNF2', 'Aiam??bel 2', 'Aiam??bel 2', 1, 'Garden furniture 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (54, 2, 'PHOT1', 'Fototarbed 1', 'Fototarbed 1', 1, 'Photo 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (55, 2, 'PHOT2', 'Fototarbed 2', 'Fototarbed 2', 1, 'Photo 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (56, 2, 'PHOT3', 'Fototarbed 3', 'Fototarbed 3', 1, 'Photo 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (57, 2, 'BAT1', 'Akud', 'Akud ja patareid', 1, 'Batteries 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (58, 2, 'PR1', 'Printerid', 'Printerid ja plotterid', 1, 'Printers and plotters');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (59, 2, 'ART1', 'Kunst 1', 'Kunst', 1, 'Art 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (60, 2, 'TV1', 'Televiisorid', 'Televiisorid', 1, 'TV1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (61, 2, 'PDA1', 'Pihuarvutid', 'Pihuarvutid', 1, 'PDA1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (62, 2, 'SM1', 'Salvestusmeedia', 'Salvestusmeedia (lindid, CF, SD , xD)', 1, 'Storage media 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (63, 2, 'JW1', 'Juveelid', 'Juveelid', 1, 'Jewelry 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (64, 2, 'WTCH1', 'Kellad 1', 'Kellad 1', 1, 'Watches 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (65, 2, 'WTCH2', 'Kellad 2', 'Kellad 2', 1, 'Watches 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (66, 2, 'RF1', 'Katusekattematerjalid', 'Katusekattematerjalid', 1, 'Roof materials 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (67, 2, 'CW1', 'K?psetusn?ud', 'K?psetusn?ud (cookware)', 1, 'Cookware 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (68, 2, 'SH1', 'Kingad 1', 'Kingad 1', 1, 'Shoes 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (69, 2, 'SH2', 'Kingad 2', 'Kingad 2', 1, 'Shoes 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (70, 2, 'V1', 'Video 1', 'Video 1', 1, 'Video 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (71, 2, 'V2', 'Video 2', 'Video 2', 1, 'Video 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (72, 2, 'V3', 'Video 3', 'Video 3', 1, 'Video 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (73, 2, 'V4', 'Video 4', 'Video 4', 1, 'Video 4');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (74, 2, 'LT1', 'Valgustid 1', 'Valgustid 1', 1, 'Lights 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (75, 2, 'LT2', 'Valgustid 2', 'Valgusid 2', 1, 'Lights 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (76, 2, 'GFT1', 'Kingitused 1', 'Kingitused 1', 1, 'Gifts 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (77, 2, 'GFT2', 'Kingitused 2', 'Kingitused 2', 1, 'Gifts 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (78, 2, 'PHAR1', 'Ravimid 1', 'Ravimid 1', 1, 'Pharmatseutics 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (79, 2, 'PHAR2', 'Ravimid 2', 'Ravimid 2', 1, 'Pharmatseutics 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (80, 2, 'IT3', 'Arvutustehnika rent', 'Arvutustehnika rent', 1, 'IT rent');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (81, 2, 'IT4', 'Projektorid', 'Projektorid', 1, 'Projektorid');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (82, 2, 'RM3', 'Raamatud 3', 'Raamatud 3', 1, 'Books 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (83, 2, 'RM4', 'Raamatud 4', 'Raamatud 4', 1, 'Books 4');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (84, 2, 'RM5', 'Raamatud 5', 'Raamatud 5', 1, 'Books 5');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (85, 2, 'BLD1', 'Ehitusmaterjalid 1', 'Ehitusmaterjalid 1', 1, 'Building 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (86, 2, 'BLD2', 'Ehitusmaterjalid 2', 'Ehitusmaterjalid 2', 1, 'Building 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (87, 2, 'BLD3', 'Ehitusmaterjalid 3', 'Ehitusmaterjalid 3', 1, 'Building 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (88, 2, 'WSH1', 'Pesumasinad', 'Pesumasinad', 1, 'Washing machines');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (89, 2, 'IT5', 'K?vakettad', 'K?vakettad', 1, 'Hard disks');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (90, 2, 'IT6', 'Andmesalvestus', 'Andmesalvestus ja arhiveerimine', 1, 'IT Storage');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (91, 2, 'HCE1', 'Kodukeemia', 'Kodukeemia', 1, 'Home chemistry');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (92, 2, 'MT1', 'Muusikariistad 1', 'Muusikariistad 1', 1, 'Music equipment 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (93, 2, 'MT2', 'Muusikariistad 2', 'Muusikariistad 2', 1, 'Music equipment 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (94, 2, 'MT3', 'Muusikariistad 3', 'Muusikariistad 3', 1, 'Music equipment 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (95, 2, 'LXF1', 'Luksusm??bel 1', 'Luksusm??bel 1', 1, 'Luxury furniture 1');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (96, 2, 'LXF2', 'Luksusm??bel 2', 'Luksusm??bel 2', 1, 'Luxury furniture 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (97, 2, 'IT7', 'Arvutid 7', 'Arvutid 7', 1, 'IT 7');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (98, 2, 'CR2', 'Autotarvikud 2', 'Autotarvikud 2', 1, 'Car 2');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (99, 2, 'CR3', 'Autotarvikud 3', 'Autotarvikud 3', 1, 'Car 3');
INSERT INTO struct_unit (struct_unit, struct_unit_type, unit_code, name, description, upper_unit, name_in_en) VALUES (100, 2, 'CR4', 'Autotarvikud 4', 'Autotarvikud 4', 1, 'Car 4');


--
-- Name: c_group_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY c_group
    ADD CONSTRAINT c_group_pk PRIMARY KEY (c_group);


--
-- Name: comm_device_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comm_device
    ADD CONSTRAINT comm_device_pk PRIMARY KEY (comm_device);


--
-- Name: comm_device_type_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comm_device_type
    ADD CONSTRAINT comm_device_type_pk PRIMARY KEY (comm_device_type);


--
-- Name: contract_manager_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contract_manager
    ADD CONSTRAINT contract_manager_pk PRIMARY KEY (contract_manager);


--
-- Name: contract_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contract
    ADD CONSTRAINT contract_pk PRIMARY KEY (contract);


--
-- Name: contract_status_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contract_status
    ADD CONSTRAINT contract_status_pk PRIMARY KEY (contract_status);


--
-- Name: contract_status_type_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contract_status_type
    ADD CONSTRAINT contract_status_type_pk PRIMARY KEY (contract_status_type);


--
-- Name: contract_type_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contract_type
    ADD CONSTRAINT contract_type_pk PRIMARY KEY (contract_type);


--
-- Name: cst_address_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cst_address
    ADD CONSTRAINT cst_address_pk PRIMARY KEY (cst_address);


--
-- Name: cst_state_type_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cst_state_type
    ADD CONSTRAINT cst_state_type_pk PRIMARY KEY (cst_state_type);


--
-- Name: cst_type_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cst_type
    ADD CONSTRAINT cst_type_pk PRIMARY KEY (cst_type);


--
-- Name: cst_user_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cst_user
    ADD CONSTRAINT cst_user_pk PRIMARY KEY (cst_user);


--
-- Name: customer_group_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customer_group
    ADD CONSTRAINT customer_group_pk PRIMARY KEY (customer_group);


--
-- Name: customer_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pk PRIMARY KEY (customer);


--
-- Name: emp_user_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY emp_user
    ADD CONSTRAINT emp_user_pk PRIMARY KEY (emp_user);


--
-- Name: employee_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pk PRIMARY KEY (employee);


--
-- Name: employee_struct_unit_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employee_struct_unit
    ADD CONSTRAINT employee_struct_unit_pk PRIMARY KEY (employee_struct_unit);


--
-- Name: struct_unit_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY struct_unit
    ADD CONSTRAINT struct_unit_pk PRIMARY KEY (struct_unit);


--
-- Name: c_group_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX c_group_idx1 ON c_group USING btree (struct_unit);


--
-- Name: c_group_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX c_group_idx2 ON c_group USING btree (c_group);


--
-- Name: comm_device_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comm_device_idx1 ON comm_device USING btree (customer);


--
-- Name: comm_device_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comm_device_idx2 ON comm_device USING btree (comm_device_type);


--
-- Name: comm_device_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comm_device_idx3 ON comm_device USING btree (value_text varchar_pattern_ops);


--
-- Name: comm_device_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comm_device_idx4 ON comm_device USING btree (comm_device);


--
-- Name: contract_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx1 ON contract USING btree (contract);


--
-- Name: contract_idx10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx10 ON contract USING btree (updated);


--
-- Name: contract_idx11; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx11 ON contract USING btree (updated_by);


--
-- Name: contract_idx12; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx12 ON contract USING btree (struct_unit);


--
-- Name: contract_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx2 ON contract USING btree (contract_manager);


--
-- Name: contract_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx3 ON contract USING btree (customer);


--
-- Name: contract_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx4 ON contract USING btree (cnt_number varchar_pattern_ops);


--
-- Name: contract_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx5 ON contract USING btree (name);


--
-- Name: contract_idx6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx6 ON contract USING btree (valid_from);


--
-- Name: contract_idx7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx7 ON contract USING btree (valid_to);


--
-- Name: contract_idx8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx8 ON contract USING btree (created);


--
-- Name: contract_idx9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_idx9 ON contract USING btree (created_by);


--
-- Name: contract_manager_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_manager_idx1 ON contract_manager USING btree (contract);


--
-- Name: contract_manager_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_manager_idx2 ON contract_manager USING btree (employee);


--
-- Name: contract_manager_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_manager_idx3 ON contract_manager USING btree (contract_manager);


--
-- Name: contract_status_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_status_idx1 ON contract_status USING btree (contract);


--
-- Name: contract_status_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_status_idx2 ON contract_status USING btree (contract_status_type);


--
-- Name: contract_status_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_status_idx3 ON contract_status USING btree (valid_from);


--
-- Name: contract_status_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_status_idx4 ON contract_status USING btree (valid_to);


--
-- Name: contract_status_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contract_status_idx5 ON contract_status USING btree (contract_status);


--
-- Name: cst_address_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx1 ON cst_address USING btree (customer);


--
-- Name: cst_address_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx2 ON cst_address USING btree (address varchar_pattern_ops);


--
-- Name: cst_address_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx3 ON cst_address USING btree (county varchar_pattern_ops);


--
-- Name: cst_address_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx4 ON cst_address USING btree (house varchar_pattern_ops);


--
-- Name: cst_address_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx5 ON cst_address USING btree (town_county varchar_pattern_ops);


--
-- Name: cst_address_idx6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx6 ON cst_address USING btree (zip varchar_pattern_ops);


--
-- Name: cst_address_idx7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx7 ON cst_address USING btree (email varchar_pattern_ops);


--
-- Name: cst_address_idx8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_address_idx8 ON cst_address USING btree (cst_address);


--
-- Name: cst_user_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_user_idx1 ON cst_user USING btree (customer);


--
-- Name: cst_user_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_user_idx2 ON cst_user USING btree (passw varchar_pattern_ops);


--
-- Name: cst_user_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cst_user_idx3 ON cst_user USING btree (cst_user);


--
-- Name: cst_user_ux1; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cst_user_ux1 ON cst_user USING btree (username varchar_pattern_ops);


--
-- Name: customer_group_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_group_idx1 ON customer_group USING btree (customer);


--
-- Name: customer_group_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_group_idx2 ON customer_group USING btree (c_group);


--
-- Name: customer_group_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_group_idx3 ON customer_group USING btree (customer_group);


--
-- Name: customer_group_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_group_idx4 ON customer_group USING btree (customer_group);


--
-- Name: customer_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx1 ON customer USING btree (customer);


--
-- Name: customer_idx10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx10 ON customer USING btree (updated_by);


--
-- Name: customer_idx11; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx11 ON customer USING btree (note varchar_pattern_ops);


--
-- Name: customer_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx2 ON customer USING btree (last_name varchar_pattern_ops);


--
-- Name: customer_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx3 ON customer USING btree (identity_code varchar_pattern_ops);


--
-- Name: customer_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx5 ON customer USING btree (cst_state_type);


--
-- Name: customer_idx6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx6 ON customer USING btree (first_name varchar_pattern_ops);


--
-- Name: customer_idx7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx7 ON customer USING btree (created);


--
-- Name: customer_idx8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx8 ON customer USING btree (created_by);


--
-- Name: customer_idx9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_idx9 ON customer USING btree (updated);


--
-- Name: emp_user_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX emp_user_idx1 ON emp_user USING btree (employee);


--
-- Name: emp_user_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX emp_user_idx2 ON emp_user USING btree (passw varchar_pattern_ops);


--
-- Name: emp_user_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX emp_user_idx3 ON emp_user USING btree (emp_user);


--
-- Name: emp_user_ux1; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX emp_user_ux1 ON emp_user USING btree (username varchar_pattern_ops);


--
-- Name: employee_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_idx1 ON employee USING btree (current_struct_unit);


--
-- Name: employee_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_idx2 ON employee USING btree (first_name varchar_pattern_ops);


--
-- Name: employee_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_idx3 ON employee USING btree (last_name varchar_pattern_ops);


--
-- Name: employee_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_idx4 ON employee USING btree (emp_role);


--
-- Name: employee_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_idx5 ON employee USING btree (employee);


--
-- Name: employee_struct_unit_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_struct_unit_idx1 ON employee_struct_unit USING btree (struct_unit);


--
-- Name: employee_struct_unit_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_struct_unit_idx2 ON employee_struct_unit USING btree (employee);


--
-- Name: employee_struct_unit_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX employee_struct_unit_idx3 ON employee_struct_unit USING btree (employee_struct_unit);


--
-- Name: struct_unit_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX struct_unit_idx1 ON struct_unit USING btree (upper_unit);


--
-- Name: struct_unit_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX struct_unit_idx2 ON struct_unit USING btree (unit_code varchar_pattern_ops);


--
-- Name: struct_unit_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX struct_unit_idx3 ON struct_unit USING btree (struct_unit);


--
-- PostgreSQL database dump complete
--

