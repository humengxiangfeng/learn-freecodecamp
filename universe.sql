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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    is_hidden boolean,
    key_1 text,
    key_2 text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    calibre_kilo integer NOT NULL,
    weight integer NOT NULL,
    gravity numeric(10,5),
    information text,
    is_hidden boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    is_hidden boolean,
    star_id integer,
    key_1 text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: server; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.server (
    server_id integer NOT NULL,
    server_name character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.server OWNER TO freecodecamp;

--
-- Name: server_server_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.server_server_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.server_server_id_seq OWNER TO freecodecamp;

--
-- Name: server_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.server_server_id_seq OWNED BY public.server.server_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    key_1 text,
    key_2 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: server server_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server ALTER COLUMN server_id SET DEFAULT nextval('public.server_server_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy2', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy3', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy4', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy5', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy6', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, 123, 321, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon2', 2, 123, 321, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon3', 3, 123, 321, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 4, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 5, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 6, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 7, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 8, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 9, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 10, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 11, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 12, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 13, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 14, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 15, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 16, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 17, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 18, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 19, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 20, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 21, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 22, 123, 123, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon', 23, 123, 123, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet2', 2, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet3', 3, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet4', 4, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet5', 5, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet6', 6, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet7', 7, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet8', 8, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet9', 9, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet10', 10, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet11', 11, false, 1, NULL);
INSERT INTO public.planet VALUES ('planet12', 12, false, 1, NULL);


--
-- Data for Name: server; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.server VALUES (1, '123', NULL);
INSERT INTO public.server VALUES (2, '1234', NULL);
INSERT INTO public.server VALUES (3, '3123', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('star2', 2, 1, NULL, NULL);
INSERT INTO public.star VALUES ('star3', 3, 2, NULL, NULL);
INSERT INTO public.star VALUES ('star4', 4, 1, NULL, NULL);
INSERT INTO public.star VALUES ('star5', 5, 1, NULL, NULL);
INSERT INTO public.star VALUES ('star6', 6, 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: server_server_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.server_server_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy constraint_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon constraint_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_moon_id UNIQUE (moon_id);


--
-- Name: planet constraint_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_planet_id UNIQUE (planet_id);


--
-- Name: server constraint_server_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server
    ADD CONSTRAINT constraint_server_id UNIQUE (server_id);


--
-- Name: star constraint_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_star_id UNIQUE (star_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: server server_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server
    ADD CONSTRAINT server_pkey PRIMARY KEY (server_id);


--
-- Name: server server_server_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server
    ADD CONSTRAINT server_server_id_key UNIQUE (server_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

