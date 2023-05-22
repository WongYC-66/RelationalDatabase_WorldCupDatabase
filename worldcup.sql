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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (390, 2018, 'Final', 1998, 1992, 4, 2);
INSERT INTO public.games VALUES (391, 2018, 'Third Place', 1988, 1984, 2, 0);
INSERT INTO public.games VALUES (392, 2018, 'Semi-Final', 1992, 1984, 2, 1);
INSERT INTO public.games VALUES (393, 2018, 'Semi-Final', 1998, 1988, 1, 0);
INSERT INTO public.games VALUES (394, 2018, 'Quarter-Final', 1992, 1994, 3, 2);
INSERT INTO public.games VALUES (395, 2018, 'Quarter-Final', 1984, 1986, 2, 0);
INSERT INTO public.games VALUES (396, 2018, 'Quarter-Final', 1988, 1990, 2, 1);
INSERT INTO public.games VALUES (397, 2018, 'Quarter-Final', 1998, 1996, 2, 0);
INSERT INTO public.games VALUES (398, 2018, 'Eighth-Final', 1984, 1985, 2, 1);
INSERT INTO public.games VALUES (399, 2018, 'Eighth-Final', 1986, 1987, 1, 0);
INSERT INTO public.games VALUES (400, 2018, 'Eighth-Final', 1988, 1989, 3, 2);
INSERT INTO public.games VALUES (401, 2018, 'Eighth-Final', 1990, 1991, 2, 0);
INSERT INTO public.games VALUES (402, 2018, 'Eighth-Final', 1992, 1993, 2, 1);
INSERT INTO public.games VALUES (403, 2018, 'Eighth-Final', 1994, 1995, 2, 1);
INSERT INTO public.games VALUES (404, 2018, 'Eighth-Final', 1996, 1997, 2, 1);
INSERT INTO public.games VALUES (405, 2018, 'Eighth-Final', 1998, 1999, 4, 3);
INSERT INTO public.games VALUES (406, 2014, 'Final', 2006, 1999, 1, 0);
INSERT INTO public.games VALUES (407, 2014, 'Third Place', 2008, 1990, 3, 0);
INSERT INTO public.games VALUES (408, 2014, 'Semi-Final', 1999, 2008, 1, 0);
INSERT INTO public.games VALUES (409, 2014, 'Semi-Final', 2006, 1990, 7, 1);
INSERT INTO public.games VALUES (410, 2014, 'Quarter-Final', 2008, 2010, 1, 0);
INSERT INTO public.games VALUES (411, 2014, 'Quarter-Final', 1999, 1988, 1, 0);
INSERT INTO public.games VALUES (412, 2014, 'Quarter-Final', 1990, 1985, 2, 1);
INSERT INTO public.games VALUES (413, 2014, 'Quarter-Final', 2006, 1998, 1, 0);
INSERT INTO public.games VALUES (414, 2014, 'Eighth-Final', 1990, 2001, 2, 1);
INSERT INTO public.games VALUES (415, 2014, 'Eighth-Final', 1985, 1996, 2, 0);
INSERT INTO public.games VALUES (416, 2014, 'Eighth-Final', 1998, 2005, 2, 0);
INSERT INTO public.games VALUES (417, 2014, 'Eighth-Final', 2006, 2007, 2, 1);
INSERT INTO public.games VALUES (418, 2014, 'Eighth-Final', 2008, 1991, 2, 1);
INSERT INTO public.games VALUES (419, 2014, 'Eighth-Final', 2010, 2011, 2, 1);
INSERT INTO public.games VALUES (420, 2014, 'Eighth-Final', 1999, 1987, 1, 0);
INSERT INTO public.games VALUES (421, 2014, 'Eighth-Final', 1988, 2015, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1984, 'England');
INSERT INTO public.teams VALUES (1985, 'Colombia');
INSERT INTO public.teams VALUES (1986, 'Sweden');
INSERT INTO public.teams VALUES (1987, 'Switzerland');
INSERT INTO public.teams VALUES (1988, 'Belgium');
INSERT INTO public.teams VALUES (1989, 'Japan');
INSERT INTO public.teams VALUES (1990, 'Brazil');
INSERT INTO public.teams VALUES (1991, 'Mexico');
INSERT INTO public.teams VALUES (1992, 'Croatia');
INSERT INTO public.teams VALUES (1993, 'Denmark');
INSERT INTO public.teams VALUES (1994, 'Russia');
INSERT INTO public.teams VALUES (1995, 'Spain');
INSERT INTO public.teams VALUES (1996, 'Uruguay');
INSERT INTO public.teams VALUES (1997, 'Portugal');
INSERT INTO public.teams VALUES (1998, 'France');
INSERT INTO public.teams VALUES (1999, 'Argentina');
INSERT INTO public.teams VALUES (2001, 'Chile');
INSERT INTO public.teams VALUES (2005, 'Nigeria');
INSERT INTO public.teams VALUES (2006, 'Germany');
INSERT INTO public.teams VALUES (2007, 'Algeria');
INSERT INTO public.teams VALUES (2008, 'Netherlands');
INSERT INTO public.teams VALUES (2010, 'Costa Rica');
INSERT INTO public.teams VALUES (2011, 'Greece');
INSERT INTO public.teams VALUES (2015, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 421, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 2015, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

