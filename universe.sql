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
-- Name: aerospace; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aerospace (
    aerospace_id integer NOT NULL,
    name character varying(30) NOT NULL,
    material text
);


ALTER TABLE public.aerospace OWNER TO freecodecamp;

--
-- Name: aerospace_aerospace_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aerospace_aerospace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aerospace_aerospace_id_seq OWNER TO freecodecamp;

--
-- Name: aerospace_aerospace_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aerospace_aerospace_id_seq OWNED BY public.aerospace.aerospace_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    number_of_neighbours integer,
    color text
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    distance_to_planet integer,
    radius integer
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_humans boolean,
    radius_in_km numeric
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    shines boolean,
    age integer
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
-- Name: aerospace aerospace_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aerospace ALTER COLUMN aerospace_id SET DEFAULT nextval('public.aerospace_aerospace_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: aerospace; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aerospace VALUES (1, 'Apollo 11', 'Aluminum');
INSERT INTO public.aerospace VALUES (2, 'Voyager', 'Titanium');
INSERT INTO public.aerospace VALUES (3, 'Hubble Telescope', 'Carbon Fiber');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 3, 'White');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 4, 'Blue');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 2, 'Yellow');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', true, 5, 'Red');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, 1, 'Pink');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', false, 6, 'Green');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'DSG', 13, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'rhe', 14, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'ocke', 15, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'sdvkun', 16, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'DSGsd', 17, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'rhsde', 18, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'ocsdfke', 19, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'ssddvkun', 20, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'hola', 13, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'chau', 13, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'fdbd', 13, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'holsa', 13, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'chasu', 13, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'fdbsdfsd', 13, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'holsa', 13, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'chasu', 13, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'fdbsdfsd', 13, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'holsa', 13, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'chasu', 13, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'fdbsdfsd', 13, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'holsa', 13, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'chasu', 13, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'fdbsdfsd', 13, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'holsa', 13, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'chasu', 13, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'fdbsdfsd', 13, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'holsa', 13, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'chasu', 13, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'fdbsdfsd', 13, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'DSG', 5, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'rhe', 6, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'ocke', 7, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'sdvkun', 8, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'DSGsd', 9, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'rhsde', 10, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'ocsdfke', 11, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'ssddvkun', 12, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'hola', 9, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'hdfb', 9, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'hsdvfb', 9, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'hsdvfbs', 9, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sun', 1, true, 4600);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, true, 4700);
INSERT INTO public.star VALUES (7, 'Sirius', 2, true, 300);
INSERT INTO public.star VALUES (8, 'Betelgeuse', 3, false, 10000);
INSERT INTO public.star VALUES (9, 'Rigel', 3, true, 8000);
INSERT INTO public.star VALUES (10, 'Vega', 4, true, 2000);
INSERT INTO public.star VALUES (11, 'gdsfgh', 5, true, 65468);
INSERT INTO public.star VALUES (12, 'grsvs', 6, false, 784);


--
-- Name: aerospace_aerospace_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aerospace_aerospace_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: aerospace aerospace_aerospace_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aerospace
    ADD CONSTRAINT aerospace_aerospace_id_key UNIQUE (aerospace_id);


--
-- Name: aerospace aerospace_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aerospace
    ADD CONSTRAINT aerospace_pkey PRIMARY KEY (aerospace_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

