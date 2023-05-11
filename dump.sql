--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: appointments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE appointments (
    id integer NOT NULL,
    appointment_date timestamp without time zone,
    id_requirement integer,
    id_status integer,
    id_format_appointments integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE appointments OWNER TO postgres;

--
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE appointments_id_seq OWNER TO postgres;

--
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE appointments_id_seq OWNED BY appointments.id;


--
-- Name: audits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE audits (
    id integer NOT NULL,
    id_user integer,
    id_role integer,
    action character varying(500),
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE audits OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE audits_id_seq OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE audits_id_seq OWNED BY audits.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categories (
    id integer NOT NULL,
    category character varying(500),
    id_condition integer,
    id_deparment integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: charges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE charges (
    id integer NOT NULL,
    charge character varying(100)
);


ALTER TABLE charges OWNER TO postgres;

--
-- Name: charges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE charges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE charges_id_seq OWNER TO postgres;

--
-- Name: charges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE charges_id_seq OWNED BY charges.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE companies (
    id integer NOT NULL,
    name character varying(100),
    rif character varying(25),
    signature boolean
);


ALTER TABLE companies OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE companies_id_seq OWNED BY companies.id;


--
-- Name: conditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE conditions (
    id integer NOT NULL,
    condition character varying(50)
);


ALTER TABLE conditions OWNER TO postgres;

--
-- Name: conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE conditions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conditions_id_seq OWNER TO postgres;

--
-- Name: conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE conditions_id_seq OWNED BY conditions.id;


--
-- Name: deparments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE deparments (
    id integer NOT NULL,
    deparment character varying(100),
    id_condition integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE deparments OWNER TO postgres;

--
-- Name: deparments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE deparments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE deparments_id_seq OWNER TO postgres;

--
-- Name: deparments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE deparments_id_seq OWNED BY deparments.id;


--
-- Name: domain_has_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE domain_has_role (
    id integer NOT NULL,
    domain character varying(500),
    id_role integer
);


ALTER TABLE domain_has_role OWNER TO postgres;

--
-- Name: domain_has_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE domain_has_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE domain_has_role_id_seq OWNER TO postgres;

--
-- Name: domain_has_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE domain_has_role_id_seq OWNED BY domain_has_role.id;


--
-- Name: format_appointments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE format_appointments (
    id integer NOT NULL,
    format_appointment character varying(100)
);


ALTER TABLE format_appointments OWNER TO postgres;

--
-- Name: format_appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE format_appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE format_appointments_id_seq OWNER TO postgres;

--
-- Name: format_appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE format_appointments_id_seq OWNED BY format_appointments.id;


--
-- Name: groupings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE groupings (
    id integer NOT NULL,
    "grouping" character varying(100)
);


ALTER TABLE groupings OWNER TO postgres;

--
-- Name: groupings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE groupings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE groupings_id_seq OWNER TO postgres;

--
-- Name: groupings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE groupings_id_seq OWNED BY groupings.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE permissions (
    id integer NOT NULL,
    name character varying(50),
    guard_name character varying(50),
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE permissions OWNER TO postgres;

--
-- Name: permissions_has_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE permissions_has_role (
    id integer NOT NULL,
    id_permissions integer,
    id_role integer
);


ALTER TABLE permissions_has_role OWNER TO postgres;

--
-- Name: permissions_has_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE permissions_has_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE permissions_has_role_id_seq OWNER TO postgres;

--
-- Name: permissions_has_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE permissions_has_role_id_seq OWNED BY permissions_has_role.id;


--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE permissions_id_seq OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE permissions_id_seq OWNED BY permissions.id;


--
-- Name: phinxlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE phinxlog (
    version bigint NOT NULL,
    migration_name character varying(100),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    breakpoint boolean DEFAULT false NOT NULL
);


ALTER TABLE phinxlog OWNER TO postgres;

--
-- Name: requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE requests (
    id integer NOT NULL,
    num_request integer,
    num_registry integer,
    nombre_servicio character varying(500),
    approach character varying(500),
    response character varying(500),
    name character varying(100),
    id_category integer,
    id_requirement integer,
    id_condition integer,
    id_status integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE requests OWNER TO postgres;

--
-- Name: requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE requests_id_seq OWNER TO postgres;

--
-- Name: requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE requests_id_seq OWNED BY requests.id;


--
-- Name: requirements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE requirements (
    id integer NOT NULL,
    amount_requests integer,
    id_format_appointment integer,
    id_user integer,
    id_condition integer,
    id_status integer,
    id_worker integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE requirements OWNER TO postgres;

--
-- Name: requirements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE requirements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE requirements_id_seq OWNER TO postgres;

--
-- Name: requirements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE requirements_id_seq OWNED BY requirements.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE roles (
    id integer NOT NULL,
    role character varying(100)
);


ALTER TABLE roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE settings (
    id integer NOT NULL,
    variable character varying(70),
    value character varying(500),
    id_condition integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE settings OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE settings_id_seq OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE status (
    id integer NOT NULL,
    status character varying(100),
    status_number integer,
    id_grouping integer,
    id_condition integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE status OWNER TO postgres;

--
-- Name: status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE status_id_seq OWNER TO postgres;

--
-- Name: status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE status_id_seq OWNED BY status.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tokens (
    id integer NOT NULL,
    token character varying(1501),
    id_user integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE tokens OWNER TO postgres;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tokens_id_seq OWNER TO postgres;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tokens_id_seq OWNED BY tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(100),
    surname character varying(100),
    email character varying(100),
    identification character varying(10),
    pass character varying(255),
    phone character varying(11),
    id_role integer NOT NULL,
    id_condition integer DEFAULT 1 NOT NULL,
    id_signature integer DEFAULT 1 NOT NULL,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: workers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE workers (
    id integer NOT NULL,
    id_charge integer,
    id_user integer,
    id_status integer,
    id_deparment integer,
    created timestamp without time zone,
    updated timestamp without time zone
);


ALTER TABLE workers OWNER TO postgres;

--
-- Name: workers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE workers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workers_id_seq OWNER TO postgres;

--
-- Name: workers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE workers_id_seq OWNED BY workers.id;


--
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY appointments ALTER COLUMN id SET DEFAULT nextval('appointments_id_seq'::regclass);


--
-- Name: audits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audits ALTER COLUMN id SET DEFAULT nextval('audits_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: charges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY charges ALTER COLUMN id SET DEFAULT nextval('charges_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY companies ALTER COLUMN id SET DEFAULT nextval('companies_id_seq'::regclass);


--
-- Name: conditions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conditions ALTER COLUMN id SET DEFAULT nextval('conditions_id_seq'::regclass);


--
-- Name: deparments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deparments ALTER COLUMN id SET DEFAULT nextval('deparments_id_seq'::regclass);


--
-- Name: domain_has_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY domain_has_role ALTER COLUMN id SET DEFAULT nextval('domain_has_role_id_seq'::regclass);


--
-- Name: format_appointments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY format_appointments ALTER COLUMN id SET DEFAULT nextval('format_appointments_id_seq'::regclass);


--
-- Name: groupings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groupings ALTER COLUMN id SET DEFAULT nextval('groupings_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions ALTER COLUMN id SET DEFAULT nextval('permissions_id_seq'::regclass);


--
-- Name: permissions_has_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions_has_role ALTER COLUMN id SET DEFAULT nextval('permissions_has_role_id_seq'::regclass);


--
-- Name: requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requests ALTER COLUMN id SET DEFAULT nextval('requests_id_seq'::regclass);


--
-- Name: requirements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements ALTER COLUMN id SET DEFAULT nextval('requirements_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY status ALTER COLUMN id SET DEFAULT nextval('status_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tokens ALTER COLUMN id SET DEFAULT nextval('tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: workers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workers ALTER COLUMN id SET DEFAULT nextval('workers_id_seq'::regclass);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: charges charges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY charges
    ADD CONSTRAINT charges_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: conditions conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conditions
    ADD CONSTRAINT conditions_pkey PRIMARY KEY (id);


--
-- Name: deparments deparments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deparments
    ADD CONSTRAINT deparments_pkey PRIMARY KEY (id);


--
-- Name: domain_has_role domain_has_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY domain_has_role
    ADD CONSTRAINT domain_has_role_pkey PRIMARY KEY (id);


--
-- Name: format_appointments format_appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY format_appointments
    ADD CONSTRAINT format_appointments_pkey PRIMARY KEY (id);


--
-- Name: groupings groupings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groupings
    ADD CONSTRAINT groupings_pkey PRIMARY KEY (id);


--
-- Name: permissions_has_role permissions_has_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions_has_role
    ADD CONSTRAINT permissions_has_role_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: phinxlog phinxlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY phinxlog
    ADD CONSTRAINT phinxlog_pkey PRIMARY KEY (version);


--
-- Name: requests requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);


--
-- Name: requirements requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements
    ADD CONSTRAINT requirements_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: workers workers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workers
    ADD CONSTRAINT workers_pkey PRIMARY KEY (id);


--
-- Name: appointments_id_format_appointments; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appointments_id_format_appointments ON appointments USING btree (id_format_appointments);


--
-- Name: appointments_id_requirement; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appointments_id_requirement ON appointments USING btree (id_requirement);


--
-- Name: appointments_id_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appointments_id_status ON appointments USING btree (id_status);


--
-- Name: audits_id_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audits_id_role ON audits USING btree (id_role);


--
-- Name: audits_id_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audits_id_user ON audits USING btree (id_user);


--
-- Name: categories_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_id_condition ON categories USING btree (id_condition);


--
-- Name: categories_id_deparment; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_id_deparment ON categories USING btree (id_deparment);


--
-- Name: deparments_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deparments_id_condition ON deparments USING btree (id_condition);


--
-- Name: domain_has_role_id_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX domain_has_role_id_role ON domain_has_role USING btree (id_role);


--
-- Name: permissions_has_role_id_permissions; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX permissions_has_role_id_permissions ON permissions_has_role USING btree (id_permissions);


--
-- Name: permissions_has_role_id_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX permissions_has_role_id_role ON permissions_has_role USING btree (id_role);


--
-- Name: requests_id_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requests_id_category ON requests USING btree (id_category);


--
-- Name: requests_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requests_id_condition ON requests USING btree (id_condition);


--
-- Name: requests_id_requirement; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requests_id_requirement ON requests USING btree (id_requirement);


--
-- Name: requests_id_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requests_id_status ON requests USING btree (id_status);


--
-- Name: requests_num_registry; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX requests_num_registry ON requests USING btree (num_registry);


--
-- Name: requests_num_request; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX requests_num_request ON requests USING btree (num_request);


--
-- Name: requirements_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requirements_id_condition ON requirements USING btree (id_condition);


--
-- Name: requirements_id_format_appointment; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requirements_id_format_appointment ON requirements USING btree (id_format_appointment);


--
-- Name: requirements_id_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requirements_id_status ON requirements USING btree (id_status);


--
-- Name: requirements_id_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requirements_id_user ON requirements USING btree (id_user);


--
-- Name: requirements_id_worker; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX requirements_id_worker ON requirements USING btree (id_worker);


--
-- Name: settings_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX settings_id_condition ON settings USING btree (id_condition);


--
-- Name: status_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX status_id_condition ON status USING btree (id_condition);


--
-- Name: status_id_grouping; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX status_id_grouping ON status USING btree (id_grouping);


--
-- Name: tokens_id_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tokens_id_user ON tokens USING btree (id_user);


--
-- Name: users_id_condition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_id_condition ON users USING btree (id_condition);


--
-- Name: users_id_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_id_role ON users USING btree (id_role);


--
-- Name: users_id_signature; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_id_signature ON users USING btree (id_signature);


--
-- Name: users_identification; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_identification ON users USING btree (identification);


--
-- Name: workers_id_charge; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workers_id_charge ON workers USING btree (id_charge);


--
-- Name: workers_id_deparment; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workers_id_deparment ON workers USING btree (id_deparment);


--
-- Name: workers_id_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workers_id_status ON workers USING btree (id_status);


--
-- Name: workers_id_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workers_id_user ON workers USING btree (id_user);


--
-- Name: workers id_chargeWorker; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workers
    ADD CONSTRAINT "id_chargeWorker" FOREIGN KEY (id_charge) REFERENCES charges(id);


--
-- Name: categories id_conditionCategory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT "id_conditionCategory" FOREIGN KEY (id_condition) REFERENCES conditions(id);


--
-- Name: requirements id_conditionRequirements; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements
    ADD CONSTRAINT "id_conditionRequirements" FOREIGN KEY (id_condition) REFERENCES conditions(id);


--
-- Name: settings id_conditionSetting; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT "id_conditionSetting" FOREIGN KEY (id_condition) REFERENCES conditions(id);


--
-- Name: users id_conditionUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT "id_conditionUsers" FOREIGN KEY (id_condition) REFERENCES conditions(id);


--
-- Name: categories id_deparmentCategory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT "id_deparmentCategory" FOREIGN KEY (id_deparment) REFERENCES deparments(id);


--
-- Name: workers id_deparmentWorker; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workers
    ADD CONSTRAINT "id_deparmentWorker" FOREIGN KEY (id_deparment) REFERENCES deparments(id);


--
-- Name: requirements id_format_appointmentRequirements; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements
    ADD CONSTRAINT "id_format_appointmentRequirements" FOREIGN KEY (id_format_appointment) REFERENCES format_appointments(id);


--
-- Name: permissions_has_role id_permiRole; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions_has_role
    ADD CONSTRAINT "id_permiRole" FOREIGN KEY (id_permissions) REFERENCES permissions(id);


--
-- Name: audits id_roleAudits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT "id_roleAudits" FOREIGN KEY (id_role) REFERENCES roles(id);


--
-- Name: permissions_has_role id_rolePermi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions_has_role
    ADD CONSTRAINT "id_rolePermi" FOREIGN KEY (id_role) REFERENCES roles(id);


--
-- Name: domain_has_role id_rolePermiDom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY domain_has_role
    ADD CONSTRAINT "id_rolePermiDom" FOREIGN KEY (id_role) REFERENCES roles(id);


--
-- Name: users id_roleUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT "id_roleUsers" FOREIGN KEY (id_role) REFERENCES roles(id);


--
-- Name: users id_signatureUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT "id_signatureUsers" FOREIGN KEY (id_signature) REFERENCES companies(id);


--
-- Name: requirements id_statusRequirements; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements
    ADD CONSTRAINT "id_statusRequirements" FOREIGN KEY (id_status) REFERENCES status(id);


--
-- Name: workers id_statusWorker; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workers
    ADD CONSTRAINT "id_statusWorker" FOREIGN KEY (id_status) REFERENCES status(id);


--
-- Name: audits id_userAudits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT "id_userAudits" FOREIGN KEY (id_user) REFERENCES users(id);


--
-- Name: requirements id_userRequirements; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements
    ADD CONSTRAINT "id_userRequirements" FOREIGN KEY (id_user) REFERENCES users(id);


--
-- Name: tokens id_userToken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tokens
    ADD CONSTRAINT "id_userToken" FOREIGN KEY (id_user) REFERENCES users(id);


--
-- Name: workers id_userWorker; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workers
    ADD CONSTRAINT "id_userWorker" FOREIGN KEY (id_user) REFERENCES users(id);


--
-- Name: requirements id_workerRequirements; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY requirements
    ADD CONSTRAINT "id_workerRequirements" FOREIGN KEY (id_worker) REFERENCES workers(id);


--
-- PostgreSQL database dump complete
--

