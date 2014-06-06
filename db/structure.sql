--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ethnicities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ethnicities (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);


--
-- Name: ethnicities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ethnicities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ethnicities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ethnicities_id_seq OWNED BY ethnicities.id;


--
-- Name: horoscopes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE horoscopes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: horoscopes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE horoscopes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: horoscopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE horoscopes_id_seq OWNED BY horoscopes.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE languages (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);


--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE languages_id_seq OWNED BY languages.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE messages (
    id integer NOT NULL,
    subject character varying(255),
    body text,
    sender_username character varying(255),
    sender_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    message_id integer,
<<<<<<< HEAD
    recipient_id integer,
    recipient_username character varying(255)
=======
<<<<<<< HEAD
    recipient_id integer,
    recipient_username character varying(255)
=======
    read boolean DEFAULT false,
    recipient_id integer
>>>>>>> 6603674b181d2cc07ab24fa239c47a16f648a7f3
>>>>>>> profile_page
);


--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: occupations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE occupations (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: occupations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE occupations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: occupations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE occupations_id_seq OWNED BY occupations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
<<<<<<< HEAD
=======
<<<<<<< HEAD
-- Name: user_ethnicities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE user_ethnicities (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    ethnicity_id integer,
    user_id integer
);


--
-- Name: user_ethnicities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_ethnicities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_ethnicities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_ethnicities_id_seq OWNED BY user_ethnicities.id;


--
=======
>>>>>>> 6603674b181d2cc07ab24fa239c47a16f648a7f3
>>>>>>> profile_page
-- Name: user_languages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE user_languages (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    language_id integer,
    user_id integer
);


--
-- Name: user_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_languages_id_seq OWNED BY user_languages.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    first_name character varying(255),
    last_name character varying(255),
    username character varying(255),
    type character varying(255),
    preference character varying(255),
    birthday date,
    age integer,
    about text,
    image_url character varying(255),
    height numeric(6,2),
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> profile_page
    smoking boolean
=======
    smoking boolean,
    horoscope character varying(255),
    horoscope_id integer
>>>>>>> 6603674b181d2cc07ab24fa239c47a16f648a7f3
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ethnicities ALTER COLUMN id SET DEFAULT nextval('ethnicities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY horoscopes ALTER COLUMN id SET DEFAULT nextval('horoscopes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY languages ALTER COLUMN id SET DEFAULT nextval('languages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY occupations ALTER COLUMN id SET DEFAULT nextval('occupations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

<<<<<<< HEAD
=======
<<<<<<< HEAD
ALTER TABLE ONLY user_ethnicities ALTER COLUMN id SET DEFAULT nextval('user_ethnicities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

=======
>>>>>>> 6603674b181d2cc07ab24fa239c47a16f648a7f3
>>>>>>> profile_page
ALTER TABLE ONLY user_languages ALTER COLUMN id SET DEFAULT nextval('user_languages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: ethnicities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ethnicities
    ADD CONSTRAINT ethnicities_pkey PRIMARY KEY (id);


--
-- Name: horoscopes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY horoscopes
    ADD CONSTRAINT horoscopes_pkey PRIMARY KEY (id);


--
-- Name: languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: occupations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY occupations
    ADD CONSTRAINT occupations_pkey PRIMARY KEY (id);


--
<<<<<<< HEAD
=======
<<<<<<< HEAD
-- Name: user_ethnicities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY user_ethnicities
    ADD CONSTRAINT user_ethnicities_pkey PRIMARY KEY (id);


--
=======
>>>>>>> 6603674b181d2cc07ab24fa239c47a16f648a7f3
>>>>>>> profile_page
-- Name: user_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY user_languages
    ADD CONSTRAINT user_languages_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20140602135646');

INSERT INTO schema_migrations (version) VALUES ('20140602135806');

INSERT INTO schema_migrations (version) VALUES ('20140602135934');

INSERT INTO schema_migrations (version) VALUES ('20140602141656');

INSERT INTO schema_migrations (version) VALUES ('20140602142456');

INSERT INTO schema_migrations (version) VALUES ('20140602160442');

INSERT INTO schema_migrations (version) VALUES ('20140602160546');

INSERT INTO schema_migrations (version) VALUES ('20140602164750');

INSERT INTO schema_migrations (version) VALUES ('20140602164912');

INSERT INTO schema_migrations (version) VALUES ('20140602172334');

INSERT INTO schema_migrations (version) VALUES ('20140603082720');

INSERT INTO schema_migrations (version) VALUES ('20140603084400');

INSERT INTO schema_migrations (version) VALUES ('20140603091958');

INSERT INTO schema_migrations (version) VALUES ('20140603100012');

INSERT INTO schema_migrations (version) VALUES ('20140603165643');

INSERT INTO schema_migrations (version) VALUES ('20140604093425');

INSERT INTO schema_migrations (version) VALUES ('20140604121617');

INSERT INTO schema_migrations (version) VALUES ('20140604123643');

INSERT INTO schema_migrations (version) VALUES ('20140604164334');

INSERT INTO schema_migrations (version) VALUES ('20140605093342');

INSERT INTO schema_migrations (version) VALUES ('20140605135034');

INSERT INTO schema_migrations (version) VALUES ('20140605144608');

INSERT INTO schema_migrations (version) VALUES ('20140605144615');

INSERT INTO schema_migrations (version) VALUES ('20140605145844');

INSERT INTO schema_migrations (version) VALUES ('20140605152607');

INSERT INTO schema_migrations (version) VALUES ('20140605170129');

INSERT INTO schema_migrations (version) VALUES ('20140606081332');

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
INSERT INTO schema_migrations (version) VALUES ('20140606085541');

INSERT INTO schema_migrations (version) VALUES ('20140606095233');

>>>>>>> 6603674b181d2cc07ab24fa239c47a16f648a7f3
INSERT INTO schema_migrations (version) VALUES ('20140606095321');

INSERT INTO schema_migrations (version) VALUES ('20140606103942');

>>>>>>> profile_page
