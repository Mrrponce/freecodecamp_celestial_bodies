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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    description text,
    age_in_millions_of_years integer,
    planet_types integer
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
    planet_id integer,
    description text,
    has_life boolean
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
    has_life boolean,
    description text,
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
    name character varying(20) NOT NULL,
    distance_from_earth numeric(5,2),
    galaxy_id integer,
    description text
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Dwarf planet and largest object in the asteroid belt between Mars and Jupiter');
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'One of the largest objects in the asteroid belt, with a differentiated interior');
INSERT INTO public.asteroid VALUES (3, 'Eros', 'Near-Earth asteroid and the first to be orbited and landed on by a spacecraft');
INSERT INTO public.asteroid VALUES (4, 'Icarus', 'Potentially hazardous asteroid with a close approach to Earth');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', true, 'Home to the Solar System', 13000, 8);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Closest spiral galaxy to the Milky Way', 2000, 5);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'Third-largest galaxy in the local group', 1300, 3);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', false, 'Spiral galaxy with a bright nucleus', 1200, 4);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', false, 'Interacting galaxy with classic spiral', 1400, 7);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', false, 'Contains supermassive black hole', 6000, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 1, 'Earth''s only natural satellite', false);
INSERT INTO public.moon VALUES (22, 'Phobos', 2, 'Largest moon of Mars', false);
INSERT INTO public.moon VALUES (23, 'Deimos', 2, 'Smaller moon of Mars', false);
INSERT INTO public.moon VALUES (24, 'Ganymede', 3, 'Largest moon of Jupiter and in the solar system', false);
INSERT INTO public.moon VALUES (25, 'Europa', 3, 'Moon of Jupiter with an ice-covered ocean', false);
INSERT INTO public.moon VALUES (26, 'Callisto', 3, 'Moon of Jupiter with a heavily cratered surface', false);
INSERT INTO public.moon VALUES (27, 'Titan', 4, 'Largest moon of Saturn, with a thick atmosphere', false);
INSERT INTO public.moon VALUES (28, 'Enceladus', 4, 'Moon of Saturn with geysers of water vapor', false);
INSERT INTO public.moon VALUES (29, 'Miranda', 5, 'Smallest and innermost of Uranus'' five major moons', false);
INSERT INTO public.moon VALUES (30, 'Triton', 6, 'Largest moon of Neptune, with geysers and nitrogen ice', false);
INSERT INTO public.moon VALUES (31, 'Charon', 16, 'Largest moon of Pluto, with a binary system with Pluto', false);
INSERT INTO public.moon VALUES (32, 'Phoebe', 16, 'Irregular moon of Saturn, with a retrograde orbit', false);
INSERT INTO public.moon VALUES (33, 'Io', 16, 'Innermost of Jupiter''s four Galilean moons, with active volcanoes', false);
INSERT INTO public.moon VALUES (34, 'Dione', 16, 'Moon of Saturn with a heavily cratered surface', false);
INSERT INTO public.moon VALUES (35, 'Larissa', 17, 'Neptune''s fifth-largest moon', false);
INSERT INTO public.moon VALUES (36, 'Hydra', 17, 'Pluto''s second-largest moon', false);
INSERT INTO public.moon VALUES (37, 'Amalthea', 17, 'One of Jupiter''s small inner moons', false);
INSERT INTO public.moon VALUES (38, 'Iapetus', 19, 'Moon of Saturn with a two-tone coloration', false);
INSERT INTO public.moon VALUES (39, 'Phobetor', 19, 'Mars'' third-largest moon', false);
INSERT INTO public.moon VALUES (40, 'Prometheus', 19, 'Moon of Saturn, known for its interaction with Saturn''s F ring', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'Third planet from the Sun, home to life', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 'Fourth planet from the Sun, known as the Red Planet', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', false, 'Fifth planet from the Sun, a gas giant', 1);
INSERT INTO public.planet VALUES (4, 'Venus', false, 'Second planet from the Sun, similar in size to Earth', 1);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 'Sixth planet from the Sun, known for its rings', 1);
INSERT INTO public.planet VALUES (6, 'Neptune', false, 'Eighth and farthest known planet from the Sun', 1);
INSERT INTO public.planet VALUES (16, 'Mercury', false, 'Closest planet to the Sun, no atmosphere', 1);
INSERT INTO public.planet VALUES (17, 'Uranus', false, 'Seventh planet from the Sun, tilted on its side', 1);
INSERT INTO public.planet VALUES (18, 'Pluto', false, 'Dwarf planet in the Kuiper Belt', 1);
INSERT INTO public.planet VALUES (19, 'Moltenia', true, 'Innermost planet of a distant star system', 2);
INSERT INTO public.planet VALUES (20, 'Aqualis', true, 'Ocean-covered planet with diverse marine life', 3);
INSERT INTO public.planet VALUES (21, 'Zephyria', false, 'Giant gas planet with turbulent atmospheres', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.00, 1, 'Our home star');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4.24, 1, 'Closest star system to the Sun');
INSERT INTO public.star VALUES (3, 'Sirius', 8.60, 2, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 643.00, 1, 'Red supergiant in the Orion constellation');
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4.24, 1, 'Closest known star to the Sun');
INSERT INTO public.star VALUES (6, 'Antares', 604.00, 3, 'Red supergiant in Scorpius constellation');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: moon unique_moon_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name_column UNIQUE (name);


--
-- Name: galaxy unique_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_column UNIQUE (name);


--
-- Name: planet unique_planet_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name_column UNIQUE (name);


--
-- Name: star unique_star_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name_column UNIQUE (name);


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

