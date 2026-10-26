--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    galaxy_types character varying(50),
    color character varying(20),
    size integer
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
    name character varying(50) NOT NULL,
    description text,
    distance_from_earthe integer,
    size integer,
    color character varying(20),
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
    name character varying(50) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earthe integer,
    color character varying(20),
    size integer,
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
    name character varying(50) NOT NULL,
    has_life boolean,
    color character varying(20),
    size integer,
    galaxy_id integer NOT NULL
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'Espiral', 'Blanco', 100000);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 'Espiral', 'Azulado', 220000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Elíptica', 'Amarillento', 50000);
INSERT INTO public.galaxy VALUES (4, 'Galaxia del Triángulo', 'Espiral', 'Blanco', 60000);
INSERT INTO public.galaxy VALUES (5, 'Gran Nube de Magallanes', 'Irregular', 'Plateado', 14000);
INSERT INTO public.galaxy VALUES (6, 'Galaxia del Remolino', 'Espiral', 'Azul', 76000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Satélite natural de la Tierra', 384400, 3474, 'Gris', 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Luna interior y más grande de Marte', 9377, 22, 'Rojo oscuro', 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Luna exterior de Marte', 23460, 12, 'Gris oscuro', 1);
INSERT INTO public.moon VALUES (4, 'Ío', 'Luna volcánicamente activa de Júpiter', 421700, 3643, 'Amarillo', 1);
INSERT INTO public.moon VALUES (5, 'Europa', 'Luna helada de Júpiter con un océano subterráneo', 671100, 3122, 'Blanco', 1);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 'La luna más grande del sistema solar', 1070400, 5268, 'Gris claro', 1);
INSERT INTO public.moon VALUES (7, 'Calisto', 'Luna fuertemente craterizada de Júpiter', 1882700, 4821, 'Marrón', 1);
INSERT INTO public.moon VALUES (8, 'Titán', 'La luna más grande de Saturno con atmósfera densa', 1221870, 5150, 'Naranja', 1);
INSERT INTO public.moon VALUES (9, 'Encélado', 'Luna de Saturno con géiseres de hielo de agua', 238040, 504, 'Blanco brillante', 1);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Luna de Saturno con un enorme cráter de impacto', 185520, 396, 'Gris', 1);
INSERT INTO public.moon VALUES (11, 'Tetis', 'Luna de Saturno con un gran sistema de fosas', 294619, 1062, 'Blanco', 1);
INSERT INTO public.moon VALUES (12, 'Dione', 'Luna de Saturno con acantilados de hielo brillante', 377396, 1123, 'Gris', 1);
INSERT INTO public.moon VALUES (13, 'Rea', 'Segunda luna más grande de Saturno', 527108, 1528, 'Blanco', 1);
INSERT INTO public.moon VALUES (14, 'Jápeto', 'Luna de Saturno con un hemisferio oscuro y otro claro', 3560820, 1469, 'Negro y blanco', 1);
INSERT INTO public.moon VALUES (15, 'Titania', 'La luna más grande de Urano', 435910, 1578, 'Gris', 1);
INSERT INTO public.moon VALUES (16, 'Oberón', 'Luna más distante de los grandes satélites de Urano', 583520, 1522, 'Rojo pardusco', 1);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'La más oscura de las grandes lunas de Urano', 266000, 1169, 'Gris oscuro', 1);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Luna con la superficie más brillante de Urano', 191020, 1158, 'Blanco claro', 1);
INSERT INTO public.moon VALUES (19, 'Tritón', 'La luna más grande de Neptuno con órbita retrógrada', 354759, 2707, 'Rosa pálido', 1);
INSERT INTO public.moon VALUES (20, 'Proteo', 'Luna irregular y oscura de Neptuno', 117647, 420, 'Gris oscuro', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', true, 4503, 77, 'Gris', 4879, 1);
INSERT INTO public.planet VALUES (2, 'Venus', true, 4503, 41, 'Amarillo', 12104, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', true, 4543, 0, 'Azul', 12742, 1);
INSERT INTO public.planet VALUES (4, 'Marte', true, 4503, 78, 'Rojo', 6779, 1);
INSERT INTO public.planet VALUES (5, 'Júpiter', true, 4503, 628, 'Naranja', 139820, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', true, 4503, 1275, 'Dorado', 116460, 1);
INSERT INTO public.planet VALUES (7, 'Urano', true, 4503, 2723, 'Celeste', 50724, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', true, 4503, 4351, 'Azul oscuro', 49244, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', true, 4000, 600, 'Verde azulado', 30000, 1);
INSERT INTO public.planet VALUES (10, 'Próxima Centauri b', true, 4850, 4, 'Rojo oscuro', 14000, 1);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', true, 5000, 159, 'Azul', 180000, 1);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', true, 7600, 40, 'Gris claro', 11500, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', true, 'Amarillo', 1392700, 1);
INSERT INTO public.star VALUES (2, 'Sirio', false, 'Blanco', 2380000, 1);
INSERT INTO public.star VALUES (3, 'Betel', false, 'Rojo', 1200000000, 2);
INSERT INTO public.star VALUES (4, 'Alfa Centauri A', false, 'Amarillo', 1700000, 2);
INSERT INTO public.star VALUES (5, 'Procyon', false, 'Blanco-amarillo', 2900000, 3);
INSERT INTO public.star VALUES (6, 'Vega', false, 'Azul-blanco', 3700000, 3);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sol', 'Estrella central de nuestro sistema solar', 4603, 0);
INSERT INTO public.sun VALUES (2, 'Alfa Centauri A', 'Estrella principal del sistema estelar Alfa Centauri', 6000, 4);
INSERT INTO public.sun VALUES (3, 'Sirio A', 'Estrella más brillante del cielo nocturno visible', 230, 8);


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
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sun_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_id_key UNIQUE (sun_id);


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

