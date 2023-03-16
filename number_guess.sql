--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
    game_id integer NOT NULL,
    number_of_guesses_before_win integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.games.game_id;


--
-- Name: game_users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.game_users OWNER TO freecodecamp;

--
-- Name: game_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_user_user_id_seq OWNER TO freecodecamp;

--
-- Name: game_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_user_user_id_seq OWNED BY public.game_users.user_id;


--
-- Name: game_users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_users ALTER COLUMN user_id SET DEFAULT nextval('public.game_user_user_id_seq'::regclass);


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Data for Name: game_users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_users VALUES (205, 'Obed Nuertey');
INSERT INTO public.game_users VALUES (206, 'user_1678903542211');
INSERT INTO public.game_users VALUES (207, 'user_1678903542210');
INSERT INTO public.game_users VALUES (208, 'user_1678903651670');
INSERT INTO public.game_users VALUES (209, 'user_1678903651669');
INSERT INTO public.game_users VALUES (210, 'user_1678903757596');
INSERT INTO public.game_users VALUES (211, 'user_1678903757595');
INSERT INTO public.game_users VALUES (212, 'user_1678903810687');
INSERT INTO public.game_users VALUES (213, 'user_1678903810686');
INSERT INTO public.game_users VALUES (214, 'user_1678904103099');
INSERT INTO public.game_users VALUES (215, 'user_1678904103098');
INSERT INTO public.game_users VALUES (216, 'user_1678904536598');
INSERT INTO public.game_users VALUES (217, 'user_1678904536597');
INSERT INTO public.game_users VALUES (218, 'user_1678904566793');
INSERT INTO public.game_users VALUES (219, 'user_1678904566792');
INSERT INTO public.game_users VALUES (220, 'user_1678904587307');
INSERT INTO public.game_users VALUES (221, 'user_1678904587306');
INSERT INTO public.game_users VALUES (222, 'user_1678904892356');
INSERT INTO public.game_users VALUES (223, 'user_1678904892355');
INSERT INTO public.game_users VALUES (224, 'user_1678915675584');
INSERT INTO public.game_users VALUES (225, 'user_1678915675583');
INSERT INTO public.game_users VALUES (226, 'user_1678915782452');
INSERT INTO public.game_users VALUES (227, 'user_1678915782451');
INSERT INTO public.game_users VALUES (228, 'user_1678915875458');
INSERT INTO public.game_users VALUES (229, 'user_1678915875457');
INSERT INTO public.game_users VALUES (230, 'user_1678915904809');
INSERT INTO public.game_users VALUES (231, 'user_1678915904808');
INSERT INTO public.game_users VALUES (232, 'user_1678915935912');
INSERT INTO public.game_users VALUES (233, 'user_1678915935911');
INSERT INTO public.game_users VALUES (234, 'user_1678916044676');
INSERT INTO public.game_users VALUES (235, 'user_1678916044675');
INSERT INTO public.game_users VALUES (236, 'user_1678916117060');
INSERT INTO public.game_users VALUES (237, 'user_1678916117059');
INSERT INTO public.game_users VALUES (238, 'user_1678916197240');
INSERT INTO public.game_users VALUES (239, 'user_1678916197239');
INSERT INTO public.game_users VALUES (240, 'user_1678916248569');
INSERT INTO public.game_users VALUES (241, 'user_1678916248568');
INSERT INTO public.game_users VALUES (242, 'user_1678916421495');
INSERT INTO public.game_users VALUES (243, 'user_1678916421494');
INSERT INTO public.game_users VALUES (244, 'user_1678916725545');
INSERT INTO public.game_users VALUES (245, 'user_1678916725544');
INSERT INTO public.game_users VALUES (246, 'user_1678921328711');
INSERT INTO public.game_users VALUES (247, 'user_1678921328710');
INSERT INTO public.game_users VALUES (248, 'user_1678921636090');
INSERT INTO public.game_users VALUES (249, 'user_1678921636089');


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (121, 9, 205);
INSERT INTO public.games VALUES (122, 189, 206);
INSERT INTO public.games VALUES (123, 126, 206);
INSERT INTO public.games VALUES (124, 401, 207);
INSERT INTO public.games VALUES (125, 251, 207);
INSERT INTO public.games VALUES (126, 407, 206);
INSERT INTO public.games VALUES (127, 246, 206);
INSERT INTO public.games VALUES (128, 132, 206);
INSERT INTO public.games VALUES (129, 86, 208);
INSERT INTO public.games VALUES (130, 449, 208);
INSERT INTO public.games VALUES (131, 158, 209);
INSERT INTO public.games VALUES (132, 1000, 209);
INSERT INTO public.games VALUES (133, 891, 208);
INSERT INTO public.games VALUES (134, 516, 208);
INSERT INTO public.games VALUES (135, 967, 208);
INSERT INTO public.games VALUES (136, 642, 210);
INSERT INTO public.games VALUES (137, 682, 210);
INSERT INTO public.games VALUES (138, 820, 211);
INSERT INTO public.games VALUES (139, 440, 211);
INSERT INTO public.games VALUES (140, 214, 210);
INSERT INTO public.games VALUES (141, 273, 210);
INSERT INTO public.games VALUES (142, 246, 210);
INSERT INTO public.games VALUES (143, 94, 212);
INSERT INTO public.games VALUES (144, 64, 212);
INSERT INTO public.games VALUES (145, 242, 213);
INSERT INTO public.games VALUES (146, 84, 213);
INSERT INTO public.games VALUES (147, 902, 212);
INSERT INTO public.games VALUES (148, 550, 212);
INSERT INTO public.games VALUES (149, 300, 212);
INSERT INTO public.games VALUES (150, 10, 205);
INSERT INTO public.games VALUES (151, 17, 205);
INSERT INTO public.games VALUES (152, 11, 205);
INSERT INTO public.games VALUES (153, 8, 205);
INSERT INTO public.games VALUES (154, 36, 214);
INSERT INTO public.games VALUES (155, 954, 214);
INSERT INTO public.games VALUES (156, 248, 215);
INSERT INTO public.games VALUES (157, 151, 215);
INSERT INTO public.games VALUES (158, 235, 214);
INSERT INTO public.games VALUES (159, 473, 214);
INSERT INTO public.games VALUES (160, 742, 214);
INSERT INTO public.games VALUES (161, 49, 216);
INSERT INTO public.games VALUES (162, 531, 216);
INSERT INTO public.games VALUES (163, 540, 217);
INSERT INTO public.games VALUES (164, 723, 217);
INSERT INTO public.games VALUES (165, 205, 216);
INSERT INTO public.games VALUES (166, 482, 216);
INSERT INTO public.games VALUES (167, 881, 216);
INSERT INTO public.games VALUES (168, 311, 218);
INSERT INTO public.games VALUES (169, 515, 218);
INSERT INTO public.games VALUES (170, 341, 219);
INSERT INTO public.games VALUES (171, 242, 219);
INSERT INTO public.games VALUES (172, 201, 218);
INSERT INTO public.games VALUES (173, 86, 218);
INSERT INTO public.games VALUES (174, 542, 218);
INSERT INTO public.games VALUES (175, 842, 220);
INSERT INTO public.games VALUES (176, 233, 220);
INSERT INTO public.games VALUES (177, 538, 221);
INSERT INTO public.games VALUES (178, 846, 221);
INSERT INTO public.games VALUES (179, 153, 220);
INSERT INTO public.games VALUES (180, 770, 220);
INSERT INTO public.games VALUES (181, 887, 220);
INSERT INTO public.games VALUES (182, 102, 222);
INSERT INTO public.games VALUES (183, 195, 222);
INSERT INTO public.games VALUES (184, 236, 223);
INSERT INTO public.games VALUES (185, 194, 223);
INSERT INTO public.games VALUES (186, 284, 222);
INSERT INTO public.games VALUES (187, 26, 222);
INSERT INTO public.games VALUES (188, 501, 222);
INSERT INTO public.games VALUES (189, 730, 224);
INSERT INTO public.games VALUES (190, 552, 224);
INSERT INTO public.games VALUES (191, 590, 225);
INSERT INTO public.games VALUES (192, 613, 225);
INSERT INTO public.games VALUES (193, 707, 224);
INSERT INTO public.games VALUES (194, 244, 224);
INSERT INTO public.games VALUES (195, 318, 224);
INSERT INTO public.games VALUES (196, 11, 205);
INSERT INTO public.games VALUES (197, 493, 226);
INSERT INTO public.games VALUES (198, 983, 226);
INSERT INTO public.games VALUES (199, 462, 227);
INSERT INTO public.games VALUES (200, 99, 227);
INSERT INTO public.games VALUES (201, 428, 226);
INSERT INTO public.games VALUES (202, 607, 226);
INSERT INTO public.games VALUES (203, 699, 226);
INSERT INTO public.games VALUES (204, 803, 228);
INSERT INTO public.games VALUES (205, 109, 228);
INSERT INTO public.games VALUES (206, 775, 229);
INSERT INTO public.games VALUES (207, 228, 229);
INSERT INTO public.games VALUES (208, 425, 228);
INSERT INTO public.games VALUES (209, 492, 228);
INSERT INTO public.games VALUES (210, 371, 228);
INSERT INTO public.games VALUES (211, 470, 230);
INSERT INTO public.games VALUES (212, 672, 230);
INSERT INTO public.games VALUES (213, 222, 231);
INSERT INTO public.games VALUES (214, 284, 231);
INSERT INTO public.games VALUES (215, 864, 230);
INSERT INTO public.games VALUES (216, 593, 230);
INSERT INTO public.games VALUES (217, 240, 230);
INSERT INTO public.games VALUES (218, 555, 232);
INSERT INTO public.games VALUES (219, 642, 232);
INSERT INTO public.games VALUES (220, 851, 233);
INSERT INTO public.games VALUES (221, 548, 233);
INSERT INTO public.games VALUES (222, 423, 232);
INSERT INTO public.games VALUES (223, 16, 232);
INSERT INTO public.games VALUES (224, 747, 232);
INSERT INTO public.games VALUES (225, 317, 234);
INSERT INTO public.games VALUES (226, 682, 234);
INSERT INTO public.games VALUES (227, 566, 235);
INSERT INTO public.games VALUES (228, 7, 235);
INSERT INTO public.games VALUES (229, 603, 234);
INSERT INTO public.games VALUES (230, 223, 234);
INSERT INTO public.games VALUES (231, 836, 234);
INSERT INTO public.games VALUES (232, 893, 236);
INSERT INTO public.games VALUES (233, 931, 236);
INSERT INTO public.games VALUES (234, 838, 237);
INSERT INTO public.games VALUES (235, 390, 237);
INSERT INTO public.games VALUES (236, 177, 236);
INSERT INTO public.games VALUES (237, 943, 236);
INSERT INTO public.games VALUES (238, 803, 236);
INSERT INTO public.games VALUES (239, 621, 238);
INSERT INTO public.games VALUES (240, 41, 238);
INSERT INTO public.games VALUES (241, 742, 239);
INSERT INTO public.games VALUES (242, 630, 239);
INSERT INTO public.games VALUES (243, 604, 238);
INSERT INTO public.games VALUES (244, 903, 238);
INSERT INTO public.games VALUES (245, 430, 238);
INSERT INTO public.games VALUES (246, 476, 240);
INSERT INTO public.games VALUES (247, 520, 240);
INSERT INTO public.games VALUES (248, 588, 241);
INSERT INTO public.games VALUES (249, 851, 241);
INSERT INTO public.games VALUES (250, 198, 240);
INSERT INTO public.games VALUES (251, 50, 240);
INSERT INTO public.games VALUES (252, 219, 240);
INSERT INTO public.games VALUES (253, 991, 242);
INSERT INTO public.games VALUES (254, 960, 242);
INSERT INTO public.games VALUES (255, 718, 243);
INSERT INTO public.games VALUES (256, 963, 243);
INSERT INTO public.games VALUES (257, 96, 242);
INSERT INTO public.games VALUES (258, 513, 242);
INSERT INTO public.games VALUES (259, 314, 242);
INSERT INTO public.games VALUES (260, 51, 244);
INSERT INTO public.games VALUES (261, 125, 244);
INSERT INTO public.games VALUES (262, 535, 245);
INSERT INTO public.games VALUES (263, 272, 245);
INSERT INTO public.games VALUES (264, 802, 244);
INSERT INTO public.games VALUES (265, 595, 244);
INSERT INTO public.games VALUES (266, 353, 244);
INSERT INTO public.games VALUES (267, 838, 246);
INSERT INTO public.games VALUES (268, 26, 246);
INSERT INTO public.games VALUES (269, 734, 247);
INSERT INTO public.games VALUES (270, 642, 247);
INSERT INTO public.games VALUES (271, 88, 246);
INSERT INTO public.games VALUES (272, 495, 246);
INSERT INTO public.games VALUES (273, 208, 246);
INSERT INTO public.games VALUES (274, 459, 248);
INSERT INTO public.games VALUES (275, 905, 248);
INSERT INTO public.games VALUES (276, 179, 249);
INSERT INTO public.games VALUES (277, 368, 249);
INSERT INTO public.games VALUES (278, 40, 248);
INSERT INTO public.games VALUES (279, 672, 248);
INSERT INTO public.games VALUES (280, 48, 248);


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 280, true);


--
-- Name: game_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_user_user_id_seq', 249, true);


--
-- Name: games game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: game_users game_user_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_users
    ADD CONSTRAINT game_user_pkey PRIMARY KEY (user_id);


--
-- Name: games game_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.game_users(user_id);


--
-- PostgreSQL database dump complete
--

