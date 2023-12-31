--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    description text,
    age_in_mmillions_of_years integer NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric
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
    name character varying(30),
    has_life boolean NOT NULL,
    description text,
    age_in_mmillions_of_years integer NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric,
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
-- Name: multiverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverse (
    name character varying(30) NOT NULL,
    isok integer NOT NULL,
    multiverse_id integer NOT NULL
);


ALTER TABLE public.multiverse OWNER TO freecodecamp;

--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.multiverse_multiverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiverse_multiverse_id_seq OWNER TO freecodecamp;

--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.multiverse_multiverse_id_seq OWNED BY public.multiverse.multiverse_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    description text,
    age_in_mmillions_of_years integer NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric,
    star_id integer
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
    name character varying(30),
    has_life boolean NOT NULL,
    description text,
    age_in_mmillions_of_years integer NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric,
    galaxy_id integer
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
-- Name: multiverse multiverse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse ALTER COLUMN multiverse_id SET DEFAULT nextval('public.multiverse_multiverse_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', true, 'milkyway is our own galaxy', 13610, false, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Andromeda is the closest galaxy from our own galaxy', 29000, false, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Cigare', false, 'Cigare is from the grande ourse constelation', 35000, false, 25000000);
INSERT INTO public.galaxy VALUES (4, 'Cigare2', false, 'Cigare2 is from the grande ourse constelation', 33000, false, 2500400);
INSERT INTO public.galaxy VALUES (5, 'Cigare3', false, 'Cigare3 is from the grande ourse constelation', 31000, false, 4500400);
INSERT INTO public.galaxy VALUES (6, 'Cigare4', false, 'Cigare4 is from the grande ourse constelation', 21000, false, 3500400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 'Moon is our Moon', 750, true, 3, 1);
INSERT INTO public.moon VALUES (3, 'Callisto', false, 'Callisto is not our Moon', 650, true, 450, 6);
INSERT INTO public.moon VALUES (5, 'Io', false, 'IO is not our Moon', 650, true, 451, 6);
INSERT INTO public.moon VALUES (6, 'Europe', false, 'europe is not our moon', 700, true, 460, 6);
INSERT INTO public.moon VALUES (7, 'Titan', false, 'titan is not our moon', 780, true, 600, 5);
INSERT INTO public.moon VALUES (8, 'Ganymede', false, 'Ganymede is not our Moon', 750, true, 67, 6);
INSERT INTO public.moon VALUES (9, 'Moon8', false, 'moon8 is not our Moon', 750, true, 68, 7);
INSERT INTO public.moon VALUES (10, 'Moon9', false, 'moon9 is not our Moon', 7500, true, 58, 7);
INSERT INTO public.moon VALUES (11, 'Moon10', false, 'moon10 is not our Moon', 7500, true, 548, 7);
INSERT INTO public.moon VALUES (12, 'Moon11', false, 'moon11 is not our Moon', 7500, true, 5888, 8);
INSERT INTO public.moon VALUES (13, 'Moon12', false, 'moon12 is not our Moon', 7500, true, 888, 8);
INSERT INTO public.moon VALUES (14, 'Moon13', false, 'moon13 is not our Moon', 5500, true, 488, 8);
INSERT INTO public.moon VALUES (15, 'Moon14', false, 'moon14 is not our Moon', 5500, true, 458, 8);
INSERT INTO public.moon VALUES (16, 'Moon15', false, 'moon15 is not our Moon', 5500, true, 9778, 8);
INSERT INTO public.moon VALUES (17, 'Moon16', false, 'moon16 is not our Moon', 5500, true, 9578, 9);
INSERT INTO public.moon VALUES (18, 'Moon17', false, 'moon17 is not our Moon', 5500, true, 8878, 9);
INSERT INTO public.moon VALUES (19, 'Moon18', false, 'moon18 is not our Moon', 5500, true, 8988, 9);
INSERT INTO public.moon VALUES (20, 'Moon19', false, 'moon19 is not our Moon', 5500, true, 10988, 9);
INSERT INTO public.moon VALUES (21, 'Moon20', false, 'moon20 is not our Moon', 5500, true, 1088, 9);
INSERT INTO public.moon VALUES (22, 'Moon21', false, 'moon21 is not our Moon', 5500, true, 10088, 9);


--
-- Data for Name: multiverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverse VALUES ('multiverse1', 3, 1);
INSERT INTO public.multiverse VALUES ('multiverse2', 2, 2);
INSERT INTO public.multiverse VALUES ('multiverse3', 4, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'The earth is our planet', 6000, true, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', true, 'Venus is not  our planet', 5800, true, 100, 1);
INSERT INTO public.planet VALUES (3, 'Mercure', true, 'Mercure is not  our planet', 6800, true, 150, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, 'Mars is not  our planet', 7800, true, 50, 1);
INSERT INTO public.planet VALUES (5, 'Saturne', true, 'Saturne is not  our planet', 15800, true, 450, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 'Jupiter is not  our planet', 1800, true, 550, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 'Uranus is not  our planet', 800, true, 600, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 'Neptune is not  our planet', 900, true, 700, 1);
INSERT INTO public.planet VALUES (9, 'Pluton', true, 'Pluton is not  our planet', 1900, true, 800, 1);
INSERT INTO public.planet VALUES (10, 'Eris', false, 'Eris is not  our planet', 1800, true, 900, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 'haumea is not  our planet', 1900, true, 950, 1);
INSERT INTO public.planet VALUES (12, 'MAKEMAKE', false, 'Makemake is not  our planet', 1950, true, 1000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 'The sun is our star', 4600, true, 149, 1);
INSERT INTO public.star VALUES (2, 'Androsun', false, 'The andromeda sun is not our star', 5600, true, 1493, 2);
INSERT INTO public.star VALUES (4, 'Cigare1star', false, 'The cigare1 sun is not our star', 3600, true, 1443, 3);
INSERT INTO public.star VALUES (5, 'Cigare2star', false, 'The cigare2 sun is not our star', 43600, true, 14663, 4);
INSERT INTO public.star VALUES (6, 'Cigare3star', false, 'The cigare3 sun is not our star', 43200, true, 7663, 5);
INSERT INTO public.star VALUES (7, 'Cigare4star', false, 'The cigare4 sun is not our star', 78200, true, 1263, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.multiverse_multiverse_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: multiverse multiverse_isok_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_isok_key UNIQUE (isok);


--
-- Name: multiverse multiverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_pkey PRIMARY KEY (multiverse_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


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

