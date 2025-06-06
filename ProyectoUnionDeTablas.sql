--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-06-06 09:28:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16397)
-- Name: school; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA school;


ALTER SCHEMA school OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16492)
-- Name: courses; Type: TABLE; Schema: school; Owner: postgres
--

CREATE TABLE school.courses (
    course_id integer NOT NULL,
    course_name character varying(100) NOT NULL,
    duration_hours integer NOT NULL,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE school.courses OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16491)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: school; Owner: postgres
--

CREATE SEQUENCE school.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE school.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 220
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: school; Owner: postgres
--

ALTER SEQUENCE school.courses_course_id_seq OWNED BY school.courses.course_id;


--
-- TOC entry 223 (class 1259 OID 16501)
-- Name: instructors; Type: TABLE; Schema: school; Owner: postgres
--

CREATE TABLE school.instructors (
    instructor_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    salary numeric(6,0) NOT NULL,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE school.instructors OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16500)
-- Name: instructors_instructor_id_seq; Type: SEQUENCE; Schema: school; Owner: postgres
--

CREATE SEQUENCE school.instructors_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE school.instructors_instructor_id_seq OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 222
-- Name: instructors_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: school; Owner: postgres
--

ALTER SEQUENCE school.instructors_instructor_id_seq OWNED BY school.instructors.instructor_id;


--
-- TOC entry 224 (class 1259 OID 16509)
-- Name: student_courses_instructor; Type: TABLE; Schema: school; Owner: postgres
--

CREATE TABLE school.student_courses_instructor (
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    instructor_id integer NOT NULL,
    enrollment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE school.student_courses_instructor OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16482)
-- Name: students; Type: TABLE; Schema: school; Owner: postgres
--

CREATE TABLE school.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    age integer,
    email character varying(100) DEFAULT NULL::character varying,
    load_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE school.students OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16481)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: school; Owner: postgres
--

CREATE SEQUENCE school.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE school.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 218
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: school; Owner: postgres
--

ALTER SEQUENCE school.students_student_id_seq OWNED BY school.students.student_id;


--
-- TOC entry 4761 (class 2604 OID 16495)
-- Name: courses course_id; Type: DEFAULT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.courses ALTER COLUMN course_id SET DEFAULT nextval('school.courses_course_id_seq'::regclass);


--
-- TOC entry 4764 (class 2604 OID 16504)
-- Name: instructors instructor_id; Type: DEFAULT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.instructors ALTER COLUMN instructor_id SET DEFAULT nextval('school.instructors_instructor_id_seq'::regclass);


--
-- TOC entry 4757 (class 2604 OID 16485)
-- Name: students student_id; Type: DEFAULT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.students ALTER COLUMN student_id SET DEFAULT nextval('school.students_student_id_seq'::regclass);


--
-- TOC entry 4927 (class 0 OID 16492)
-- Dependencies: 221
-- Data for Name: courses; Type: TABLE DATA; Schema: school; Owner: postgres
--

COPY school.courses (course_id, course_name, duration_hours, load_date, update_date) FROM stdin;
1	Mathematics	31	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
2	Physics	36	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
3	Chemistry	39	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
4	Biology	24	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
5	History	30	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
6	Geography	89	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
7	Computer Science	70	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
8	Philosophy	87	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
9	Economics	55	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
10	Literature	86	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
11	Music	50	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
12	Art	47	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
13	Statistics	95	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
14	Programming	73	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
15	Sociology	94	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
16	Psychology	55	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
17	Engineering	77	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
18	Design	83	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
19	Marketing	65	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
20	Law	30	2025-05-27 17:16:01.752229	2025-05-27 17:16:01.752229
\.


--
-- TOC entry 4929 (class 0 OID 16501)
-- Dependencies: 223
-- Data for Name: instructors; Type: TABLE DATA; Schema: school; Owner: postgres
--

COPY school.instructors (instructor_id, first_name, last_name, email, salary, load_date, update_date) FROM stdin;
1	Oscar	Smith	oscar.smith@college.org	67207	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
2	Charlie	Garcia	charlie.garcia@college.org	67528	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
3	Oscar	Wilson	oscar.wilson@college.org	53296	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
4	Hannah	Williams	hannah.williams@college.org	45285	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
5	Charlie	Brown	charlie.brown@school.edu	38891	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
6	Charlie	Brown	charlie.brown@university.com	50259	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
7	Michael	Smith	michael.smith@college.org	63839	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
8	Kevin	Johnson	kevin.johnson@school.edu	54981	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
9	Kevin	Miller	kevin.miller@college.org	39798	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
10	Alice	Johnson	alice.johnson@university.com	37922	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
11	Tina	Davis	tina.davis@university.com	86997	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
12	Kevin	Williams	kevin.williams@school.edu	78763	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
13	Frank	Davis	frank.davis@university.com	76340	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
14	Frank	Brown	frank.brown@university.com	51025	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
15	Charlie	Jones	charlie.jones@university.com	85449	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
16	Paula	Rodriguez	paula.rodriguez@school.edu	56985	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
17	Quentin	Brown	quentin.brown@college.org	63570	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
18	David	Wilson	david.wilson@college.org	34311	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
19	Alice	Smith	alice.smith@school.edu	37717	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
20	Bob	Johnson	bob.johnson@university.com	75476	2025-05-29 09:55:03.547164	2025-05-29 09:55:03.547164
\.


--
-- TOC entry 4930 (class 0 OID 16509)
-- Dependencies: 224
-- Data for Name: student_courses_instructor; Type: TABLE DATA; Schema: school; Owner: postgres
--

COPY school.student_courses_instructor (student_id, course_id, instructor_id, enrollment_date) FROM stdin;
1	2	2	2024-09-17 10:32:23
2	3	3	2024-07-01 08:22:10
3	4	4	2025-04-06 21:26:48
4	5	5	2024-07-01 07:19:43
5	6	6	2025-05-05 12:01:47
6	7	7	2025-04-02 08:22:11
7	8	8	2024-10-02 12:24:34
8	9	9	2024-10-26 08:01:58
9	10	10	2025-02-18 09:35:05
10	11	11	2024-06-04 00:59:29
11	12	12	2024-10-15 14:07:29
12	13	13	2024-07-27 09:55:27
13	14	14	2025-03-12 02:46:09
14	15	15	2025-03-02 02:20:55
15	16	16	2024-06-15 23:16:43
16	17	17	2025-03-26 16:44:42
17	18	18	2024-12-19 14:17:38
18	19	19	2025-04-19 21:26:15
19	20	20	2024-05-29 16:46:21
20	1	1	2024-07-08 03:44:28
21	2	2	2025-05-19 13:13:05
22	3	3	2024-06-12 05:31:20
23	4	4	2025-02-23 11:44:26
24	5	5	2024-07-13 02:41:02
25	6	6	2024-07-22 09:02:41
26	7	7	2025-02-04 02:13:40
27	8	8	2025-03-04 10:08:26
28	9	9	2024-06-04 18:16:20
29	10	10	2024-08-24 02:29:12
30	11	11	2024-08-01 16:57:40
31	12	12	2025-03-15 15:44:04
32	13	13	2025-04-27 13:40:05
33	14	14	2024-11-29 05:51:32
34	15	15	2024-09-02 11:48:47
35	16	16	2024-05-30 01:10:25
36	17	17	2024-11-19 15:38:30
37	18	18	2024-10-09 14:42:27
38	19	19	2024-12-23 09:02:13
39	20	20	2025-04-03 02:41:02
40	1	1	2025-02-17 21:20:56
41	2	2	2025-05-09 01:10:13
42	3	3	2024-11-09 02:39:28
43	4	4	2024-08-29 14:44:12
44	5	5	2025-01-31 08:56:48
45	6	6	2024-12-05 07:41:41
46	7	7	2024-08-02 03:35:02
47	8	8	2025-05-23 10:20:22
48	9	9	2025-04-23 17:39:30
49	10	10	2024-09-08 01:13:24
50	11	11	2024-10-17 07:08:30
51	12	12	2025-04-04 18:42:52
52	13	13	2024-10-24 02:32:11
53	14	14	2024-11-08 13:17:42
54	15	15	2025-03-26 10:47:34
55	16	16	2025-03-21 20:09:16
56	17	17	2024-11-07 19:40:11
57	18	18	2025-05-21 14:46:35
58	19	19	2025-03-30 20:38:19
59	20	20	2024-10-21 14:58:29
60	1	1	2024-07-12 22:31:34
61	2	2	2025-04-05 04:22:13
62	3	3	2025-03-02 06:17:49
63	4	4	2024-12-24 04:02:57
64	5	5	2025-02-15 00:24:34
65	6	6	2024-05-31 20:30:10
66	7	7	2025-05-15 15:09:57
67	8	8	2024-11-08 06:30:05
68	9	9	2024-10-24 05:51:02
69	10	10	2024-07-29 02:55:20
70	11	11	2024-12-14 20:12:59
71	12	12	2024-06-19 12:08:30
72	13	13	2024-09-23 00:41:55
73	14	14	2025-03-25 17:24:06
74	15	15	2024-06-24 16:42:37
75	16	16	2024-11-18 06:48:20
76	17	17	2024-08-25 23:17:48
77	18	18	2025-04-09 02:44:22
78	19	19	2025-02-07 18:35:32
79	20	20	2024-07-30 00:37:21
80	1	1	2024-10-22 03:51:21
81	2	2	2025-03-17 00:45:54
82	3	3	2025-05-09 19:17:59
83	4	4	2025-01-30 22:15:07
84	5	5	2024-09-10 12:43:58
85	6	6	2025-05-28 16:41:50
86	7	7	2024-09-13 20:17:30
87	8	8	2025-04-21 20:28:57
88	9	9	2024-10-28 18:53:08
89	10	10	2025-02-13 14:41:57
90	11	11	2024-06-30 13:33:29
91	12	12	2024-09-17 21:00:10
92	13	13	2025-05-11 05:52:00
93	14	14	2025-05-16 21:09:14
94	15	15	2024-06-30 01:04:00
95	16	16	2025-01-23 08:01:37
96	17	17	2025-04-22 06:13:10
97	18	18	2024-08-31 08:27:54
98	19	19	2025-01-13 23:46:59
99	20	20	2024-09-21 07:22:44
100	1	1	2024-09-26 23:28:18
\.


--
-- TOC entry 4925 (class 0 OID 16482)
-- Dependencies: 219
-- Data for Name: students; Type: TABLE DATA; Schema: school; Owner: postgres
--

COPY school.students (student_id, first_name, last_name, age, email, load_date, update_date) FROM stdin;
1	Megan	Chang	30	megan.chang@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
2	Billy	Sheppard	31	billy.sheppard@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
3	Richard	Bowers	19	richard.bowers@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
4	Tammy	Howard	26	tammy.howard@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
5	William	Campbell	34	william.campbell@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
6	Christine	King	33	christine.king@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
7	Tonya	Patrick	30	tonya.patrick@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
8	Kyle	Blair	27	kyle.blair@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
9	Mark	Castro	33	mark.castro@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
10	Ryan	Carr	29	ryan.carr@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
11	Tammy	Woods	36	tammy.woods@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
12	Jorge	Trujillo	24	jorge.trujillo@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
13	Sabrina	Davis	34	sabrina.davis@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
14	Jennifer	Glover	22	jennifer.glover@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
15	Aaron	Snyder	27	aaron.snyder@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
16	John	Nguyen	22	john.nguyen@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
17	James	Bradley	21	james.bradley@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
18	Linda	Thomas	37	linda.thomas@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
19	Seth	Miller	26	seth.miller@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
20	Nancy	Bolton	35	nancy.bolton@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
21	Daniel	Arnold	40	daniel.arnold@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
22	David	Cook	37	david.cook@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
23	James	Lloyd	22	james.lloyd@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
24	Briana	Wallace	27	briana.wallace@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
25	Lauren	Stewart	21	lauren.stewart@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
26	Kelly	Lopez	20	kelly.lopez@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
27	Antonio	Zavala	39	antonio.zavala@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
28	Thomas	Davis	28	thomas.davis@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
29	Nancy	Mclean	33	nancy.mclean@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
30	Rachael	Leblanc	35	rachael.leblanc@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
31	Frances	Massey	21	frances.massey@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
32	Joshua	Cain	29	joshua.cain@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
33	Patty	Lawrence	31	patty.lawrence@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
34	Bethany	Hayes	28	bethany.hayes@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
35	Danielle	Graves	37	danielle.graves@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
36	Christopher	Salazar	38	christopher.salazar@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
37	Brenda	Rogers	24	brenda.rogers@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
38	John	Dennis	35	john.dennis@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
39	Janice	Watson	33	janice.watson@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
40	Marvin	Cabrera	32	marvin.cabrera@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
41	Krista	Wyatt	34	krista.wyatt@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
42	Brandon	Berry	26	brandon.berry@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
43	Carrie	Jones	19	carrie.jones@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
44	Cynthia	Obrien	35	cynthia.obrien@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
45	David	Davis	18	david.davis@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
46	Benjamin	Smith	20	benjamin.smith@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
47	Jennifer	Mendoza	30	jennifer.mendoza@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
48	Lauren	Giles	40	lauren.giles@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
49	Amy	Oliver	39	amy.oliver@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
50	Chad	Jones	38	chad.jones@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
51	Michael	White	18	michael.white@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
52	Tanner	Carlson	37	tanner.carlson@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
53	Vanessa	Gonzalez	33	vanessa.gonzalez@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
54	Rebecca	Harrison	28	rebecca.harrison@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
55	Gary	Chambers	25	gary.chambers@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
56	Kristina	Moore	28	kristina.moore@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
57	Matthew	King	40	matthew.king@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
58	Sandra	Wade	20	sandra.wade@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
59	Thomas	Ortiz	24	thomas.ortiz@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
60	Nancy	Lowery	36	nancy.lowery@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
61	Michael	Monroe	25	michael.monroe@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
62	Eric	Vazquez	25	eric.vazquez@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
63	Judith	Rogers	22	judith.rogers@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
64	Amy	Taylor	35	amy.taylor@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
65	Michael	Roberts	32	michael.roberts@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
66	Brittany	Mcclain	20	brittany.mcclain@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
67	David	Collins	20	david.collins@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
68	Robert	Curtis	28	robert.curtis@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
69	Brooke	Hale	34	brooke.hale@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
70	John	Walsh	33	john.walsh@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
71	Jennifer	Nunez	21	jennifer.nunez@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
72	Anthony	Savage	27	anthony.savage@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
73	Robert	Bates	35	robert.bates@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
74	Gabriel	Brown	27	gabriel.brown@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
75	Eric	Rose	40	eric.rose@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
76	Rebecca	Munoz	21	rebecca.munoz@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
77	Nicole	Simpson	35	nicole.simpson@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
78	Mary	Williams	28	mary.williams@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
79	Jacob	Key	35	jacob.key@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
80	Tiffany	Monroe	24	tiffany.monroe@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
81	Valerie	Morales	37	valerie.morales@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
82	Robert	Smith	35	robert.smith@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
83	Jennifer	Smith	36	jennifer.smith@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
84	Allison	Davis	27	allison.davis@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
85	Charlene	Gonzalez	32	charlene.gonzalez@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
86	Joshua	Good	20	joshua.good@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
87	Thomas	Livingston	37	thomas.livingston@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
88	Christopher	Hill	30	christopher.hill@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
89	Lauren	Wilson	28	lauren.wilson@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
90	Dennis	Meyer	36	dennis.meyer@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
91	Deanna	Wilson	25	deanna.wilson@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
92	Joshua	Smith	27	joshua.smith@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
93	Jamie	Green	23	jamie.green@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
94	Stacey	Mays	24	stacey.mays@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
95	Meghan	Ali	23	meghan.ali@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
96	Diana	Joseph	19	diana.joseph@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
97	Danielle	Watson	37	danielle.watson@hotmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
98	Gregory	Bennett	39	gregory.bennett@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
99	Alan	Hernandez	26	alan.hernandez@yahoo.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
100	Matthew	Richardson	33	matthew.richardson@gmail.com	2025-05-27 17:13:07.991867	2025-05-27 17:13:07.991867
\.


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 220
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: school; Owner: postgres
--

SELECT pg_catalog.setval('school.courses_course_id_seq', 20, true);


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 222
-- Name: instructors_instructor_id_seq; Type: SEQUENCE SET; Schema: school; Owner: postgres
--

SELECT pg_catalog.setval('school.instructors_instructor_id_seq', 1, false);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 218
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: school; Owner: postgres
--

SELECT pg_catalog.setval('school.students_student_id_seq', 100, true);


--
-- TOC entry 4771 (class 2606 OID 16499)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4773 (class 2606 OID 16508)
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (instructor_id);


--
-- TOC entry 4775 (class 2606 OID 16514)
-- Name: student_courses_instructor student_courses_instructor_pkey; Type: CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.student_courses_instructor
    ADD CONSTRAINT student_courses_instructor_pkey PRIMARY KEY (student_id, course_id, instructor_id);


--
-- TOC entry 4769 (class 2606 OID 16490)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4776 (class 2606 OID 16520)
-- Name: student_courses_instructor student_courses_instructor_course_id_fkey; Type: FK CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.student_courses_instructor
    ADD CONSTRAINT student_courses_instructor_course_id_fkey FOREIGN KEY (course_id) REFERENCES school.courses(course_id);


--
-- TOC entry 4777 (class 2606 OID 16525)
-- Name: student_courses_instructor student_courses_instructor_instructor_id_fkey; Type: FK CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.student_courses_instructor
    ADD CONSTRAINT student_courses_instructor_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES school.instructors(instructor_id);


--
-- TOC entry 4778 (class 2606 OID 16515)
-- Name: student_courses_instructor student_courses_instructor_student_id_fkey; Type: FK CONSTRAINT; Schema: school; Owner: postgres
--

ALTER TABLE ONLY school.student_courses_instructor
    ADD CONSTRAINT student_courses_instructor_student_id_fkey FOREIGN KEY (student_id) REFERENCES school.students(student_id);


-- Completed on 2025-06-06 09:28:40

--
-- PostgreSQL database dump complete
--

