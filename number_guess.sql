--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    attempts integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11);
INSERT INTO public.games VALUES (2, 423);
INSERT INTO public.games VALUES (2, 284);
INSERT INTO public.games VALUES (3, 881);
INSERT INTO public.games VALUES (3, 871);
INSERT INTO public.games VALUES (2, 25);
INSERT INTO public.games VALUES (2, 336);
INSERT INTO public.games VALUES (2, 829);
INSERT INTO public.games VALUES (4, 233);
INSERT INTO public.games VALUES (4, 466);
INSERT INTO public.games VALUES (5, 786);
INSERT INTO public.games VALUES (5, 176);
INSERT INTO public.games VALUES (4, 60);
INSERT INTO public.games VALUES (4, 702);
INSERT INTO public.games VALUES (4, 507);
INSERT INTO public.games VALUES (6, 131);
INSERT INTO public.games VALUES (6, 179);
INSERT INTO public.games VALUES (7, 864);
INSERT INTO public.games VALUES (7, 363);
INSERT INTO public.games VALUES (6, 813);
INSERT INTO public.games VALUES (6, 134);
INSERT INTO public.games VALUES (6, 21);
INSERT INTO public.games VALUES (16, 572);
INSERT INTO public.games VALUES (16, 998);
INSERT INTO public.games VALUES (17, 199);
INSERT INTO public.games VALUES (17, 31);
INSERT INTO public.games VALUES (16, 114);
INSERT INTO public.games VALUES (16, 179);
INSERT INTO public.games VALUES (16, 678);
INSERT INTO public.games VALUES (20, 966);
INSERT INTO public.games VALUES (20, 802);
INSERT INTO public.games VALUES (21, 40);
INSERT INTO public.games VALUES (21, 4);
INSERT INTO public.games VALUES (20, 184);
INSERT INTO public.games VALUES (20, 260);
INSERT INTO public.games VALUES (20, 465);
INSERT INTO public.games VALUES (1, 16);
INSERT INTO public.games VALUES (22, 361);
INSERT INTO public.games VALUES (22, 972);
INSERT INTO public.games VALUES (23, 220);
INSERT INTO public.games VALUES (23, 941);
INSERT INTO public.games VALUES (22, 100);
INSERT INTO public.games VALUES (22, 52);
INSERT INTO public.games VALUES (22, 653);
INSERT INTO public.games VALUES (24, 855);
INSERT INTO public.games VALUES (24, 582);
INSERT INTO public.games VALUES (25, 892);
INSERT INTO public.games VALUES (25, 132);
INSERT INTO public.games VALUES (24, 43);
INSERT INTO public.games VALUES (24, 996);
INSERT INTO public.games VALUES (24, 677);
INSERT INTO public.games VALUES (26, 157);
INSERT INTO public.games VALUES (26, 26);
INSERT INTO public.games VALUES (27, 45);
INSERT INTO public.games VALUES (27, 503);
INSERT INTO public.games VALUES (26, 670);
INSERT INTO public.games VALUES (26, 244);
INSERT INTO public.games VALUES (26, 557);
INSERT INTO public.games VALUES (28, 440);
INSERT INTO public.games VALUES (28, 704);
INSERT INTO public.games VALUES (29, 998);
INSERT INTO public.games VALUES (29, 960);
INSERT INTO public.games VALUES (28, 983);
INSERT INTO public.games VALUES (28, 476);
INSERT INTO public.games VALUES (28, 219);
INSERT INTO public.games VALUES (30, 199);
INSERT INTO public.games VALUES (30, 803);
INSERT INTO public.games VALUES (31, 506);
INSERT INTO public.games VALUES (31, 950);
INSERT INTO public.games VALUES (30, 155);
INSERT INTO public.games VALUES (30, 930);
INSERT INTO public.games VALUES (30, 417);
INSERT INTO public.games VALUES (32, 639);
INSERT INTO public.games VALUES (32, 934);
INSERT INTO public.games VALUES (33, 1001);
INSERT INTO public.games VALUES (33, 572);
INSERT INTO public.games VALUES (32, 353);
INSERT INTO public.games VALUES (32, 72);
INSERT INTO public.games VALUES (32, 263);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'luke');
INSERT INTO public.users VALUES (2, 'user_1716065050133');
INSERT INTO public.users VALUES (3, 'user_1716065050132');
INSERT INTO public.users VALUES (4, 'user_1716065088935');
INSERT INTO public.users VALUES (5, 'user_1716065088934');
INSERT INTO public.users VALUES (6, 'user_1716065385031');
INSERT INTO public.users VALUES (7, 'user_1716065385030');
INSERT INTO public.users VALUES (8, 'user_1716065487010');
INSERT INTO public.users VALUES (9, 'user_1716065487009');
INSERT INTO public.users VALUES (10, 'user_1716065568540');
INSERT INTO public.users VALUES (11, 'user_1716065568539');
INSERT INTO public.users VALUES (12, 'user_1716065628668');
INSERT INTO public.users VALUES (13, 'user_1716065628667');
INSERT INTO public.users VALUES (14, 'user_1716065633378');
INSERT INTO public.users VALUES (15, 'user_1716065633377');
INSERT INTO public.users VALUES (16, 'user_1716065775326');
INSERT INTO public.users VALUES (17, 'user_1716065775325');
INSERT INTO public.users VALUES (18, 'user_1716065826416');
INSERT INTO public.users VALUES (19, 'user_1716065826415');
INSERT INTO public.users VALUES (20, 'user_1716065954699');
INSERT INTO public.users VALUES (21, 'user_1716065954698');
INSERT INTO public.users VALUES (22, 'user_1716066156532');
INSERT INTO public.users VALUES (23, 'user_1716066156531');
INSERT INTO public.users VALUES (24, 'user_1716066168332');
INSERT INTO public.users VALUES (25, 'user_1716066168331');
INSERT INTO public.users VALUES (26, 'user_1716066212983');
INSERT INTO public.users VALUES (27, 'user_1716066212982');
INSERT INTO public.users VALUES (28, 'user_1716066250404');
INSERT INTO public.users VALUES (29, 'user_1716066250403');
INSERT INTO public.users VALUES (30, 'user_1716066261464');
INSERT INTO public.users VALUES (31, 'user_1716066261463');
INSERT INTO public.users VALUES (32, 'user_1716066282076');
INSERT INTO public.users VALUES (33, 'user_1716066282075');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 33, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: users users_username_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key1 UNIQUE (username);


--
-- PostgreSQL database dump complete
--

