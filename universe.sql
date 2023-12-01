--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: dwarf; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf (
    dwarf_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_dwarf boolean,
    volume_in_bilions_cubic_kilometers numeric
);


ALTER TABLE public.dwarf OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_dwarf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_dwarf_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_dwarf_id_seq OWNED BY public.dwarf.dwarf_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    constellation character varying(50),
    galaxy_type text,
    age_in_bilions_of_years real
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    star_id integer,
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    star_id integer,
    has_life boolean
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    orbiting_planets integer,
    mass_in_suns real,
    age_in_bilions_of_years real
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
-- Name: dwarf dwarf_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf ALTER COLUMN dwarf_id SET DEFAULT nextval('public.dwarf_dwarf_id_seq'::regclass);


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
-- Data for Name: dwarf; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf VALUES (1, 'Pluto', true, 7.06);
INSERT INTO public.dwarf VALUES (2, 'Haumea', true, 1.98);
INSERT INTO public.dwarf VALUES (3, 'Makemake', true, 1.53);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 'S', 13.36);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Andromeda', 'S', 10.4);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Triangulum', 'S', 5.5);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'Ursa Major', 'S', 0.1);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 'Ursa Major', 'IG', 0.01);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Virgo', 'EG', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 1, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, 1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1, 1, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1, 1, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 1, 1, 5);
INSERT INTO public.moon VALUES (6, 'Io', 1, 1, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 1, 1, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1, 1, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 1, 1, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 1, 1, 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1, 1, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1, 1, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 1, 1, 6);
INSERT INTO public.moon VALUES (14, 'Titania', 1, 1, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 1, 1, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 1, 1, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 1, 1, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 1, 1, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 1, 1, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 1, 1, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 1, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 1, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 1, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 1, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 1, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 1, false);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 1, 2, false);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 1, 3, false);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 1, 4, false);
INSERT INTO public.planet VALUES (12, 'WASP-121b', 1, 5, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 8, 1, 4.6);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 1, 0.12, 4.85);
INSERT INTO public.star VALUES (3, 'TRAPPIST-1', 1, 7, 0.08, 7);
INSERT INTO public.star VALUES (4, 'Kepler-186', 1, 1, 0.54, 4);
INSERT INTO public.star VALUES (5, 'WASP-121', 1, 1, 1.35, NULL);
INSERT INTO public.star VALUES (6, 'HD 219134', 1, 1, 0.8, 12);


--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_dwarf_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dwarf dwarf_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_name_key UNIQUE (name);


--
-- Name: dwarf dwarf_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_pkey PRIMARY KEY (dwarf_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

