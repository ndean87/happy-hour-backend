--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: flatironschool
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO flatironschool;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: flatironschool
--

CREATE TABLE comments (
    id bigint NOT NULL,
    comments text,
    user_name character varying,
    venue_id integer
);


ALTER TABLE comments OWNER TO flatironschool;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: flatironschool
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO flatironschool;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flatironschool
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: flatironschool
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO flatironschool;

--
-- Name: specials; Type: TABLE; Schema: public; Owner: flatironschool
--

CREATE TABLE specials (
    id bigint NOT NULL,
    day character varying,
    special character varying,
    "time" character varying,
    venue_id integer
);


ALTER TABLE specials OWNER TO flatironschool;

--
-- Name: specials_id_seq; Type: SEQUENCE; Schema: public; Owner: flatironschool
--

CREATE SEQUENCE specials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE specials_id_seq OWNER TO flatironschool;

--
-- Name: specials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flatironschool
--

ALTER SEQUENCE specials_id_seq OWNED BY specials.id;


--
-- Name: venues; Type: TABLE; Schema: public; Owner: flatironschool
--

CREATE TABLE venues (
    id bigint NOT NULL,
    venue_name character varying,
    rating integer,
    address character varying,
    state character varying,
    city character varying,
    zipcode integer,
    phone_number character varying,
    neighborhood character varying,
    latitude double precision,
    longitude double precision
);


ALTER TABLE venues OWNER TO flatironschool;

--
-- Name: venues_id_seq; Type: SEQUENCE; Schema: public; Owner: flatironschool
--

CREATE SEQUENCE venues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE venues_id_seq OWNER TO flatironschool;

--
-- Name: venues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flatironschool
--

ALTER SEQUENCE venues_id_seq OWNED BY venues.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: specials id; Type: DEFAULT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY specials ALTER COLUMN id SET DEFAULT nextval('specials_id_seq'::regclass);


--
-- Name: venues id; Type: DEFAULT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY venues ALTER COLUMN id SET DEFAULT nextval('venues_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: flatironschool
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-11-24 23:53:15.669808	2017-11-24 23:53:15.669808
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: flatironschool
--

COPY comments (id, comments, user_name, venue_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: flatironschool
--

COPY schema_migrations (version) FROM stdin;
20171120224231
20171120224254
20171120224305
\.


--
-- Data for Name: specials; Type: TABLE DATA; Schema: public; Owner: flatironschool
--

COPY specials (id, day, special, "time", venue_id) FROM stdin;
1	Sunday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
2	Monday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
3	Tuesday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
4	Wednesday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
5	Thursday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
6	Friday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
7	Saturday	$4 Well Drinks and Shots; $3 Tap Beers; $2 Bottle Beers	4PM-7PM	1
8	Sunday	Reduced Price Mixed Drinks	11AM-8PM	4
9	Monday	Reduced Price Mixed Drinks (11am-8pm); $5 Frozen Margaritas (8pm-12am)	11AM-8PM;8PM-12AM	4
10	Tuesday	Reduced Price Mixed Drinks (11am-8pm); 100oz Beer Tube, 10 Sliders, and 2 Orders of Your Choice of Fries for $42.95 (8pm-12am)	11AM-8PM;8PM-12AM	4
11	Wednesday	Reduced Price Mixed Drinks (11am-8pm); Double Wings for Your Money! (8pm-12am)	11AM-8PM;8PM-12AM	4
12	Thursday	Reduced Price Mixed Drinks (11am-8pm); $12.95 Nip Buckets, One Order of Wings and An Order of Fries for $6.95 (8pm-12am)	11AM-8PM;8PM-12AM	4
13	Friday	Reduced Price Mixed Drinks	11AM-8PM	4
14	Saturday	Reduced Price Mixed Drinks	11AM-8PM	4
15	Sunday	All Beer 1/2 Price - Drafts, Bottles, Cans and Pitchers (All Day & Night); $4 Jameson Shots (8pm-Close)	All Day	6
16	Monday	Whole Bar 1/2 Price (11:30-8pm); $4 You Call It Mixed Drinks, Drafts, Bottles, Cans, Shots (8pm-Close)	11:30AM-8PM;8PM-Close	6
17	Tuesday	Whole Bar 1/2 Price (11:30-8pm); $1 Drafts; $8 Pitchers (8pm-Close)	11:30AM-8PM;8PM-Close	6
18	Wednesday	Whole Bar 1/2 Price (11:30-8pm); All Bottles, Drafts, Tall Boys 1/2 Price. All Shots Just $4 (8pm-Close)	11:30AM-8PM;8PM-Close	6
19	Thursday	Whole Bar 1/2 Price (11:30-8pm); $8 & $12 Pitchers; $4 Mixed Drinks	11:30AM-8PM;8PM-Close	6
20	Friday	Whole Bar 1/2 Price (11:30-8pm)	11:30AM-8PM;8PM-Close	6
21	Saturday	Whole Bar 1/2 Price (11:30-8pm); Power Hour: $1 Drafts and $4 Shots (8-9pm)	11:30AM-8PM;8PM-9PM	6
22	Sunday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
23	Monday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
24	Tuesday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
25	Wednesday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
26	Thursday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
27	Friday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
28	Saturday	$3 Can of Beer & Well Shot; $1 Off Can Beers & Drafts; $2 Off Everything Else	1PM-7:30PM	7
29	Sunday	None		14
30	Monday	$1 Off Beer; $5 Well Drinks	4PM-7PM	14
31	Tuesday	$1 Off Beer; $5 Well Drinks	4PM-7PM	14
32	Wednesday	$1 Off Beer; $5 Well Drinks	4PM-7PM	14
33	Thursday	$1 Off Beer; $5 Well Drinks	4PM-7PM	14
34	Friday	$1 Off Beer; $5 Well Drinks	4PM-7PM	14
35	Saturday	None		14
36	Sunday	2 for 1	4PM-8PM	15
37	Monday	2 for 1	4PM-8PM	15
38	Tuesday	2 for 1	4PM-8PM	15
39	Wednesday	2 for 1	4PM-8PM	15
40	Thursday	2 for 1	4PM-8PM	15
41	Friday	2 for 1	4PM-8PM	15
42	Saturday	2 for 1	4PM-8PM	15
43	Sunday	All Beer 1/2 Price (12pm-4am); $4 Jameson Shots (8pm-4am)	12PM-Close	16
44	Monday	Whole Bar 1/2 Price (2-8pm); 1/2 Price Drafts, Shots & Domestic Pitchers(8pm-4am)	2PM-8PM;8PM-Close	16
45	Tuesday	Whole Bar 1/2 Price (2-8pm); 1/2 Price Bottled Beer, Drafts, Bombs & Fireball Shots(8pm-4am)	2PM-8PM;8PM-Close	16
46	Wednesday	Whole Bar 1/2 Price (2-8pm); 1/2 Price Domestic Drafts & Pitchers & $4 "We Call It" (8pm-4am)	2PM-8PM;8PM-Close	16
47	Thursday	Whole Bar 1/2 Price (2-8pm); 1/2 Price Bombs; $3 Tall Boys; $9 Domestic Pitchers (8pm-Close)	2PM-8PM;8PM-Close	16
48	Friday	Whole Bar 1/2 Price (2-8pm)	2PM-8PM	16
49	Saturday	Whole Bar 1/2 Price (12-8pm); Power Hour: 1/2 Price Shots & Domestic Pitchers (8-9pm)	12PM-8PM;8PM-9PM	16
50	Sunday	None		23
51	Monday	$2 Off All Drinks	3PM-8PM	23
52	Tuesday	$2 Off All Drinks	3PM-8PM	23
53	Wednesday	$2 Off All Drinks	3PM-8PM	23
54	Thursday	$2 Off All Drinks	3PM-8PM	23
55	Friday	$2 Off All Drinks	3PM-8PM	23
56	Saturday	None		23
57	Sunday	None		24
58	Monday	$4 Craft Beer Pints; $4 Well Drinks; $4 Shots of Jameson	2PM-7PM	24
59	Tuesday	$4 Craft Beer Pints; $4 Well Drinks; $4 Shots of Jameson	2PM-7PM	24
60	Wednesday	$4 Craft Beer Pints; $4 Well Drinks; $4 Shots of Jameson	2PM-7PM	24
61	Thursday	$4 Craft Beer Pints; $4 Well Drinks; $4 Shots of Jameson	2PM-7PM	24
62	Friday	$4 Craft Beer Pints; $4 Well Drinks; $4 Shots of Jameson	2PM-7PM	24
63	Saturday	None		24
64	Sunday	2 for 1 Shots	3PM-8PM	25
65	Monday	2 for 1 Shots	3PM-8PM	25
66	Tuesday	2 for 1 Shots	3PM-8PM	25
67	Wednesday	2 for 1 Shots	3PM-8PM	25
68	Thursday	2 for 1 Shots	3PM-8PM	25
69	Friday	None		25
70	Saturday	None		25
71	Sunday	None		32
72	Monday	$3 Drafts; $4 Well Drinks	4PM-7PM	32
73	Tuesday	$3 Drafts; $4 Well Drinks	4PM-7PM	32
74	Wednesday	$3 Drafts; $4 Well Drinks	4PM-7PM	32
75	Thursday	$3 Drafts; $4 Well Drinks	4PM-7PM	32
76	Friday	$3 Drafts; $4 Well Drinks	4PM-7PM	32
77	Saturday	None		32
78	Sunday	None		52
79	Monday	$5 Margaritas; $5 Appetizers	4PM-7PM	52
80	Tuesday	$5 Margaritas; $5 Appetizers	4PM-7PM	52
81	Wednesday	$5 Margaritas; $5 Appetizers	4PM-7PM	52
82	Thursday	$5 Margaritas; $5 Appetizers	4PM-7PM	52
83	Friday	$5 Margaritas; $5 Appetizers	4PM-7PM	52
84	Saturday	None		52
85	Sunday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	5PM-8PM	54
86	Monday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	All Night	54
87	Tuesday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	5PM-8PM	54
88	Wednesday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	5PM-8PM	54
89	Thursday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	5PM-8PM	54
90	Friday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	5PM-8PM	54
91	Saturday	Buy 1 Get 1 Free Speciality Drinks, Draft Beers and Tapas	5PM-8PM	54
92	Sunday	None		57
93	Monday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	57
94	Tuesday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	57
95	Wednesday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	57
96	Thursday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	57
97	Friday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	57
98	Saturday	None		57
99	Sunday	None		58
100	Monday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	58
101	Tuesday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	58
102	Wednesday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	58
103	Thursday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	58
104	Friday	Half Off Draft Beer & Wine by the Glass	5PM-7PM	58
105	Saturday	None		58
106	Sunday	$3 Bud & Bud Light Bottles	4PM-7PM	65
107	Monday	$3 Select Beers	4PM-7PM	65
108	Tuesday	Reverse Happy Hour	4PM-7PM	65
109	Wednesday	$3 Bud & Bud Light Bottles; $4 Well Drinks	4PM-7PM	65
110	Thursday	$4 Well Drinks	4PM-7PM	65
111	Friday	$5 Absolut Drinks & $5 Wines	4PM-7PM	65
112	Saturday	$5 Mimosas & Screwdrivers; $3 Specialty Shots	4PM-7PM	65
113	Sunday	Happy Hour Specials	5PM-7PM	70
114	Monday	Happy Hour Specials	5PM-7PM	70
115	Tuesday	Happy Hour Specials	5PM-7PM	70
116	Wednesday	Happy Hour Specials	5PM-7PM	70
117	Thursday	Happy Hour Specials	5PM-7PM	70
118	Friday	Happy Hour Specials	5PM-7PM	70
119	Saturday	Happy Hour Specials	5PM-7PM	70
120	Sunday	None		76
121	Monday	$3 Select Beers; Many Other Mixed Drink, Wine, and Sake Specials	3PM-9PM	76
122	Tuesday	$3 Select Beers; Many Other Mixed Drink, Wine, and Sake Specials	3PM-9PM	76
123	Wednesday	$3 Select Beers; Many Other Mixed Drink, Wine, and Sake Specials	3PM-9PM	76
124	Thursday	$3 Select Beers; Many Other Mixed Drink, Wine, and Sake Specials	3PM-9PM	76
125	Friday	$3 Select Beers; Many Other Mixed Drink, Wine, and Sake Specials	3PM-9PM	76
126	Saturday	None		76
127	Sunday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); 4 Shots for $10 (All Day, All Night)	All Day	82
128	Monday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); All Drinks $1 Off; $2.50 Bud Light Draft (5-8pm); 4 Shots for $10 (All Day, All Night)	All Day;5PM-8PM	82
129	Tuesday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); All Drinks $1 Off; $2.50 Bud Light Draft (5-8pm); 4 Shots for $10 (All Day, All Night)	All Day;5PM-8PM	82
130	Wednesday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); All Drinks $1 Off; $2.50 Bud Light Draft (5-8pm); 4 Shots for $10 (All Day, All Night)	All Day;5PM-8PM	82
131	Thursday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); All Drinks $1 Off; $2.50 Bud Light Draft (5-8pm); 4 Shots for $10 (All Day, All Night)	All Day;5PM-8PM	82
132	Friday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); All Drinks $1 Off; $2.50 Bud Light Draft (5-8pm); 4 Shots for $10 (All Day, All Night)	All Day;5PM-8PM	82
133	Saturday	$3 PBR's; $12 Bucket of 4 Miller High Life Bottles (All Day); 4 Shots for $10 (All Day, All Night)	All Day	82
134	Sunday	$4 Craft Beers and Well Drinks; Bottomless Mimosa or Pint of Bloody Mary with your Brunch (12PM-4PM)	12PM-7PM	85
135	Monday	$4 Craft Beers and Well Drinks	12PM-7PM	85
136	Tuesday	$4 Craft Beers and Well Drinks	12PM-7PM	85
137	Wednesday	$4 Craft Beers and Well Drinks	12PM-7PM	85
138	Thursday	$4 Craft Beers and Well Drinks	12PM-7PM	85
139	Friday	$4 Craft Beers and Well Drinks	12PM-7PM	85
140	Saturday	$4 Craft Beers and Well Drinks; Bottomless Mimosa or Pint of Bloody Mary with your Brunch (12PM-4PM)	12PM-7PM	85
141	Sunday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
142	Monday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
143	Tuesday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
144	Wednesday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
145	Thursday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
146	Friday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
147	Saturday	$4 Drafts; $12 Burger and Beer Special	5PM-8PM;2AM-4AM	93
148	Sunday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	5PM-7PM	94
149	Monday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	5PM-7PM	94
150	Tuesday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	5PM-7PM	94
151	Wednesday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	5PM-7PM	94
152	Thursday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	5PM-7PM	94
153	Friday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	4PM-7PM;11PM-Close	94
154	Saturday	$8 Draft Plata Margaritas; $10 Anejo Margaritas; $10 Beer and Blanco; $10 Wines; $8 Comidas; $5 Taco of the Day	4PM-7PM;11PM-Close	94
155	Sunday	None		111
156	Monday	Happy Hour Specials	4PM-7PM	111
157	Tuesday	Happy Hour Specials	4PM-7PM	111
158	Wednesday	Happy Hour Specials	4PM-7PM	111
159	Thursday	Happy Hour Specials	4PM-7PM	111
160	Friday	Happy Hour Specials	4PM-7PM	111
161	Saturday	None		111
162	Sunday	None		113
163	Monday	$2 Off Any Glass of Wine; $4 Off Draft Beers	5PM-7PM	113
164	Tuesday	$2 Off Any Glass of Wine; $4 Off Draft Beers	5PM-7PM	113
165	Wednesday	$2 Off Any Glass of Wine; $4 Off Draft Beers	5PM-7PM	113
166	Thursday	$2 Off Any Glass of Wine; $4 Off Draft Beers	5PM-7PM	113
167	Friday	$2 Off Any Glass of Wine; $4 Off Draft Beers	5PM-7PM	113
168	Saturday	None		113
169	Sunday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
170	Monday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
171	Tuesday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
172	Wednesday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
173	Thursday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
174	Friday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
175	Saturday	Half-price Drafts, Well Drinks and House Wines	4PM-7PM	120
176	Sunday	Nightly Specials (Varies)	5PM-7PM	123
177	Monday	Nightly Specials (Varies)	5PM-7PM	123
178	Tuesday	Nightly Specials (Varies)	5PM-7PM	123
179	Wednesday	Nightly Specials (Varies)	5PM-7PM	123
180	Thursday	Nightly Specials (Varies)	5PM-7PM	123
181	Friday	Nightly Specials (Varies)	5PM-7PM	123
182	Saturday	Nightly Specials (Varies)	5PM-7PM	123
183	Sunday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
184	Monday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
185	Tuesday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
186	Wednesday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
187	Thursday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
188	Friday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
189	Saturday	3 HRS Happy Hour: $4 Italian Beers; $8 Red or White Sangria; $5 Select Red and White Wines; $5-$9 Stuzzichini (Small Bites - Including Olives, Carpacci, Pizze, Micro Sandwiches and Fries)	4PM-7PM	126
190	Sunday	None		147
191	Monday	Ladies Drink Free	10PM-2AM	147
192	Tuesday	2 for 1 Drinks For All College Students (8pm-11pm); 25 Cent Wings (7PM-11PM)	7PM-11PM	147
193	Wednesday	$20 Unlimited Bottled Beer and Well Drinks	7PM-10PM	147
194	Thursday	Ladies Drink Free	8PM-11PM	147
195	Friday	None		147
196	Saturday	2 for 1 Drinks for Airline Personnel	10PM-2AM	147
197	Sunday	None		148
198	Monday	$4 Bud Lights, $5 Veggie Nachos	4PM-7PM	148
199	Tuesday	$4 Bud Lights, $5 Veggie Nachos	4PM-7PM	148
200	Wednesday	$4 Bud Lights, $5 Veggie Nachos	4PM-7PM	148
201	Thursday	$4 Bud Lights, $5 Veggie Nachos	4PM-7PM	148
202	Friday	$4 Bud Lights, $5 Veggie Nachos	4PM-7PM	148
203	Saturday	None		148
204	Sunday	None		150
205	Monday	$5 Selected Wines and Beers; $8 Selected Cocktails	3PM-6PM	150
206	Tuesday	$5 Selected Wines and Beers; $8 Selected Cocktails	3PM-6PM	150
207	Wednesday	$5 Selected Wines and Beers; $8 Selected Cocktails	3PM-6PM	150
208	Thursday	$5 Selected Wines and Beers; $8 Selected Cocktails	3PM-6PM	150
209	Friday	$5 Selected Wines and Beers; $8 Selected Cocktails	3PM-6PM	150
210	Saturday	None		150
211	Sunday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
212	Monday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
213	Tuesday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
214	Wednesday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
215	Thursday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
216	Friday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
217	Saturday	Half Price Specialty Drinks; Specials on Draft Beer, Sake, and Small Bites	5PM-7PM	153
218	Sunday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
219	Monday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
220	Tuesday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
358	Sunday	None		241
221	Wednesday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
222	Thursday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
223	Friday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
224	Saturday	$5 House Red and House White wines, $5 Lager Beer, $7 Spritz, free snacks at the bar only	4pm-7-pm	163
225	Sunday	2-for-1 Vodka, Beer and Wine Specials	7PM-2AM	172
226	Monday	2-for-1 Vodka, Beer and Wine Specials	5PM-11PM	172
227	Tuesday	2-for-1 Vodka, Beer and Wine Specials	5PM-9PM	172
228	Wednesday	2-for-1 Vodka, Beer and Wine Specials	5PM-9PM	172
229	Thursday	2-for-1 Vodka, Beer and Wine Specials	5PM-9PM	172
230	Friday	2-for-1 Vodka, Beer and Wine Specials	5PM-9PM	172
231	Saturday	2-for-1 Vodka, Beer and Wine Specials	5PM-9PM	172
232	Sunday	None		173
233	Monday	$3 Domestic Bottles; $4 Drafts; $3.50 Well Liquor; $5 Wine and Specialty Cocktails; $3 Special Shots; $4 Beer of the Week (All Day); Open Bar - $15 (6pm-8pm)	12PM-7PM;6PM-8PM	173
234	Tuesday	$3 Domestic Bottles; $4 Drafts; $3.50 Well Liquor; $5 Wine and Specialty Cocktails; $3 Special Shots; $4 Beer of the Week (All Day); Taco Tuesday - $2 Tacos (4pm-9pm), $1 Off Corona and Negra Modelo All Day, $5.50 Flavored Margaritas All Day	12PM-7PM;4PM-9PM	173
235	Wednesday	$3 Domestic Bottles; $4 Drafts; $3.50 Well Liquor; $5 Wine and Specialty Cocktails; $3 Special Shots; $4 Beer of the Week (All Day); Open Bar - $15 (6pm-8pm)	12PM-7PM;6PM-8PM	173
236	Thursday	$3 Domestic Bottles; $4 Drafts; $3.50 Well Liquor; $5 Wine and Specialty Cocktails; $3 Special Shots; $4 Beer of the Week (All Day); Ladies Night - $3 Mixed Drinks and $5 Cocktails (9pm-12am)	12PM-7PM;9PM-12AM	173
237	Friday	$3 Domestic Bottles; $4 Drafts; $3.50 Well Liquor; $5 Wine and Specialty Cocktails; $3 Special Shots; $4 Beer of the Week (All Day)	12PM-7PM	173
238	Saturday	None		173
239	Sunday	Special Extended Brunch Menu, Plus 2 for 1 Cocktail Deals of Your Favorite Champagne Classics All Day Until 5PM!	12PM-5PM	176
240	Monday	$3 PBR and Tecate; $7 Wine and Mixed Drinks; 1/2 Price Appetizers	5PM-7PM	176
241	Tuesday	$3 PBR and Tecate; $7 Wine and Mixed Drinks; 1/2 Price Appetizers	5PM-7PM	176
242	Wednesday	$3 PBR and Tecate; $7 Wine and Mixed Drinks; 1/2 Price Appetizers	5PM-7PM	176
243	Thursday	$3 PBR and Tecate; $7 Wine and Mixed Drinks; 1/2 Price Appetizers	5PM-7PM	176
244	Friday	$3 PBR and Tecate; $7 Wine and Mixed Drinks; 1/2 Price Appetizers	5PM-7PM	176
245	Saturday	None		176
246	Sunday	None		184
247	Monday	2-for-1 Specials	2PM-7PM	184
248	Tuesday	2-for-1 Specials	2PM-7PM	184
249	Wednesday	2-for-1 Specials	2PM-7PM	184
250	Thursday	2-for-1 Specials	2PM-7PM	184
251	Friday	2-for-1 Specials	2PM-7PM	184
252	Saturday	None		184
253	Sunday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts; Power Hour (11pm-12am)	12PM-8PM;11PM-12AM	188
254	Monday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts (12-8pm); $3 Bud and Bud Light Bottle (8pm-Close); Power Hour (11pm-12am)	12PM-8PM;8PM-Close	188
255	Tuesday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts (12-8pm); $3 Shots of SoCo Lime and Kamikaze Shots (8pm-Close); Power Hour (11pm-12am)	12PM-8PM;8PM-Close	188
256	Wednesday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts (12-8pm); $3 Bud and Bud Light Drafts; $3 Wells (8pm-Close); Power Hour (11pm-12am)	12PM-8PM;8PM-Close	188
257	Thursday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts; Power Hour (11pm-12am)	12PM-8PM;11PM-12AM	188
258	Friday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts; Power Hour (11pm-12am)	12PM-8PM;11PM-12AM	188
259	Saturday	$3 Assorted Drafts; $3 Well Drinks; $3 Bud and Bud Light Drafts; Power Hour (11pm-12am)	12PM-8PM;11PM-12AM	188
260	Sunday	$7 Glass of Prosecco	3PM-7PM	195
261	Monday	$7 Glass of Prosecco	3PM-7PM	195
262	Tuesday	$7 Glass of Prosecco	3PM-7PM	195
263	Wednesday	$7 Glass of Prosecco	3PM-7PM	195
264	Thursday	$7 Glass of Prosecco	3PM-7PM	195
265	Friday	$7 Glass of Prosecco	3PM-7PM	195
266	Saturday	$7 Glass of Prosecco	3PM-7PM	195
267	Sunday	None		198
268	Monday	$3 Bud/Bud Light Draughts; $3 Well Drinks; $3 Off All Premium Drinks	4PM-7PM	198
269	Tuesday	$3 Bud/Bud Light Draughts; $3 Well Drinks; $3 Off All Premium Drinks	4PM-7PM	198
270	Wednesday	$3 Bud/Bud Light Draughts; $3 Well Drinks; $3 Off All Premium Drinks	4PM-7PM	198
271	Thursday	$3 Bud/Bud Light Draughts; $3 Well Drinks; $3 Off All Premium Drinks	4PM-7PM	198
272	Friday	$3 Bud/Bud Light Draughts; $3 Well Drinks; $3 Off All Premium Drinks	4PM-7PM	198
273	Saturday	None		198
274	Sunday	Never-Ending Champagne Cocktail Brunch for $17.95 (till 4pm); $6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	9AM-4PM;3PM-7PM	201
275	Monday	$6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	3PM-7PM	201
276	Tuesday	$6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	3PM-7PM	201
277	Wednesday	$6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	3PM-7PM	201
278	Thursday	$6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	3PM-7PM	201
279	Friday	$6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	3PM-7PM	201
359	Monday	$3 Bud Light Pints; $5 Wines; $5 Mixed Rack Drinks; $5 Pints of Guinness	5PM-7PM	241
280	Saturday	Never-Ending Champagne Cocktail Brunch for $17.95 (till 4pm); $6 Cocktails; $4 Select Domestic Bottles; $6 Selected Import Bottles; $5 All House Red and White Wines and Champagne; 2ft Pizza of the Day $21.95	9AM-4PM;3PM-7PM	201
281	Sunday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	12PM-5PM	202
282	Monday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	4PM-8PM	202
283	Tuesday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	4PM-8PM	202
284	Wednesday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	4PM-8PM	202
285	Thursday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	4PM-8PM	202
286	Friday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	4PM-8PM	202
287	Saturday	$1 Off Beer and Well Drinks; Fisherman's Brew & Jim Beam Shot for $8	12PM-5PM	202
288	Sunday	None		207
289	Monday	$1 Blue Point Oyster; $5 Beer; $6 Wine; $5 Mixed Cocktails	3PM-7PM	207
290	Tuesday	$1 Blue Point Oyster; $5 Beer; $6 Wine; $5 Mixed Cocktails	3PM-7PM	207
291	Wednesday	$1 Blue Point Oyster; $5 Beer; $6 Wine; $5 Mixed Cocktails; Ladies Night 50% Off All Drinks (Until 11pm)	3PM-7PM	207
292	Thursday	$1 Blue Point Oyster; $5 Beer; $6 Wine; $5 Mixed Cocktails	3PM-7PM	207
293	Friday	$1 Blue Point Oyster; $5 Beer; $6 Wine; $5 Mixed Cocktails	3PM-7:30PM	207
294	Saturday	None		207
295	Sunday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
296	Monday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
297	Tuesday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
298	Wednesday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
299	Thursday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
300	Friday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
301	Saturday	$3 Domestic Beer; $4 Craft Beer; $5 Premium Spirits; $5 WIne; $6 Cocktails; $1 Wings	4PM-7PM;12AM-2AM	209
302	Sunday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
303	Monday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
304	Tuesday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
305	Wednesday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
306	Thursday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
307	Friday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
308	Saturday	$4 Craft Drafts; $7 Wine; Sliders - starting at $5	4PM-7PM;11PM-Close	210
309	Sunday	$3.50 Draughts of Yuengling Lager	11AM-4AM	221
310	Monday	$3.50 Choice of 15 Draughts Until 7pm; $3.50 Pints of Seasonal Draught (7PM-Close); $0.40 Wings (11AM-Close)	11AM-4AM	221
311	Tuesday	$3.50 Pick a Pint! 15 Draught Choices	11AM-4AM	221
312	Wednesday	$3.50 Choice of 15 Draughts Until 7pm;$3.50 Pints of Yuengling Lager & Bud Light(7pm-Close)	11AM-4AM	221
313	Thursday	$3.50 Choice of 15 Draughts Until 7pm; $3.50 Bottles of Miller Lite Until Midnight	11AM-4AM	221
314	Friday	$3.50 Choice of 15 Draughts	11AM-7PM	221
315	Saturday	$3 Pints of Bud Light	11AM-7PM	221
316	Sunday	None		225
317	Monday	$2 Off Drafts; $2 Off Wines; $2 Off Well Drinks	5PM-8PM	225
318	Tuesday	$2 Off Drafts; $2 Off Wines; $2 Off Well Drinks	5PM-8PM	225
319	Wednesday	$2 Off Drafts; $2 Off Wines; $2 Off Well Drinks	5PM-8PM	225
320	Thursday	$2 Off Drafts; $2 Off Wines; $2 Off Well Drinks	5PM-8PM	225
321	Friday	$2 Off Drafts; $2 Off Wines; $2 Off Well Drinks	5PM-8PM	225
322	Saturday	None		225
323	Sunday	None		230
324	Monday	$4 Drafts; 50 Cent Wings	3PM-7PM	230
325	Tuesday	$4 Drafts; 50 Cent Wings	3PM-7PM	230
326	Wednesday	$4 Drafts; 50 Cent Wings	3PM-7PM	230
327	Thursday	$4 Drafts; 50 Cent Wings	3PM-7PM	230
328	Friday	$4 Drafts; 50 Cent Wings	3PM-7PM	230
329	Saturday	None		230
330	Sunday	None		231
331	Monday	None		231
332	Tuesday	All-You-Can-Eat Specials	All Night	231
333	Wednesday	$4 Abita Turbo Dog, Amber Draft or Purple Haze; $5 VooDoo Wings; Food & Beverage Specials	All Night	231
334	Thursday	None		231
335	Friday	None		231
336	Saturday	None		231
337	Sunday	None		233
338	Monday	Discounts on Select Drinks and Apps	3PM-6PM	233
339	Tuesday	Discounts on Select Drinks and Apps	3PM-6PM	233
340	Wednesday	Discounts on Select Drinks and Apps	3PM-6PM	233
341	Thursday	Discounts on Select Drinks and Apps	3PM-6PM	233
342	Friday	Discounts on Select Drinks and Apps	3PM-6PM	233
343	Saturday	None		233
344	Sunday	None		235
345	Monday	$5 Glass of Wine	4PM-7PM	235
346	Tuesday	$5 Glass of Wine	4PM-7PM	235
347	Wednesday	$5 Glass of Wine	4PM-7PM	235
348	Thursday	$5 Glass of Wine	4PM-7PM	235
349	Friday	None		235
350	Saturday	None		235
351	Sunday	$3 Beers; $5 Caipirinha	4PM-7PM	239
352	Monday	$3 Beers; $5 Caipirinha	4PM-7PM	239
353	Tuesday	$3 Beers; $5 Caipirinha	4PM-7PM	239
354	Wednesday	$3 Beers; $5 Caipirinha	4PM-7PM	239
355	Thursday	$3 Beers; $5 Caipirinha	4PM-7PM	239
356	Friday	$3 Beers; $5 Caipirinha	4PM-7PM	239
357	Saturday	$3 Beers; $5 Caipirinha	4PM-7PM	239
360	Tuesday	$3 Bud Light Pints; $5 Wines; $5 Mixed Rack Drinks; 2-for-1 Appetizers	5PM-7PM	241
361	Wednesday	$3 Bud Light Pints; $5 Wines; $5 Mixed Rack Drinks; $6 Margaritas (Spring and Summer); $6 Jameson Irish Coffees (Fall and Winter)	5PM-7PM	241
362	Thursday	$3 Bud Light Pints; $5 Wines; $5 Mixed Rack Drinks; $5 Shots of Cuervo Gold Tequila; $5 Shots of Espon Tequila	5PM-7PM	241
363	Friday	$3 Bud Light Pints; $5 Wines; $5 Mixed Rack Drinks; $7 Shots of Jameson Black Barrel	5PM-7PM	241
364	Saturday	None		241
365	Sunday	$2 Off Drafts and Wells	4PM-4AM	247
366	Monday	$2 Off Drafts and Wells	4PM-4AM	247
367	Tuesday	$2 Off Drafts and Wells; $5 Shot & Can	4PM-8PM;10PM-4AM	247
368	Wednesday	$2 Off Drafts and Wells; $4 Local Drafts	4PM-8PM;8PM-4AM	247
369	Thursday	$2 Off Drafts and Wells; $5 Shot & Can	4PM-8PM;8PM-4AM	247
370	Friday	$2 Off Drafts and Wells; $5 Shot & Can	4PM-6PM;6PM-11PM	247
371	Saturday	$2 Off Drafts and Wells; $5 Shot & Can	4PM-6PM;6PM-11PM	247
372	Sunday	None		250
373	Monday	2-for-1 Drinks	5PM-7PM	250
374	Tuesday	2-for-1 Drinks	5PM-7PM	250
375	Wednesday	2-for-1 Drinks	5PM-7PM	250
376	Thursday	2-for-1 Drinks	5PM-7PM	250
377	Friday	2-for-1 Drinks	5PM-7PM	250
378	Saturday	None		250
379	Sunday	$5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
380	Monday	Ladies Night, Happy Hour All Night for Ladies; $6 Apps; Special Ladies Events; $5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
381	Tuesday	$5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
382	Wednesday	$5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
383	Thursday	$5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
384	Friday	$5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
385	Saturday	$5 Merlot, Chardonnay and Sangria; $10 Specialty Bartenders Choice Cocktails; $9 Mystery Beer and Shot; $5 Well; $5 Beer	5PM-10PM	264
386	Sunday	None		268
387	Monday	$3 Domestic Bottles and Draft Beer; $4 Well Drinks	5PM-8PM	268
388	Tuesday	$3 Domestic Bottles and Draft Beer; $4 Well Drinks	5PM-8PM	268
389	Wednesday	$3 Domestic Bottles and Draft Beer; $4 Well Drinks	5PM-8PM	268
390	Thursday	$3 Domestic Bottles and Draft Beer; $4 Well Drinks	5PM-8PM	268
391	Friday	$3 Domestic Bottles and Draft Beer; $4 Well Drinks	5PM-8PM	268
392	Saturday	None		268
393	Sunday	None		275
394	Monday	None		275
395	Tuesday	$3 Pabst Bottles; $4 Straight Shots	All Night	275
396	Wednesday	None		275
397	Thursday	None		275
398	Friday	None		275
399	Saturday	None		275
400	Sunday	$3 Select Pints; $5 Well Drinks	10PM-Midnight	280
401	Monday	$5 Drafts; $5 Well Drinks; $5 Off Appetizers (4pm-7pm); $3 Select Pints; $5 Well Drinks (10pm-Midnight)	4PM-7PM;10PM-Midnight	280
402	Tuesday	$5 Drafts; $5 Well Drinks; $5 Off Appetizers (4pm-7pm); $3 Select Pints; $5 Well Drinks (10pm-Midnight)	4PM-7PM;10PM-Midnight	280
403	Wednesday	$5 Drafts; $5 Well Drinks; $5 Off Appetizers (4pm-7pm); $3 Select Pints; $5 Well Drinks (10pm-Midnight)	4PM-7PM;10PM-Midnight	280
404	Thursday	$5 Drafts; $5 Well Drinks; $5 Off Appetizers (4pm-7pm); $3 Select Pints; $5 Well Drinks (10pm-Midnight)	4PM-7PM;10PM-Midnight	280
405	Friday	$5 Drafts; $5 Well Drinks; $5 Off Appetizers (4pm-7pm); $3 Select Pints; $5 Well Drinks (10pm-Midnight)	4PM-7PM;10PM-Midnight	280
406	Saturday	$3 Select Pints; $5 Well Drinks	10PM-Midnight	280
407	Sunday	Wines for $7 a Glass; Weekly Cocktail Special for $9	10PM-12AM	285
408	Monday	Wines for $7 a Glass; Weekly Cocktail Special for $9	4PM-7PM;10PM-12AM	285
409	Tuesday	Wines for $7 a Glass; Weekly Cocktail Special for $9	4PM-7PM;10PM-12AM	285
410	Wednesday	Wines for $7 a Glass; Weekly Cocktail Special for $9	4PM-7PM;10PM-12AM	285
411	Thursday	Wines for $7 a Glass; Weekly Cocktail Special for $9	4PM-7PM;10PM-12AM	285
412	Friday	Wines for $7 a Glass; Weekly Cocktail Special for $9	4PM-7PM	285
413	Saturday	None		285
414	Sunday	None		294
415	Monday	$3 Black Rabbit House Drafts; $5 Specialty Cocktails	4PM-8PM	294
416	Tuesday	$3 Black Rabbit House Drafts; $5 Specialty Cocktails	4PM-8PM	294
417	Wednesday	$3 Black Rabbit House Drafts; $5 Specialty Cocktails	4PM-8PM	294
418	Thursday	$3 Black Rabbit House Drafts; $5 Specialty Cocktails	4PM-8PM	294
419	Friday	$3 Black Rabbit House Drafts; $5 Specialty Cocktails	4PM-8PM	294
420	Saturday	None		294
421	Sunday	$4 Beers; $5 Wine; $5 Cocktails; 1/2 Price Wings	All Day	300
422	Monday	$4 Beers; $5 Wine; $5 Cocktails; 1/2 Price Chicken, Chicken Thumbs	4PM-7PM	300
423	Tuesday	$4 Beers; $5 Wine; $5 Cocktails; 1/2 Price Wings	4PM-7PM	300
424	Wednesday	$4 Beers; $5 Wine; $5 Cocktails; 1/2 Price Chicken, Chicken Thumbs	4PM-7PM	300
425	Thursday	$4 Beers; $5 Wine; $5 Cocktails; 1/2 Price Wings	4PM-7PM	300
426	Friday	$4 Beers; $5 Wine; $5 Cocktails; 1/2 Price Chicken, Chicken Thumbs	4PM-7PM	300
427	Saturday	$4 Beers; $5 Wine; $5 Cocktails	11PM-7PM	300
428	Sunday	$5 Beer, Wine, Mimosas	All Day	302
429	Monday	$5 Beer & Wine	4PM-7PM	302
430	Tuesday	$5 Beer & Wine	4PM-7PM	302
431	Wednesday	$5 Beer & Wine	4PM-7PM	302
432	Thursday	$5 Beer & Wine	4PM-7PM	302
433	Friday	$5 Beer & Wine	4PM-7PM	302
434	Saturday	$5 Beer, Wine, Mimosas	All Day	302
435	Sunday	None		305
436	Monday	Mixed Drinks, 0,5L Beer and Wine for $6	4PM-7PM	305
437	Tuesday	Mixed Drinks, 0,5L Beer and Wine for $6	4PM-7PM	305
438	Wednesday	Mixed Drinks, 0,5L Beer and Wine for $6	4PM-7PM	305
439	Thursday	Mixed Drinks, 0,5L Beer and Wine for $6	4PM-7PM	305
440	Friday	Mixed Drinks, 0,5L Beer and Wine for $6	4PM-7PM	305
441	Saturday	None	4PM-7PM	305
442	Sunday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
443	Monday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
444	Tuesday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
445	Wednesday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
446	Thursday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
447	Friday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
448	Saturday	$4.50 24oz Budweiser, Bud Lite, or Yuengling	12PM-8PM	307
449	Sunday	"The Chill" - $5 Frozen Sangrias, Margaritas, and Sangritas	All Day	308
450	Monday	$5 Mojitos, Margaritas, and Frozen Drinks; $4 Patron Shots; $4 Glasses of Wine; $4 Bottles of Beer; 1/2 Price Bottles of Wine	11AM-10:30PM	308
451	Tuesday	$5 Mojitos, Sangrias, and Margaritas; $4 Glasses of Wine; $4 Bottles of Beer; The Mojito Revolution - 2 for 1 Mojitos All Night!	4PM-7PM	308
452	Wednesday	$5 Mojitos, Sangrias, and Margaritas; $4 Glasses of Wine; $4 Bottles of Beer; Sangria Night - $15 Sangria Pitchers	4PM-7PM	308
453	Thursday	$5 Mojitos, Sangrias, and Margaritas; $4 Glasses of Wine; $4 Bottles of Beer; The Mix - All Our Signature Cocktails for Only $5	4PM-7PM	308
454	Friday	$5 Mojitos, Sangrias, and Margaritas; $4 Glasses of Wine; $4 Bottles of Beer	4PM-7PM	308
455	Saturday	$5 Mojitos, Sangrias, and Margaritas; $4 Glasses of Wine; $4 Bottles of Beer	4PM-7PM	308
456	Sunday	None		311
457	Monday	None		311
458	Tuesday	None		311
459	Wednesday	$3 Cans; $3 Shots	8PM-Close	311
460	Thursday	Everything is $4	11:30PM-Close	311
461	Friday	None		311
462	Saturday	None		311
463	Sunday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
464	Monday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
465	Tuesday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
466	Wednesday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
467	Thursday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
468	Friday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
469	Saturday	$1 Off Draught Beer, Cask Ale, Glasses of Wine, Prosecco and Mead	11:30AM-8PM	312
470	Sunday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
471	Monday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
472	Tuesday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
473	Wednesday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
474	Thursday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
475	Friday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
476	Saturday	$5 Select Beers; $7 Wines; $8 Mixed Drink Cocktails		316
477	Sunday	None		319
478	Monday	Drinks and Apps From $5	2PM-6PM	319
479	Tuesday	Drinks and Apps From $5	2PM-6PM	319
480	Wednesday	Drinks and Apps From $5	2PM-6PM	319
481	Thursday	Drinks and Apps From $5	2PM-6PM	319
482	Friday	Drinks and Apps From $5	2PM-6PM	319
483	Saturday	None		319
484	Sunday	None		324
485	Monday	2-for-1; $3 PBR's	5PM-8PM	324
486	Tuesday	2-for-1; $3 PBR's	5PM-8PM	324
487	Wednesday	2-for-1; $3 PBR's	5PM-8PM	324
488	Thursday	2-for-1; $3 PBR's	5PM-8PM	324
489	Friday	2-for-1; $3 PBR's	5PM-8PM	324
490	Saturday	None		324
491	Sunday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
492	Monday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
493	Tuesday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
494	Wednesday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
495	Thursday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
496	Friday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
582	Sunday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
583	Monday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
584	Tuesday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
497	Saturday	$1 Oyster (6 Minimum and This Price May Change Time to Time); $6 Stella Artoise on Tap; $7 Glass of Wine Red or White; $8 Well Cocktail; $4 Glass of Sparkling with Any Dozen of Oysters ( 2gl Per Doz. Max); $4 Stella Artoise with Any Pizza; Bruschetta Trio $12	4PM-7PM;10PM- Close	325
498	Sunday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
499	Monday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
500	Tuesday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
501	Wednesday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
502	Thursday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
503	Friday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
504	Saturday	$1 Oysters; $5 Kelso Pilsner; $6 Specialty Cocktails; $6 Wines	5PM-7PM	330
505	Sunday	None		336
506	Monday	$4 Mug of Draft Beer	5PM-7PM	336
507	Tuesday	$4 Mug of Draft Beer	5PM-7PM	336
508	Wednesday	$4 Mug of Draft Beer	5PM-7PM	336
509	Thursday	$4 Mug of Draft Beer	5PM-7PM	336
510	Friday	$4 Mug of Draft Beer	5PM-7PM	336
511	Saturday	None		336
512	Sunday	None		351
513	Monday	$3 Well Drinks; $1-$1.50 Off Drafts	4PM-8PM	351
514	Tuesday	$3 Well Drinks; $1-$1.50 Off Drafts	4PM-8PM	351
515	Wednesday	$3 Well Drinks; $1-$1.50 Off Drafts	4PM-8PM	351
516	Thursday	$3 Well Drinks; $1-$1.50 Off Drafts	4PM-8PM	351
517	Friday	$3 Well Drinks; $1-$1.50 Off Drafts	4PM-8PM	351
518	Saturday	None		351
519	Sunday	None		357
520	Monday	$3 Bud Drafts; $4 Bud Lights; $3 Coors Light Drafts; $6 Absolut & Jack Honey Mixed Drinks	12PM-7PM	357
521	Tuesday	$3 Bud Drafts; $4 Bud Lights; $3 Coors Light Drafts; $6 Absolut & Jack Honey Mixed Drinks	12PM-7PM	357
522	Wednesday	$3 Bud Drafts; $4 Bud Lights; $3 Coors Light Drafts; $6 Absolut & Jack Honey Mixed Drinks	12PM-7PM	357
523	Thursday	$3 Bud Drafts; $4 Bud Lights; $3 Coors Light Drafts; $6 Absolut & Jack Honey Mixed Drinks	12PM-7PM	357
524	Friday	$3 Bud Drafts; $4 Bud Lights; $3 Coors Light Drafts; $6 Absolut & Jack Honey Mixed Drinks	12PM-7PM	357
525	Saturday	None		357
526	Sunday	None		359
527	Monday	$5 Happy Hour Cocktails & Specials	11AM-8PM	359
528	Tuesday	$5 Happy Hour Cocktails & Specials	11AM-8PM	359
529	Wednesday	$5 Happy Hour Cocktails & Specials	11AM-8PM	359
530	Thursday	$5 Happy Hour Cocktails & Specials	11AM-8PM	359
531	Friday	$5 Happy Hour Cocktails & Specials	11AM-8PM	359
532	Saturday	None		359
533	Sunday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
534	Monday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
535	Tuesday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
536	Wednesday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
537	Thursday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
538	Friday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
539	Saturday	$2 Off All Beer, Wine and Cocktails Including Specialty Cocktail Menu	5PM-8PM	362
540	Sunday	None		366
541	Monday	2 for 1 Drinks	4PM-9:30PM	366
542	Tuesday	2 for 1 Drinks	4PM-9:30PM	366
543	Wednesday	2 for 1 Drinks	4PM-9:30PM	366
544	Thursday	2 for 1 Drinks	4PM-9:30PM	366
545	Friday	2 for 1 Drinks	4PM-9:30PM	366
546	Saturday	None		366
547	Sunday	$1 Off All Drinks	4PM-8PM	369
548	Monday	$1 Off All Drinks	4PM-8PM	369
549	Tuesday	$1 Off All Drinks	4PM-8PM	369
550	Wednesday	$1 Off All Drinks	4PM-8PM	369
551	Thursday	$1 Off All Drinks	4PM-8PM	369
552	Friday	$1 Off All Drinks	4PM-8PM	369
553	Saturday	$1 Off All Drinks	4PM-8PM	369
554	Sunday	None		370
555	Monday	$2 Off Domestic Beers; $2 Off Wine	12PM-7PM	370
556	Tuesday	$2 Off Domestic Beers; $2 Off Wine	12PM-7PM	370
557	Wednesday	$2 Off Domestic Beers; $2 Off Wine	12PM-7PM	370
558	Thursday	$2 Off Domestic Beers; $2 Off Wine	12PM-7PM	370
559	Friday	$2 Off Domestic Beers; $2 Off Wine	12PM-7PM	370
560	Saturday	None		370
561	Sunday	None		374
562	Monday	$4 Drafts; $4 Well Drinks	4PM-7PM	374
563	Tuesday	$4 Drafts; $4 Well Drinks	4PM-7PM	374
564	Wednesday	$4 Drafts; $4 Well Drinks	4PM-7PM	374
565	Thursday	$4 Drafts; $4 Well Drinks	4PM-7PM	374
566	Friday	$4 Drafts; $4 Well Drinks	4PM-7PM	374
567	Saturday	None		374
568	Sunday	None		375
569	Monday	$2 Off All Draughts; $5 Well Drinks; $2 Off All Wines	11AM-8PM	375
570	Tuesday	$2 Off All Draughts; $5 Well Drinks; $2 Off All Wines	11AM-8PM	375
571	Wednesday	$2 Off All Draughts; $5 Well Drinks; $2 Off All Wines	11AM-8PM	375
572	Thursday	$2 Off All Draughts; $5 Well Drinks; $2 Off All Wines	11AM-8PM	375
573	Friday	$2 Off All Draughts; $5 Well Drinks; $2 Off All Wines	11AM-8PM	375
574	Saturday	None		375
575	Sunday	Various Specials	2PM-6PM	376
576	Monday	Various Specials	5PM-8PM	376
577	Tuesday	Various Specials	5PM-8PM	376
578	Wednesday	Various Specials	5PM-8PM	376
579	Thursday	Various Specials	5PM-8PM	376
580	Friday	Various Specials	5PM-8PM	376
581	Saturday	Various Specials	2PM-6PM	376
585	Wednesday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
586	Thursday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
587	Friday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
588	Saturday	$3 Beers; $5 Well Drinks; $5 Wine	4PM-8PM	379
589	Sunday	None		380
590	Monday	$2 Chipotle Chicken, Fish, Pork Belly Tacos	3PM-5PM	380
591	Tuesday	$2 Chipotle Chicken, Fish, Pork Belly Tacos	3PM-5PM	380
592	Wednesday	$2 Chipotle Chicken, Fish, Pork Belly Tacos	3PM-5PM	380
593	Thursday	$2 Chipotle Chicken, Fish, Pork Belly Tacos	3PM-5PM	380
594	Friday	$2 Chipotle Chicken, Fish, Pork Belly Tacos	3PM-5PM	380
595	Saturday	None		380
596	Sunday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM;12AM-2AM	386
597	Monday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM;12AM-2AM	386
598	Tuesday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM;12AM-2AM	386
599	Wednesday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM;12AM-2AM	386
600	Thursday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM;12AM-2AM	386
601	Friday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM	386
602	Saturday	$3 PBR & Narraganset; $2 Off NY Draft Beers; $1 Off Wine; $5 Well Drinks; $12 Beer & Burger/Reuben	4PM-7PM	386
603	Sunday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
604	Monday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
605	Tuesday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
606	Wednesday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
607	Thursday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
608	Friday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
609	Saturday	$5 All Beers; $5.50 Selected Wine by the Glass; $5.50 All House Drinks	4PM-7PM;9PM-Close	389
610	Sunday	None		401
611	Monday	$5 Craft Beer Cans; $6 Any Burger; $10 Can & Burger	All Night	401
612	Tuesday	None		401
613	Wednesday	$1 Off All Beer (for Beer Club Members); 50% Off All Beer (for Gold Club Members); 15% Off Beer Towers	All Night	401
614	Thursday	None		401
615	Friday	None		401
616	Saturday	None		401
617	Sunday	None		402
618	Monday	Happy Hour Specials	4PM-7PM	402
619	Tuesday	Happy Hour Specials	4PM-7PM;9PM-11PM	402
620	Wednesday	Happy Hour Specials	4PM-7PM	402
621	Thursday	Happy Hour Specials	4PM-7PM	402
622	Friday	Happy Hour Specials	4PM-7PM	402
623	Saturday	None		402
624	Sunday	$2 PBR and Miller High Life	All Day	406
625	Monday	$1 Off All Drinks	12PM-8PM	406
626	Tuesday	$1 Off All Drinks	12PM-8PM	406
627	Wednesday	$1 Off All Drinks	12PM-8PM	406
628	Thursday	$1 Off All Drinks	12PM-8PM	406
629	Friday	$1 Off All Drinks	12PM-8PM	406
630	Saturday	$2 PBR and Miller High Life	All Day	406
631	Sunday	None		407
632	Monday	$5 Domestic Craft Beers on Tap; Speciality Beers $7, $5 Selected Bottled Beer; $6 Wine; $ 6 Well Drinks	4PM-8PM	407
633	Tuesday	$5 Domestic Craft Beers on Tap; Speciality Beers $7, $5 Selected Bottled Beer; $6 Wine; $ 6 Well Drinks	4PM-8PM	407
634	Wednesday	$5 Domestic Craft Beers on Tap; Speciality Beers $7, $5 Selected Bottled Beer; $6 Wine; $ 6 Well Drinks	4PM-8PM	407
635	Thursday	$5 Domestic Craft Beers on Tap; Speciality Beers $7, $5 Selected Bottled Beer; $6 Wine; $ 6 Well Drinks	4PM-8PM	407
636	Friday	$5 Domestic Craft Beers on Tap; Speciality Beers $7, $5 Selected Bottled Beer; $6 Wine; $ 6 Well Drinks	4PM-8PM	407
637	Saturday	None		407
638	Sunday	None		408
639	Monday	$7 Glass of Wine	5PM-8PM	408
640	Tuesday	$7 Glass of Wine	5PM-8PM	408
641	Wednesday	$7 Glass of Wine; Half Off Bottle Night	5PM-8PM	408
642	Thursday	$7 Glass of Wine	5PM-8PM	408
643	Friday	$7 Glass of Wine	5PM-8PM	408
644	Saturday	None		408
645	Sunday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	12PM-5PM	410
646	Monday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	All Night	410
647	Tuesday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	5PM-7PM	410
648	Wednesday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	5PM-7PM	410
649	Thursday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	5PM-7PM	410
650	Friday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	3PM-7PM	410
651	Saturday	$6 Glasses of Wine; $4 Draft Beers; Half Price Snacks	12PM-5PM	410
652	Sunday	$4 Beers; $5 Cocktails; $18 Pitchers of Sangria	1PM-5PM	415
653	Monday	$4 Beers; $5 Cocktails	4PM-8PM	415
654	Tuesday	$4 Beers; $5 Cocktails	4PM-8PM	415
655	Wednesday	$4 Beers; $5 Cocktails	4PM-8PM	415
656	Thursday	$4 Beers; $5 Cocktails	4PM-8PM	415
657	Friday	$4 Beers; $5 Cocktails	4PM-8PM	415
658	Saturday	$4 Beers; $5 Cocktails; $18 Pitchers of Sangria	1PM-5PM	415
659	Sunday	4 Dollar Nordic Pils; Dollar Off All Draft Beer and Wine; Special Events (every Second Week)	3PM-8PM	422
660	Monday	4 Dollar Nordic Pils; Dollar Off All Draft Beer and Wine	3PM-8PM	422
661	Tuesday	2 for 1 Tuesday - 2 for the Price of 1 All Draft and Wine	3PM-8PM	422
1169	Saturday	None		826
662	Wednesday	Wine Wednesday - 2 Dollars Off All Wine on Menu	3PM-8PM	422
663	Thursday	4 Dollar Nordic Pils; Dollar Off All Draft Beer and Wine	3PM-8PM	422
664	Friday	4 Dollar Nordic Pils; Dollar Off All Draft Beer and Wine	3PM-8PM	422
665	Saturday	4 Dollar Nordic Pils; Dollar Off All Draft Beer and Wine; Special Events (every Second Week)	3PM-8PM	422
666	Sunday	None		424
667	Monday	$3 Domestic Drafts; $4 Imports; $5 Crafts + $5 Lemon Martini, J+G's, Jack and Colas, Malibu Bay Breezes and Margaritas!	4PM-7PM	424
668	Tuesday	$3 Domestic Drafts; $4 Imports; $5 Crafts + $5 Lemon Martini, J+G's, Jack and Colas, Malibu Bay Breezes and Margaritas!	4PM-7PM	424
669	Wednesday	$3 Domestic Drafts; $4 Imports; $5 Crafts + $5 Lemon Martini, J+G's, Jack and Colas, Malibu Bay Breezes and Margaritas!	All Day	424
670	Thursday	$3 Domestic Drafts; $4 Imports; $5 Crafts + $5 Lemon Martini, J+G's, Jack and Colas, Malibu Bay Breezes and Margaritas!	4PM-7PM	424
671	Friday	$3 Domestic Drafts; $4 Imports; $5 Crafts + $5 Lemon Martini, J+G's, Jack and Colas, Malibu Bay Breezes and Margaritas!	4PM-7PM	424
672	Saturday	None		424
673	Sunday	$22 All You Can Eat Mussels (Plus One Side of Fries and a Stella)	4PM-11PM	441
674	Monday	$22 All You Can Eat Mussels (Plus One Side of Fries and a Stella)	4PM-11PM	441
675	Tuesday	None		441
676	Wednesday	None		441
677	Thursday	None		441
678	Friday	None		441
679	Saturday	None		441
680	Sunday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
681	Monday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
682	Tuesday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
683	Wednesday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
684	Thursday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
685	Friday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
686	Saturday	$4 Draft Beer; $5 Wine; $6 Cocktails	4PM-7PM	450
687	Sunday	None		455
688	Monday	Selection of Wines Are $7; Flavored Frozen Margaritas $8; Sangria $6; Beer Selection $5; Champagne Cocktails Selection $6	Noon-Midnight	455
689	Tuesday	Selection of Wines Are $7; Flavored Frozen Margaritas $8; Sangria $6; Beer Selection $5; Champagne Cocktails Selection $6	Noon-Midnight	455
690	Wednesday	Selection of Wines Are $7; Flavored Frozen Margaritas $8; Sangria $6; Beer Selection $5; Champagne Cocktails Selection $6	Noon-7PM	455
691	Thursday	Selection of Wines Are $7; Flavored Frozen Margaritas $8; Sangria $6; Beer Selection $5; Champagne Cocktails Selection $6	Noon-7PM	455
692	Friday	Selection of Wines Are $7; Flavored Frozen Margaritas $8; Sangria $6; Beer Selection $5; Champagne Cocktails Selection $6	Noon-7PM	455
693	Saturday	None		455
694	Sunday	None		465
695	Monday	$3 Margaritas; 1/2 Price Apps	All Day	465
696	Tuesday	$1 Beers	After 6PM	465
697	Wednesday	$3 Margaritas; 1/2 Price Apps	6PM-9PM	465
698	Thursday	Pay $5 at the Door for 1/2 Price Drinks	6PM-9PM	465
699	Friday	None		465
700	Saturday	None		465
701	Sunday	Daily Special (Varies)	5PM-12PM	468
702	Monday	Daily Special (Varies)	5PM-12PM	468
703	Tuesday	Daily Special (Varies)	5PM-12PM	468
704	Wednesday	Daily Special (Varies)	5PM-12PM	468
705	Thursday	Daily Special (Varies)	5PM-12PM	468
706	Friday	Daily Special (Varies)	5PM-12PM	468
707	Saturday	Daily Special (Varies)	5PM-12PM	468
708	Sunday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer	3PM-7PM	472
709	Monday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer	3PM-7PM	472
710	Tuesday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer	3PM-7PM	472
711	Wednesday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer; $5 Mojitos	3PM-8PM	472
712	Thursday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer	3PM-7PM	472
713	Friday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer	3PM-7PM	472
714	Saturday	$15 Pitchers of Red or White Sangria; $5 Well Drinks; $4 Draft Beer; $3 Bottle Beer	3PM-7PM	472
715	Sunday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
716	Monday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
717	Tuesday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
718	Wednesday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
719	Thursday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
720	Friday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
721	Saturday	$5 Draft Cocktails; $5 Draft Baviks; $5 Wine; $12 Burger + Draft Manhattan	4PM-6PM	478
722	Sunday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
723	Monday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
724	Tuesday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
725	Wednesday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
726	Thursday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
727	Friday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
728	Saturday	$5 Select Drafts, $5 Bourbon Shots, $5 Wine, $15 Cannibal Dog + Bourbon Shot + Beer	4PM-6PM	479
729	Sunday	$2.50 Mimosas; $4 Margs; $5 Sangrias	11AM-4PM	481
730	Monday	$2 Tacos; $4 Margs; $4 Beers	4PM-7PM	481
731	Tuesday	$2 Tacos; $4 Margs; $4 Beers	4PM-7PM	481
732	Wednesday	$2 Tacos; $4 Margs; $4 Beers	4PM-7PM	481
733	Thursday	$2 Tacos; $4 Margs; $4 Beers	4PM-7PM	481
734	Friday	$2 Tacos; $4 Margs; $4 Beers	4PM-7PM	481
735	Saturday	$2.50 Mimosas; $4 Margs; $5 Sangrias	11AM-4PM	481
736	Sunday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	12PM-7PM	484
737	Monday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	5PM-7PM	484
738	Tuesday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	5PM-7PM	484
739	Wednesday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	5PM-7PM	484
740	Thursday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	5PM-7PM	484
741	Friday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	5PM-7PM	484
742	Saturday	$6.50 Regular Margaritas; $6.95 Flavored Margaritas; $4.50 Tap Beers; $12 Coronitas Bucket of 6; $5.95 Red or White Sangria; $6 Appetizers	12PM-7PM	484
743	Sunday	None		495
744	Monday	Happy Hour Specials	5PM-7PM	495
745	Tuesday	Happy Hour Specials	5PM-7PM	495
746	Wednesday	Happy Hour Specials	5PM-7PM	495
747	Thursday	Happy Hour Specials	5PM-7PM	495
748	Friday	Happy Hour Specials	5PM-7PM	495
749	Saturday	None		495
750	Sunday	None		496
751	Monday	1/2 Price House Wine, All Beer & Well Spirits; $5 Pizzas; $2 Sliders; $1 Meatballs	5PM-7PM	496
752	Tuesday	1/2 Price House Wine, All Beer & Well Spirits; $5 Pizzas; $2 Sliders; $1 Meatballs	5PM-7PM	496
753	Wednesday	1/2 Price House Wine, All Beer & Well Spirits; $5 Pizzas; $2 Sliders; $1 Meatballs	5PM-7PM	496
754	Thursday	1/2 Price House Wine, All Beer & Well Spirits; $5 Pizzas; $2 Sliders; $1 Meatballs	4PM-7PM	496
755	Friday	1/2 Price House Wine, All Beer & Well Spirits; $5 Pizzas; $2 Sliders; $1 Meatballs	4PM-7PM	496
756	Saturday	None		496
757	Sunday	None		501
758	Monday	Aperitivo Specials - $5/$6 Red and White Wines; $5 Select Beer; $6 Cocktails; $7/$8 Pizzas	5PM-7PM	501
759	Tuesday	Aperitivo Specials - $5/$6 Red and White Wines; $5 Select Beer; $6 Cocktails; $7/$8 Pizzas	5PM-7PM	501
760	Wednesday	Aperitivo Specials - $5/$6 Red and White Wines; $5 Select Beer; $6 Cocktails; $7/$8 Pizzas	5PM-7PM	501
761	Thursday	Aperitivo Specials - $5/$6 Red and White Wines; $5 Select Beer; $6 Cocktails; $7/$8 Pizzas	5PM-7PM	501
762	Friday	Aperitivo Specials - $5/$6 Red and White Wines; $5 Select Beer; $6 Cocktails; $7/$8 Pizzas	5PM-7PM	501
763	Saturday	None		501
764	Sunday	$15 BOTTOMLESS BRUNCH	11AM-4:30PM	504
765	Monday	$3-$5 Antojitos; $6 Bottle Craft Beer, Wine & Sangria; $7 Margaritas; $5 All Mexican Beer	3PM-7PM	504
766	Tuesday	$3-$5 Antojitos; $6 Bottle Craft Beer, Wine & Sangria; $7 Margaritas; $5 All Mexican Beer	3PM-7PM	504
767	Wednesday	$3-$5 Antojitos; $6 Bottle Craft Beer, Wine & Sangria; $7 Margaritas; $5 All Mexican Beer	3PM-7PM	504
768	Thursday	$3-$5 Antojitos; $6 Bottle Craft Beer, Wine & Sangria; $7 Margaritas; $5 All Mexican Beer	3PM-7PM	504
769	Friday	$3-$5 Antojitos; $6 Bottle Craft Beer, Wine & Sangria; $7 Margaritas; $5 All Mexican Beer	3PM-7PM	504
770	Saturday	$15 BOTTOMLESS BRUNCH	11AM-4:30PM	504
771	Sunday	None		506
772	Monday	$5 Victory, Sierra and Bluepoint; $6 Glasses of Pinot Grigio and Merlot	4PM-8PM	506
773	Tuesday	$5 Victory, Sierra and Bluepoint; $6 Glasses of Pinot Grigio and Merlot	4PM-8PM	506
774	Wednesday	$5 Victory, Sierra and Bluepoint; $6 Glasses of Pinot Grigio and Merlot	4PM-8PM	506
775	Thursday	$5 Victory, Sierra and Bluepoint; $6 Glasses of Pinot Grigio and Merlot	4PM-8PM	506
776	Friday	$5 Victory, Sierra and Bluepoint; $6 Glasses of Pinot Grigio and Merlot	4PM-8PM	506
777	Saturday	None		506
778	Sunday	Late Night Menu	11PM-Close	508
779	Monday	Late Night Menu	11PM-Close	508
780	Tuesday	Late Night Menu	11PM-Close	508
781	Wednesday	Late Night Menu	11PM-Close	508
782	Thursday	Late Night Menu	11PM-Close	508
783	Friday	Late Night Menu	11PM-Close	508
784	Saturday	$1 Oysters (4-8); Late Night Menu (11-Cl)	4PM-8PM;11PM-Close	508
785	Sunday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
786	Monday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
787	Tuesday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
788	Wednesday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
789	Thursday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
790	Friday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
791	Saturday	$1 Oysters; $2 Off Drinks	4PM-7PM	511
792	Sunday	None		514
793	Monday	Happy Hour Specials	3PM-8PM	514
794	Tuesday	Happy Hour Specials	3PM-8PM	514
795	Wednesday	Happy Hour Specials	3PM-8PM	514
796	Thursday	Happy Hour Specials	3PM-8PM	514
797	Friday	Happy Hour Specials	3PM-8PM	514
798	Saturday	None		514
799	Sunday	$4 Sam & Harp Drafts	3PM-9PM	522
800	Monday	$4 Drafts and Well Drinks; $5 House Wine; $1 Off Top Shelf; $2 Domestic Drafts; $5 Sliders (3); $10 Pitcher of Bud Lite, $15 Pitcher of Brooklyn, $20 Beer Buckets and $6 Domestic Bottles (till 9PM)	3PM-7PM	522
801	Tuesday	$4 Drafts and Well Drinks; $5 House Wine; $1 Off Top Shelf; $10 Pitcher of Bud Lite, $15 Pitcher of Brooklyn, $20 Beer Buckets and $6 Domestic Bottles (till 9PM)	3PM-7PM	522
872	Wednesday	$3 Yuenlings; $4 Bud Light Drafts; $1 Off All Other Drafts; $4 Well Drinks; $6 Miller High Life Bottle with Shot of Whiskey	12PM-7PM	618
802	Wednesday	$4 Drafts and Well Drinks; $5 House Wine; $1 Off Top Shelf; $10 Pitcher of Bud Lite, $15 Pitcher of Brooklyn, $20 Beer Buckets and $6 Domestic Bottles (till 9PM)	3PM-7PM	522
803	Thursday	$4 Drafts and Well Drinks; $5 House Wine; $1 Off Top Shelf; $5 Cocktails; $10 Pitcher of Bud Lite, $15 Pitcher of Brooklyn, $20 Beer Buckets and $6 Domestic Bottles (till 9PM)	3PM-7PM	522
804	Friday	$4 Drafts and Well Drinks; $5 House Wine; $1 Off Top Shelf; $10 Pitcher of Bud Lite, $15 Pitcher of Brooklyn, $20 Beer Buckets and $6 Domestic Bottles (till 9PM)	3PM-7PM	522
805	Saturday	$4 Sam & Harp Drafts	3PM-9PM	522
806	Sunday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
807	Monday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
808	Tuesday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
809	Wednesday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
810	Thursday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
811	Friday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
812	Saturday	2-for-1 Domestic Drafts and Well Drinks; Free Buffet	3PM-8PM	528
813	Sunday	None		550
814	Monday	$5 Drinks; $5 Appetizers	5PM-7PM	550
815	Tuesday	$5 Drinks; $5 Appetizers	5PM-7PM	550
816	Wednesday	$5 Drinks; $5 Appetizers	5PM-7PM	550
817	Thursday	$5 Drinks; $5 Appetizers	5PM-7PM	550
818	Friday	$5 Drinks; $5 Appetizers	5PM-7PM	550
819	Saturday	None		550
820	Sunday	None		558
821	Monday	$4 Beer; $5 Wine and Wells	4PM-7PM	558
822	Tuesday	$4 Beer; $5 Wine and Wells	4PM-7PM	558
823	Wednesday	$4 Beer; $5 Wine and Wells	4PM-7PM	558
824	Thursday	$4 Beer; $5 Wine and Wells	4PM-7PM	558
825	Friday	$4 Beer; $5 Wine and Wells	4PM-7PM	558
826	Saturday	None		558
827	Sunday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
828	Monday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
829	Tuesday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
830	Wednesday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
831	Thursday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
832	Friday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
833	Saturday	$1 Off Everything; $4 Well Drinks	2PM-8PM	562
834	Sunday	None		577
835	Monday	$4.50 Coliseum Ale; $5.50 Beer of the Month; $6 House White or Red Wine; $6 Skyy Flavored Vodka; $6 Well Liquor; $6 Cocktail of the Day	4PM-8PM	577
836	Tuesday	$4.50 Coliseum Ale; $5.50 Beer of the Month; $6 House White or Red Wine; $6 Skyy Flavored Vodka; $6 Well Liquor; $6 Cocktail of the Day	4PM-8PM	577
837	Wednesday	$4.50 Coliseum Ale; $5.50 Beer of the Month; $6 House White or Red Wine; $6 Skyy Flavored Vodka; $6 Well Liquor; $6 Cocktail of the Day	4PM-8PM	577
838	Thursday	$4.50 Coliseum Ale; $5.50 Beer of the Month; $6 House White or Red Wine; $6 Skyy Flavored Vodka; $6 Well Liquor; $6 Cocktail of the Day	4PM-8PM	577
839	Friday	$4.50 Coliseum Ale; $5.50 Beer of the Month; $6 House White or Red Wine; $6 Skyy Flavored Vodka; $6 Well Liquor; $6 Cocktail of the Day	4PM-8PM	577
840	Saturday	None		577
841	Sunday	Happy Hour Specials	5PM-7PM	583
842	Monday	Happy Hour Specials	5PM-7PM	583
843	Tuesday	Happy Hour Specials	5PM-7PM	583
844	Wednesday	Happy Hour Specials	5PM-7PM	583
845	Thursday	Happy Hour Specials	5PM-7PM	583
846	Friday	Happy Hour Specials	5PM-7PM	583
847	Saturday	Happy Hour Specials	5PM-7PM	583
848	Sunday	None		595
849	Monday	$5 Wine Menu; $3-$4 Select Beers; $5 Pizzatta; Discounts on Wine of the Week	4PM-8PM	595
850	Tuesday	$5 Wine Menu; $3-$4 Select Beers; $5 Pizzatta; Discounts on Wine of the Week	4PM-8PM	595
851	Wednesday	$5 Wine Menu; $3-$4 Select Beers; $5 Pizzatta; Discounts on Wine of the Week	4PM-8PM	595
852	Thursday	$5 Wine Menu; $3-$4 Select Beers; $5 Pizzatta; Discounts on Wine of the Week	4PM-8PM	595
853	Friday	$5 Wine Menu; $3-$4 Select Beers; $5 Pizzatta; Discounts on Wine of the Week	4PM-8PM	595
854	Saturday	None		595
855	Sunday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	2PM-5PM	603
856	Monday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	5PM-8PM	603
857	Tuesday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	5PM-8PM	603
858	Wednesday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	5PM-8PM	603
859	Thursday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	5PM-8PM	603
860	Friday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	5PM-8PM	603
861	Saturday	$4 Naragansett Drafts; $6 House Wines; $8 Cocktail of the Day	2PM-5PM	603
862	Sunday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas	3PM-7PM	606
863	Monday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas; $3 Mexicali Cans ALL DAY for Music Monday	3PM-7PM	606
864	Tuesday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas; $4 Corona Light ALL DAY for Taco Tuesday	3PM-7PM	606
865	Wednesday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas; $4 Coney Island Mermaid Pilsner for TRIVIA NIGHT	3PM-7PM	606
866	Thursday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas	3PM-7PM	606
867	Friday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas	3PM-7PM	606
868	Saturday	$4 Draft Beers; $4 Wines; $5 Frozen Margaritas	3PM-7PM	606
869	Sunday	Free Omelette with Purchase of $5 Bloody Mary or $5 Mimosa	12PM-3PM	618
870	Monday	$3 Yuenlings; $4 Bud Light Drafts; $1 Off All Other Drafts; $4 Well Drinks; $6 Miller High Life Bottle with Shot of Whiskey	12PM-7PM	618
871	Tuesday	$3 Yuenlings; $4 Bud Light Drafts; $1 Off All Other Drafts; $4 Well Drinks; $6 Miller High Life Bottle with Shot of Whiskey	12PM-7PM	618
1015	Saturday	None		734
1170	Sunday	None		829
873	Thursday	$3 Yuenlings; $4 Bud Light Drafts; $1 Off All Other Drafts; $4 Well Drinks; $6 Miller High Life Bottle with Shot of Whiskey	12PM-7PM	618
874	Friday	$3 Yuenlings; $4 Bud Light Drafts; $1 Off All Other Drafts; $4 Well Drinks; $6 Miller High Life Bottle with Shot of Whiskey	12PM-7PM	618
875	Saturday	None		618
876	Sunday	None		623
877	Monday	$4 Select Beer Bottles; $6 Wine Specials; $7 Select Margaritas; $6 Select Well Drinks; Free Full Appetizer for Every Two Alcoholic Drinks	5PM-9PM	623
878	Tuesday	$4 Select Beer Bottles; $6 Wine Specials; $7 Select Margaritas; $6 Select Well Drinks; Free Full Appetizer for Every Two Alcoholic Drinks	5PM-9PM	623
879	Wednesday	$4 Select Beer Bottles; $6 Wine Specials; $7 Select Margaritas; $6 Select Well Drinks; Free Full Appetizer for Every Two Alcoholic Drinks	5PM-9PM	623
880	Thursday	$4 Select Beer Bottles; $6 Wine Specials; $7 Select Margaritas; $6 Select Well Drinks; Free Full Appetizer for Every Two Alcoholic Drinks	5PM-9PM	623
881	Friday	$4 Select Beer Bottles; $6 Wine Specials; $7 Select Margaritas; $6 Select Well Drinks; Free Full Appetizer for Every Two Alcoholic Drinks	5PM-9PM	623
882	Saturday	None		623
883	Sunday	$3 Coors Light and Pabst Blue Ribbon Cans; $3 Select Mixed Drinks; $3 Bloody Mary (till 9pm); $2.50 Miller Light/Bud Light (All Night)	2PM-1AM	628
884	Monday	$3 Coors Light and Pabst Blue Ribbon Cans; $3 Select Mixed Drinks; $3 Washington Apples	4PM-1AM	628
885	Tuesday	$3 Coors Light and Pabst Blue Ribbon Cans; $3 Select Mixed Drinks; $2 Margaritas	4PM-1AM	628
886	Wednesday	$3 Coors Light and Pabst Blue Ribbon Cans; $3 Select Mixed Drinks; $3 Pear Pickers	4PM-1AM	628
887	Thursday	$3 Coors Light and Pabst Blue Ribbon Cans; $3 Select Mixed Drinks; $3 Gin Pomade	4PM-1AM	628
888	Friday	$4 Bocce Ball	4PM-9PM	628
889	Saturday	$3 Apple Pie	4PM-9PM	628
890	Sunday	None		630
891	Monday	Wine Specials	4PM-7PM	630
892	Tuesday	Wine Specials	4PM-7PM	630
893	Wednesday	Wine Specials	4PM-7PM	630
894	Thursday	Wine Specials	4PM-7PM	630
895	Friday	Wine Specials	4PM-7PM	630
896	Saturday	None		630
897	Sunday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
898	Monday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
899	Tuesday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
900	Wednesday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
901	Thursday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
902	Friday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
903	Saturday	$2 Off All Drafts; $5 Well Drinks; Weekly Cocktail Specials	5PM-7PM;11PM-1AM	636
904	Sunday	None		654
905	Monday	2 for 1 Draft Beer and Well Drinks; $2 Off Wine	5PM-8PM	654
906	Tuesday	2 for 1 Draft Beer and Well Drinks; $2 Off Wine	5PM-8PM	654
907	Wednesday	2 for 1 Draft Beer and Well Drinks; $2 Off Wine	5PM-8PM	654
908	Thursday	2 for 1 Draft Beer and Well Drinks; $2 Off Wine	5PM-8PM	654
909	Friday	2 for 1 Draft Beer and Well Drinks; $2 Off Wine	5PM-8PM	654
910	Saturday	None		654
911	Sunday	$5 Bloody Mary and Mimosa Pints	All Day	661
912	Monday	$4 Brooklyn Pints; $5 PBR & A Shot	8PM-Close	661
913	Tuesday	$5 You-Call-It	8PM-Close	661
914	Wednesday	$4 Canned Beer	4PM-8PM	661
915	Thursday	$4 Captain Lawrence Pints; $4 Captain Morgan Drinks	4PM-8PM	661
916	Friday	$3 Shot Specials	4PM-8PM	661
917	Saturday	$5 Bloody Mary and Mimosa Pints (till 8pm); $3 Shot Specials (Till Close)	10AM-8PM;8PM-Close	661
918	Sunday	None		662
919	Monday	$1 Oysters and a Selection of Specially Priced Pernod Absinthe Cocktails	5PM-7PM	662
920	Tuesday	$1 Oysters and a Selection of Specially Priced Pernod Absinthe Cocktails	5PM-7PM	662
921	Wednesday	$1 Oysters and a Selection of Specially Priced Pernod Absinthe Cocktails	5PM-7PM	662
922	Thursday	$1 Oysters and a Selection of Specially Priced Pernod Absinthe Cocktails	5PM-7PM	662
923	Friday	$1 Oysters and a Selection of Specially Priced Pernod Absinthe Cocktails	5PM-7PM	662
924	Saturday	None		662
925	Sunday	None		674
926	Monday	$4/$5 Draght Beers; $6 Sangria; $6 House Wines; $6 Select Apps	3:30PM-6:30PM	674
927	Tuesday	$4/$5 Draght Beers; $6 Sangria; $6 House Wines; $6 Select Apps	3:30PM-6:30PM	674
928	Wednesday	$4/$5 Draght Beers; $6 Sangria; $6 House Wines; $6 Select Apps	3:30PM-6:30PM	674
929	Thursday	$4/$5 Draght Beers; $6 Sangria; $6 House Wines; $6 Select Apps	3:30PM-6:30PM	674
930	Friday	$4/$5 Draght Beers; $6 Sangria; $6 House Wines; $6 Select Apps	3:30PM-6:30PM	674
931	Saturday	None		674
932	Sunday	None		675
933	Monday	$6 Appetizers; $4 Beer; $5 Wine; $6 Sangria	3:30PM-6:30PM	675
934	Tuesday	$6 Appetizers; $4 Beer; $5 Wine; $6 Sangria	3:30PM-6:30PM	675
935	Wednesday	$6 Appetizers; $4 Beer; $5 Wine; $6 Sangria	3:30PM-6:30PM	675
936	Thursday	$6 Appetizers; $4 Beer; $5 Wine; $6 Sangria	3:30PM-6:30PM	675
937	Friday	$6 Appetizers; $4 Beer; $5 Wine; $6 Sangria	3:30PM-6:30PM	675
938	Saturday	None		675
939	Sunday	1$ Oysters	6PM-12AM	676
940	Monday	1$ Oysters	6PM-12AM	676
941	Tuesday	1$ Oysters	6PM-8PM	676
942	Wednesday	1$ Oysters	6PM-8PM	676
943	Thursday	1$ Oysters	6PM-8PM	676
944	Friday	1$ Oysters	6PM-8PM	676
945	Saturday	1$ Oysters	6PM-8PM	676
1016	Sunday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
1017	Monday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
946	Sunday	Select Beers 1 Liter - $10; Sion Kolsch .2 Liter - $2; Select Svedka Vodka and Plymouth Gin Cocktails - $5; House Margarita - $5; Select Shots - $5; Centenario 9yr Rum - $6; Riesling - $5; Pretzel - $5; Brat - $4	11PM-4AM	685
947	Monday	Select Beers 1 Liter - $10; Sion Kolsch .2 Liter - $2; Select Svedka Vodka and Plymouth Gin Cocktails - $5; House Margarita - $5; Select Shots - $5; Centenario 9yr Rum - $6; Riesling - $5; Pretzel - $5; Brat - $4	2PM-8PM;11PM-4AM	685
948	Tuesday	Select Beers 1 Liter - $10; Sion Kolsch .2 Liter - $2; Select Svedka Vodka and Plymouth Gin Cocktails - $5; House Margarita - $5; Select Shots - $5; Centenario 9yr Rum - $6; Riesling - $5; Pretzel - $5; Brat - $4	2PM-8PM;11PM-4AM	685
949	Wednesday	Select Beers 1 Liter - $10; Sion Kolsch .2 Liter - $2; Select Svedka Vodka and Plymouth Gin Cocktails - $5; House Margarita - $5; Select Shots - $5; Centenario 9yr Rum - $6; Riesling - $5; Pretzel - $5; Brat - $4	2PM-8PM;11PM-4AM	685
950	Thursday	Select Beers 1 Liter - $10; Sion Kolsch .2 Liter - $2; Select Svedka Vodka and Plymouth Gin Cocktails - $5; House Margarita - $5; Select Shots - $5; Centenario 9yr Rum - $6; Riesling - $5; Pretzel - $5; Brat - $4	2PM-8PM;11PM-4AM	685
951	Friday	Select Beers 1 Liter - $10; Sion Kolsch .2 Liter - $2; Select Svedka Vodka and Plymouth Gin Cocktails - $5; House Margarita - $5; Select Shots - $5; Centenario 9yr Rum - $6; Riesling - $5; Pretzel - $5; Brat - $4	2PM-8PM	685
952	Saturday	None		685
953	Sunday	Drink Specials Starting at $3	4PM-7PM	692
954	Monday	Drink Specials Starting at $3	4PM-7PM	692
955	Tuesday	Drink Specials Starting at $3	4PM-7PM	692
956	Wednesday	Drink Specials Starting at $3	4PM-7PM	692
957	Thursday	Drink Specials Starting at $3	4PM-7PM	692
958	Friday	Drink Specials Starting at $3	4PM-7PM	692
959	Saturday	Drink Specials Starting at $3	4PM-7PM	692
960	Sunday	None		700
961	Monday	None		700
962	Tuesday	$4 Domestics; $5 Imports; $6 Well Drinks; $6 Wines	5:30PM-8PM	700
963	Wednesday	$4 Domestics; $5 Imports; $6 Well Drinks; $6 Wines	5:30PM-8PM	700
964	Thursday	$4 Domestics; $5 Imports; $6 Well Drinks; $6 Wines	5:30PM-8PM	700
965	Friday	$4 Domestics; $5 Imports; $6 Well Drinks; $6 Wines	5:30PM-8PM	700
966	Saturday	None		700
967	Sunday	$4 Tap Beer; $6 House Cocktails; $7 House Wine; $7 Bloody Marys & Mimosas	11:30AM-4PM	702
968	Monday	$4 Tap Beer; $6 House Drinks; $7 House Wine; $1 Clams; $1 Oysters; $2 Sliders; $5 Spicy Tuna Rolls	3PM-7PM	702
969	Tuesday	$4 Tap Beer; $6 House Drinks; $7 House Wine; $1 Clams; $1 Oysters; $2 Sliders; $5 Spicy Tuna Rolls	3PM-7PM	702
970	Wednesday	$4 Tap Beer; $6 House Drinks; $7 House Wine; $1 Clams; $1 Oysters; $2 Sliders; $5 Spicy Tuna Rolls	3PM-7PM	702
971	Thursday	$4 Tap Beer; $6 House Drinks; $7 House Wine; $1 Clams; $1 Oysters; $2 Sliders; $5 Spicy Tuna Rolls	3PM-7PM	702
972	Friday	$4 Tap Beer; $6 House Drinks; $7 House Wine; $1 Clams; $1 Oysters; $2 Sliders; $5 Spicy Tuna Rolls	3PM-7PM	702
973	Saturday	$4 Tap Beer; $6 House Cocktails; $7 House Wine; $7 Bloody Marys & Mimosas	11:30AM-4PM	702
974	Sunday	None		703
975	Monday	None		703
976	Tuesday	Happy Hour Specials	4PM-8PM	703
977	Wednesday	Happy Hour Specials	4PM-8PM	703
978	Thursday	Happy Hour Specials	4PM-8PM	703
979	Friday	Happy Hour Specials	4PM-8PM	703
980	Saturday	None		703
981	Sunday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
982	Monday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
983	Tuesday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
984	Wednesday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
985	Thursday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
986	Friday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
987	Saturday	Reduced Prices for Special Drinks and Appetizers	4PM-8PM	706
988	Sunday	None		711
989	Monday	$1 Off Select Beers; $5 Irish Coffees	4PM-8PM	711
990	Tuesday	$1 Off Select Beers; $5 Irish Coffees	4PM-8PM	711
991	Wednesday	$1 Off Select Beers; $5 Irish Coffees	4PM-8PM	711
992	Thursday	$1 Off Select Beers; $5 Irish Coffees	4PM-8PM	711
993	Friday	$1 Off Select Beers; $5 Irish Coffees	4PM-8PM	711
994	Saturday	None		711
995	Sunday	$1 Off Pints; $1 Off All Other Drafts and Booze	12PM-4PM	718
996	Monday	$1 Off Pints; $1 Off All Other Drafts and Booze	3PM-7PM	718
997	Tuesday	$1 Off Pints; $1 Off All Other Drafts and Booze	3PM-7PM	718
998	Wednesday	$1 Off Pints; $1 Off All Other Drafts and Booze	3PM-7PM	718
999	Thursday	$1 Off Pints; $1 Off All Other Drafts and Booze	3PM-7PM	718
1000	Friday	$1 Off Pints; $1 Off All Other Drafts and Booze	3PM-7PM	718
1001	Saturday	$1 Off Pints; $1 Off All Other Drafts and Booze	12PM-4PM	718
1002	Sunday	$23 Per Person: 3 Domestic Pitchers & All U Can Eat Atomic Wings, Fries & Onion Rings (1-6pm); 1/2 Price Drafts; $4 Jameson, Jack & Jim Shots	1PM-6PM;7PM-9PM	721
1003	Monday	1/2 Price Bar; $4 U Call It; $9 Domestic Pitchers	Noon-8PM	721
1004	Tuesday	1/2 Price Bar; $1 Drafts; $8 Pitchers	Noon-8PM	721
1005	Wednesday	1/2 Price Bar; $9 Domestic Pitchers; 1/2 Pints; $5 Bomb Shots	Noon-8PM	721
1006	Thursday	1/2 Price Bar; $3 Domestic Bottles; 1/2 Price Shots; $5 Bomb Shots; $9 Domestic Pitchers	Noon-8PM	721
1007	Friday	1/2 Price Bar	Noon-8PM	721
1008	Saturday	$23 Per Person: 3 Domestic Pitchers & All U Can Eat Atomic Wings, Fries & Onion Rings (1-6pm); $1 Drafts; 1/2 Price Shots; $5 Bomb Shots (8-9pm)	1P-6PM;7PM-9PM	721
1009	Sunday	None		734
1010	Monday	25cent Wings	9PM-1AM	734
1011	Tuesday	25cent Wings	9PM-1AM	734
1012	Wednesday	25cent Wings	9PM-1AM	734
1013	Thursday	None		734
1014	Friday	None		734
1018	Tuesday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
1019	Wednesday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
1020	Thursday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
1021	Friday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
1022	Saturday	2 for 1 Rolling Rock and Narragansett Drafts; 2 for 1 Well Drinks	4PM-8PM	735
1023	Sunday	$1 PBRs	6PM-9PM	737
1024	Monday	$1 PBRs	6PM-9PM	737
1025	Tuesday	$1 PBRs	6PM-9PM	737
1026	Wednesday	$1 PBRs	6PM-9PM	737
1027	Thursday	$1 PBRs	6PM-9PM	737
1028	Friday	$1 PBRs	6PM-9PM	737
1029	Saturday	$1 PBRs	6PM-9PM	737
1030	Sunday	TV Sports Beer Specials & Wing Specials	All Day	741
1031	Monday	None		741
1032	Tuesday	None		741
1033	Wednesday	None		741
1034	Thursday	None		741
1035	Friday	None		741
1036	Saturday	None		741
1037	Sunday	None		752
1038	Monday	None		752
1039	Tuesday	None		752
1040	Wednesday	Jockstrap Wednesdays - $4 Bud, Bud Light Drafts; $4 Jager Shots	10PM-4AM	752
1041	Thursday	None		752
1042	Friday	None		752
1043	Saturday	None		752
1044	Sunday	None		754
1045	Monday	$1 Off All Drinks	4PM-7PM	754
1046	Tuesday	$1 Off All Drinks	4PM-7PM	754
1047	Wednesday	$1 Off All Drinks	4PM-7PM	754
1048	Thursday	$1 Off All Drinks	4PM-7PM	754
1049	Friday	$1 Off All Drinks	4PM-7PM	754
1050	Saturday	None		754
1051	Sunday	Free Drink With Brunch; Upgrade to Unlimited Drinks for $11	11:30AM-4PM	756
1052	Monday	2 for 1 Mugs & Mixed Drinks (3pm-7pm); $8 Coors & Miller Lite Pong Pitchers; $1 Coors & Miller Lite Mugs; $3 Import Mugs (7pm-Close); $5 Burgers and 1/2 Price Wings (7pm-10pm)	3PM-7PM;7PM-Close	756
1053	Tuesday	2 for 1 Mugs & Mixed Drinks (3pm-7pm); $4 Cuervo Shots; $5 Frozen Margaritas; $4 Corona, Corona Light, Sol & Dos Equis Bottles; $3 Coors & Miller Lite Pints (7pm-Close); $2 Beef or Chicken Tacos; $3 Steak, Fish or Shrimp Tacos (7pm-Midnight)	3PM-7PM;7PM-Close	756
1054	Wednesday	2 for 1 Mugs & Mixed Drinks (3pm-7pm); $12 Coors & Miller Lite Pitchers; $3 Coors & Miller Lite Pints; $4 Well Drinks; $4 Wine (7pm-Close); 1/2 Price Wings (7pm-Midnight)	3PM-7PM	756
1055	Thursday	$8 TURBOs; $3 Coors & Miller Lite Pints; $5 Well Drinks (7pm-Close); $15 Pitcher & Wings or Pizza (7pm-Midnight)	7PM-Close	756
1056	Friday	Drinks Start at $1 and Go Up $1 Each Hour (3pm-7pm); $20 Open Bar - Coors & Miller Lite Pints & Well Drinks (7pm-10pm)	3PM-7PM	756
1057	Saturday	Free Drink With Brunch; Upgrade to Unlimited Drinks for $11	11:30AM-4PM	756
1058	Sunday	None		758
1059	Monday	$3 ALL Beers; $4 Shots; $5 Drinks	3PM-7PM	758
1060	Tuesday	$3 ALL Beers; $4 Shots; $5 Drinks	3PM-7PM	758
1061	Wednesday	$3 ALL Beers; $4 Shots; $5 Drinks	3PM-7PM	758
1062	Thursday	$3 ALL Beers; $4 Shots; $5 Drinks	3PM-7PM	758
1063	Friday	$3 ALL Beers; $4 Shots; $5 Drinks	3PM-7PM	758
1064	Saturday	None		758
1065	Sunday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles; $8 House Wines; $10 Well Martinis	4PM-Close	761
1066	Monday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles;  $8 House Wines; $10 Well Martinis	4PM-Close	761
1067	Tuesday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles;  $8 House Wines; $10 Well Martinis	4PM-Close	761
1068	Wednesday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles;  $8 House Wines; $10 Well Martinis	4PM-Close	761
1069	Thursday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles;  $8 House Wines; $10 Well Martinis	4PM-Close	761
1070	Friday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles;  $8 House Wines; $10 Well Martinis	4PM-Close	761
1071	Saturday	$1 Blue Point Oysters; $1.50 Salish Oysters; $6 Drafts or Bottles; $8 House Wines; $10 Well Martinis	4PM-Close	761
1072	Sunday	None		775
1073	Monday	$5 Beer, Sangria & House Margaritas; 1/2 Price Select Appetizers (at the bar only)	3PM-6PM	775
1074	Tuesday	$5 Beer, Sangria & House Margaritas; 1/2 Price Select Appetizers (at the bar only)	3PM-6PM	775
1075	Wednesday	$5 Beer, Sangria & House Margaritas; 1/2 Price Select Appetizers (at the bar only)	3PM-6PM	775
1076	Thursday	$5 Beer, Sangria & House Margaritas; 1/2 Price Select Appetizers (at the bar only)	3PM-6PM	775
1077	Friday	$5 Beer, Sangria & House Margaritas; 1/2 Price Select Appetizers (at the bar only)	3PM-6PM	775
1078	Saturday	$5 Beer, Sangria & House Margaritas; 1/2 Price Select Appetizers (at the bar only)	3PM-6PM	775
1079	Sunday	$4 Draft Beer; $5 Bud/Bud Light; $5 Red or White Sangria; $5 Well Drinks; $7 Lime House Margaritas; Happy Hour Snacks (Taquitos, Tostaditas, etc) Starting at $5	All Day	779
1080	Monday	$4 Draft Beer; $5 Bud/Bud Light; $5 Red or White Sangria; $5 Well Drinks; $7 Lime House Margaritas; Happy Hour Snacks (Taquitos, Tostaditas, etc) Starting at $5	4PM-7PM	779
1081	Tuesday	$4 Draft Beer; $5 Bud/Bud Light; $5 Red or White Sangria; $5 Well Drinks; $7 Lime House Margaritas; Happy Hour Snacks (Taquitos, Tostaditas, etc) Starting at $5	4PM-7PM	779
1082	Wednesday	$4 Draft Beer; $5 Bud/Bud Light; $5 Red or White Sangria; $5 Well Drinks; $7 Lime House Margaritas; Happy Hour Snacks (Taquitos, Tostaditas, etc) Starting at $5	4PM-7PM	779
1083	Thursday	None		779
1084	Friday	None		779
1085	Saturday	$4 Draft Beer; $5 Bud/Bud Light; $5 Red or White Sangria; $5 Well Drinks; $7 Lime House Margaritas; Happy Hour Snacks (Taquitos, Tostaditas, etc) Starting at $5	12PM-7PM	779
1086	Sunday	Drink Specials	5PM-6:30PM	792
1087	Monday	Drink Specials	5PM-6:30PM	792
1088	Tuesday	Drink Specials	5PM-6:30PM	792
1089	Wednesday	Drink Specials	5PM-6:30PM	792
1090	Thursday	Drink Specials	5PM-6:30PM	792
1091	Friday	Drink Specials	5PM-6:30PM	792
1092	Saturday	Drink Specials	5PM-6:30PM	792
1093	Sunday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM;12AM-2AM	793
1094	Monday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM	793
1095	Tuesday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM	793
1096	Wednesday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM	793
1097	Thursday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM	793
1098	Friday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM	793
1099	Saturday	$4 Well Drinks; $4 Draft Beer; $5 Frozen Harrisons; $6 Beer and Shot	4PM-7PM	793
1100	Sunday	Half Price Drinks; $1 Oysters	6PM-9PM	800
1101	Monday	Half Price Drinks; $1 Oysters	6PM-9PM	800
1102	Tuesday	Half Price Drinks; $1 Oysters	6PM-9PM	800
1103	Wednesday	Half Price Drinks; $1 Oysters	6PM-9PM	800
1104	Thursday	Half Price Drinks; $1 Oysters	6PM-9PM	800
1105	Friday	Half Price Drinks; $1 Oysters	12AM-1AM	800
1106	Saturday	Half Price Drinks; $1 Oysters	12AM-1AM	800
1107	Sunday	50% Off Selected Drinks	6PM-8PM	801
1108	Monday	50% Off Selected Drinks	6PM-8PM	801
1109	Tuesday	50% Off Selected Drinks	6PM-8PM	801
1110	Wednesday	50% Off Selected Drinks	6PM-8PM	801
1111	Thursday	50% Off Selected Drinks	6PM-8PM	801
1112	Friday	50% Off Selected Drinks	6PM-8PM	801
1113	Saturday	50% Off Selected Drinks	6PM-8PM	801
1114	Sunday	Purchase of Brunch Includes Bellini or Mimosa	10AM-3PM	803
1115	Monday	Half Price Cocktails, Beer, Wine, & Appetizers	4PM-7PM	803
1116	Tuesday	Half Price Cocktails, Beer, Wine, & Appetizers	4PM-7PM	803
1117	Wednesday	Half Price Cocktails, Beer, Wine, & Appetizers (4pm-7pm); 1/2 Price Bottles of Wine (7pm-10:02pm)	4PM-7PM;7PM-10PM	803
1118	Thursday	Half Price Cocktails, Beer, Wine, & Appetizers (4pm-7pm); $10 Pitchers - Beers, White & Red Sangria, El Jimador Margarita, Bacardi Mothitos, and More (7pm-10:04pm)	4PM-7PM;7PM-10PM	803
1119	Friday	Half Price Cocktails, Beer, Wine, & Appetizers	4PM-7PM	803
1120	Saturday	Purchase of Brunch Includes Bellini or Mimosa	10AM-3PM	803
1121	Sunday	None		806
1122	Monday	Happy Mondays - $4-$8 Drinks and Cicchetti All Night at Bar and Dining Room	4PM-11PM	806
1123	Tuesday	$4-$8 Drinks and Cicchetti	4PM-8PM	806
1124	Wednesday	$4-$8 Drinks and Cicchetti	4PM-8PM	806
1125	Thursday	$4-$8 Drinks and Cicchetti	4PM-8PM	806
1126	Friday	$4-$8 Drinks and Cicchetti	4PM-8PM	806
1127	Saturday	None		806
1128	Sunday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1129	Monday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1130	Tuesday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1131	Wednesday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1132	Thursday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1133	Friday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1134	Saturday	$3.50 Well Drinks; $3.75 Premium Drinks	12PM-6PM	809
1135	Sunday	$3 Beer; $4 Appetizers; $5 Wines		811
1136	Monday	None		811
1137	Tuesday	$3 Beer; $4 Appetizers; $5 Wines	5:30PM-7PM	811
1138	Wednesday	$3 Beer; $4 Appetizers; $5 Wines	5:30PM-7PM	811
1139	Thursday	$3 Beer; $4 Appetizers; $5 Wines	5:30PM-7PM	811
1140	Friday	$3 Beer; $4 Appetizers; $5 Wines	5:30PM-7PM	811
1141	Saturday	$3 Beer; $4 Appetizers; $5 Wines		811
1142	Sunday	Entire Bar is Half Price (With a Few Minor Exceptions)	4PM-8PM	815
1143	Monday	Entire Bar is Half Price (With a Few Minor Exceptions)	4PM-8PM	815
1144	Tuesday	Entire Bar is Half Price (With a Few Minor Exceptions)	4PM-8PM	815
1145	Wednesday	Entire Bar is Half Price (With a Few Minor Exceptions)	4PM-8PM	815
1146	Thursday	Entire Bar is Half Price (With a Few Minor Exceptions)	4PM-8PM	815
1147	Friday	Entire Bar is Half Price (With a Few Minor Exceptions)	4PM-8PM	815
1148	Saturday	None		815
1149	Sunday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	5PM-10PM	816
1150	Monday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	5PM-10PM	816
1151	Tuesday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	5PM-10PM	816
1152	Wednesday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	5PM-10PM	816
1153	Thursday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	5PM-10PM	816
1154	Friday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	5PM-9PM	816
1155	Saturday	$4 Beer, Well Drinks and Wine; $7 Pork Buns; $2 Small Edamame	6PM-9PM	816
1156	Sunday	Burger and a Beer for $9.95	All Day	825
1157	Monday	Late Night Happy Hour	8PM-Close	825
1158	Tuesday	Late Night Happy Hour	8PM-Close	825
1159	Wednesday	Late Night Happy Hour	8PM-Close	825
1160	Thursday	Late Night Happy Hour	8PM-Close	825
1161	Friday	Late Night Happy Hour	8PM-Close	825
1162	Saturday	Burger and a Beer for $9.95	All Day	825
1163	Sunday	None		826
1164	Monday	$8 Cocktails; $5 Vino; $5 Draught Beers; Small Plates Starting at $3	4PM-7PM	826
1165	Tuesday	$8 Cocktails; $5 Vino; $5 Draught Beers; Small Plates Starting at $3	4PM-7PM	826
1166	Wednesday	$8 Cocktails; $5 Vino; $5 Draught Beers; Small Plates Starting at $3	4PM-7PM	826
1167	Thursday	$8 Cocktails; $5 Vino; $5 Draught Beers; Small Plates Starting at $3	4PM-7PM	826
1168	Friday	$8 Cocktails; $5 Vino; $5 Draught Beers; Small Plates Starting at $3	4PM-7PM	826
1171	Monday	All Beers, House Wines and Spirits are $4	4PM-8PM	829
1172	Tuesday	All Beers, House Wines and Spirits are $4	4PM-8PM	829
1173	Wednesday	All Beers, House Wines and Spirits are $4	4PM-8PM	829
1174	Thursday	All Beers, House Wines and Spirits are $4	4PM-8PM	829
1175	Friday	All Beers, House Wines and Spirits are $4	4PM-8PM	829
1176	Saturday	None		829
1177	Sunday	None		831
1178	Monday	None		831
1179	Tuesday	$2.99 Drinks for Ladies	6PM-11PM	831
1180	Wednesday	1/2 Priced Drinks and Appetizers	12PM-6PM	831
1181	Thursday	None		831
1182	Friday	2-for-1 Drinks	4PM-7PM	831
1183	Saturday	None		831
1184	Sunday	None		833
1185	Monday	$3 Bud/Bud Light Bottles & Draft; $3 Yuengling Draft; $3 PBR Tallboys; $3 Coors Light Bottles; $4 Mixed Well Drinks	4PM-8PM	833
1186	Tuesday	$3 Bud/Bud Light Bottles & Draft; $3 Yuengling Draft; $3 PBR Tallboys; $3 Coors Light Bottles; $4 Mixed Well Drinks	4PM-8PM	833
1187	Wednesday	$3 Bud/Bud Light Bottles & Draft; $3 Yuengling Draft; $3 PBR Tallboys; $3 Coors Light Bottles; $4 Mixed Well Drinks	4PM-8PM	833
1188	Thursday	$3 Bud/Bud Light Bottles & Draft; $3 Yuengling Draft; $3 PBR Tallboys; $3 Coors Light Bottles; $4 Mixed Well Drinks	4PM-8PM	833
1189	Friday	$3 Bud/Bud Light Bottles & Draft; $3 Yuengling Draft; $3 PBR Tallboys; $3 Coors Light Bottles; $4 Mixed Well Drinks	4PM-8PM	833
1190	Saturday	None		833
1191	Sunday	2-4-1 Specials	5PM-8PM	837
1192	Monday	2-4-1 Specials	5PM-8PM	837
1193	Tuesday	2-4-1 Specials	5PM-8PM	837
1194	Wednesday	2-4-1 Specials	5PM-8PM	837
1195	Thursday	2-4-1 Specials	5PM-8PM	837
1196	Friday	2-4-1 Specials	5PM-8PM	837
1197	Saturday	2-4-1 Specials	5PM-8PM	837
1198	Sunday	None		840
1199	Monday	$6 Select Draft Beers; $8 Select Wines; $9 Select Cocktails	4PM-7PM	840
1200	Tuesday	$6 Select Draft Beers; $8 Select Wines; $9 Select Cocktails	4PM-7PM	840
1201	Wednesday	$6 Select Draft Beers; $8 Select Wines; $9 Select Cocktails	4PM-7PM	840
1202	Thursday	$6 Select Draft Beers; $8 Select Wines; $9 Select Cocktails	4PM-7PM	840
1203	Friday	$6 Select Draft Beers; $8 Select Wines; $9 Select Cocktails	4PM-7PM	840
1204	Saturday	None		840
1205	Sunday	Free Mimosa with Brunch; $5 Mimosas; Drink Specials	9AM-3PM	842
1206	Monday	$5 Select Craft Drafts and Wines (At The Bar Only)	11AM-7PM	842
1207	Tuesday	$5 Select Craft Drafts and Wines (At The Bar Only)	11AM-7PM	842
1208	Wednesday	$5 Select Craft Drafts and Wines (At The Bar Only)	11AM-7PM	842
1209	Thursday	$5 Select Craft Drafts and Wines (At The Bar Only)	11AM-7PM	842
1210	Friday	$5 Select Craft Drafts and Wines (At The Bar Only)	11AM-7PM	842
1211	Saturday	Free Mimosa with Brunch; $5 Mimosas; Drink Specials	9AM-3PM	842
1212	Sunday	2fer1 Bud Light Drafts; $5 Mimosas	4PM-8PM;Midnight-1AM	844
1213	Monday	2fer1 Bud Light Draft, Bud Bottles and Well Cocktails (4pm-8pm); 2fer1 Stoli Hour (12am-1am)	4PM-8PM;Midnight-1AM	844
1214	Tuesday	2fer1 Bud Light Draft, Bud Bottles and Well Cocktails (4pm-8pm); 2fer1 Stoli Hour (12am-1am)	4PM-8PM;Midnight-1AM	844
1215	Wednesday	2fer1 Bud Light Draft, Bud Bottles and Well Cocktails (4pm-8pm); 2fer1 Stoli Hour (12am-1am)	4PM-8PM;Midnight-1AM	844
1216	Thursday	2fer1 Bud Light Draft, Bud Bottles and Well Cocktails (4pm-8pm); 2fer1 Stoli Hour (12am-1am)	4PM-8PM;Midnight-1AM	844
1217	Friday	2fer1 Bud Light Draft, Bud Bottles and Well Cocktails (4pm-8pm); 2fer1 Stoli Hour (12am-1am)	4PM-8PM;Midnight-1AM	844
1218	Saturday	2fer1 Bud Light Drafts; $5 Mimosas	4PM-8PM;Midnight-1AM	844
1219	Sunday	None		847
1220	Monday	$5 Cocktails	5PM-8PM	847
1221	Tuesday	$5 Cocktails	5PM-8PM	847
1222	Wednesday	$5 Cocktails	5PM-8PM	847
1223	Thursday	$5 Cocktails	5PM-8PM	847
1224	Friday	$5 Cocktails	5PM-8PM	847
1225	Saturday	None		847
1226	Sunday	None		848
1227	Monday	$10 Cocktails; Wine and Beer Specials	4PM-6PM	848
1228	Tuesday	$10 Cocktails; Wine and Beer Specials	4PM-6PM	848
1229	Wednesday	$10 Cocktails; Wine and Beer Specials	4PM-6PM	848
1230	Thursday	$10 Cocktails; Wine and Beer Specials	4PM-6PM	848
1231	Friday	$10 Cocktails; Wine and Beer Specials	4PM-6PM	848
1232	Saturday	None		848
1233	Sunday	None		854
1234	Monday	None		854
1235	Tuesday	Buy 1 Get 1 Free Drinks	4PM-8PM	854
1236	Wednesday	None		854
1237	Thursday	None		854
1238	Friday	None		854
1239	Saturday	None		854
1240	Sunday	$1 Off Bloody Marys; $1 Off Pitchers	Noon-6PM	863
1241	Monday	2-4-1 Well Drinks; $1 Off Drafts	4PM-8PM	863
1242	Tuesday	2-4-1 Well Drinks; $1 Off Drafts	4PM-8PM	863
1243	Wednesday	2-4-1 Well Drinks; $1 Off Drafts	4PM-8PM	863
1244	Thursday	2-4-1 Well Drinks; $1 Off Drafts	4PM-8PM	863
1245	Friday	2-4-1 Well Drinks; $1 Off Drafts	4PM-8PM	863
1246	Saturday	$1 Off Bloody Marys; $1 Off Pitchers	Noon-6PM	863
1247	Sunday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1248	Monday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1249	Tuesday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1250	Wednesday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1251	Thursday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1252	Friday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1253	Saturday	Any Tap Beer & a Nathan's Hot Dog-$5; All Tap Beers- $4; PBR & Highlife-$2; All Well $5; $1 Off All Else	12PM-7PM	873
1254	Sunday	$4 All Well Drinks and Beers	4PM-8PM	877
1255	Monday	$4 All Well Drinks and Beers	4PM-8PM	877
1256	Tuesday	$4 All Well Drinks and Beers	4PM-8PM	877
1257	Wednesday	$4 All Well Drinks and Beers	4PM-8PM	877
1258	Thursday	$4 All Well Drinks and Beers	4PM-8PM	877
1259	Friday	$4 All Well Drinks and Beers	4PM-8PM	877
1260	Saturday	$4 All Well Drinks and Beers	4PM-8PM	877
1261	Sunday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	2PM-9PM	879
1262	Monday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	5PM-9PM	879
1263	Tuesday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	5PM-9PM	879
1264	Wednesday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	5PM-9PM	879
1265	Thursday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	5PM-9PM	879
1266	Friday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	5PM-9PM	879
1267	Saturday	$1 Off All Drafts; $3 BREWmosa; $4 Well Drinks; $4 Genny + Hot Dog; $4 Genny + Jumbo Pretzel; $4 BROTY Mary	2PM-9PM	879
1268	Sunday	None		881
1269	Monday	$2 Off All Drinks	3PM-8PM	881
1270	Tuesday	$2 Off All Drinks	3PM-8PM	881
1271	Wednesday	$2 Off All Drinks	3PM-8PM	881
1272	Thursday	$2 Off All Drinks	3PM-8PM	881
1273	Friday	$2 Off All Drinks	3PM-8PM	881
1274	Saturday	None		881
1275	Sunday	None		884
1276	Monday	$4 Miller Lite Drafts; $13 Pitchers; $4 Glasses of Wine; $5 Well Drinks	5PM-8PM	884
1277	Tuesday	$4 Miller Lite Drafts; $13 Pitchers; $4 Glasses of Wine; $5 Well Drinks	5PM-8PM	884
1278	Wednesday	$4 Miller Lite Drafts; $13 Pitchers; $4 Glasses of Wine; $5 Well Drinks	5PM-8PM	884
1279	Thursday	$4 Miller Lite Drafts; $13 Pitchers; $4 Glasses of Wine; $5 Well Drinks	5PM-8PM	884
1280	Friday	$4 Miller Lite Drafts; $13 Pitchers; $4 Glasses of Wine; $5 Well Drinks	5PM-8PM	884
1281	Saturday	None		884
1282	Sunday	None		891
1283	Monday	$2 Shots; $3 Shots; $5 Half Liter & Shot; $15 Pitchers; $18 Loaded Lemonade Pitchers; $20 Cherry Pop; $60 Any 5 Pitchers	4PM-8PM	891
1284	Tuesday	$2 Shots; $3 Shots; $5 Half Liter & Shot; $15 Pitchers; $18 Loaded Lemonade Pitchers; $20 Cherry Pop; $60 Any 5 Pitchers	4PM-8PM	891
1285	Wednesday	$2 Shots; $3 Shots; $5 Half Liter & Shot; $15 Pitchers; $18 Loaded Lemonade Pitchers; $20 Cherry Pop; $60 Any 5 Pitchers	4PM-8PM	891
1286	Thursday	$2 Shots; $3 Shots; $5 Half Liter & Shot; $15 Pitchers; $18 Loaded Lemonade Pitchers; $20 Cherry Pop; $60 Any 5 Pitchers	4PM-8PM	891
1287	Friday	$2 Shots; $3 Shots; $5 Half Liter & Shot; $15 Pitchers; $18 Loaded Lemonade Pitchers; $20 Cherry Pop; $60 Any 5 Pitchers	4PM-8PM	891
1288	Saturday	None		891
1289	Sunday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1290	Monday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1291	Tuesday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1292	Wednesday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1293	Thursday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1294	Friday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1295	Saturday	$5 Margaritas; $5 Sangria; $6 Well Drinks	4PM-7PM	893
1296	Sunday	None		895
1297	Monday	$4 Mexicali Beer; $7 Sours and Fizzes	5PM-7PM	895
1298	Tuesday	$4 Mexicali Beer; $7 Sours and Fizzes	5PM-7PM	895
1299	Wednesday	$4 Mexicali Beer; $7 Sours and Fizzes	5PM-7PM	895
1300	Thursday	$4 Mexicali Beer; $7 Sours and Fizzes	5PM-7PM	895
1301	Friday	$4 Mexicali Beer; $7 Sours and Fizzes	5PM-7PM	895
1302	Saturday	None		895
1303	Sunday	$3 Bud Light Drafts; $4 Blue Hawaiian	All Day	896
1304	Monday	$3 Cosmos	All Day	896
1305	Tuesday	$3 Cosmos	All Day	896
1306	Wednesday	$3 Cosmos	All Day	896
1307	Thursday	$3 Cosmos	All Day	896
1308	Friday	$3 Cosmos	All Day	896
1309	Saturday	$4 Blue Hawaiian	All Day	896
1310	Sunday	None		898
1311	Monday	$1 Off Most; $.50 Off Some	3PM-7PM	898
1312	Tuesday	$1 Off Most; $.50 Off Some	3PM-7PM	898
1313	Wednesday	$1 Off Most; $.50 Off Some	3PM-7PM	898
1314	Thursday	$1 Off Most; $.50 Off Some	3PM-7PM	898
1315	Friday	$1 Off Most; $.50 Off Some	3PM-7PM	898
1316	Saturday	None		898
1317	Sunday	Free Bloody Mary or Mimosa with Brunch	11AM-4PM	903
1318	Monday	$5 Cosmos & Wines; $5 16oz Imports; $4 Domestics	11AM-7PM	903
1319	Tuesday	$5 Cosmos & Wines; $5 16oz Imports; $4 Domestics	11AM-7PM	903
1320	Wednesday	$5 Cosmos & Wines; $5 16oz Imports; $4 Domestics	11AM-7PM	903
1321	Thursday	$5 Cosmos & Wines; $5 16oz Imports; $4 Domestics	11AM-7PM	903
1322	Friday	$5 Cosmos & Wines; $5 16oz Imports; $4 Domestics	11AM-7PM	903
1323	Saturday	Free Bloody Mary or Mimosa with Brunch	11AM-4PM	903
1324	Sunday	None		905
1325	Monday	$1-$2 Off Drafts	2PM-8PM	905
1326	Tuesday	$1-$2 Off Drafts	2PM-8PM	905
1327	Wednesday	$1-$2 Off Drafts	2PM-8PM	905
1328	Thursday	$1-$2 Off Drafts	2PM-8PM	905
1329	Friday	$1-$2 Off Drafts	2PM-8PM	905
1330	Saturday	None		905
1331	Sunday	$9.95 Bottomless Mimosas and Bloody Marys	12PM-3PM	906
1332	Monday	2 for 1 Drinks; 1/2 Price Apps (10PM-Close)	4PM-7PM;10PM-Close	906
1333	Tuesday	2 for 1 Drinks; 1/2 Price Apps (10PM-Close)	4PM-7PM;10PM-Close	906
1334	Wednesday	2 for 1 Drinks; 1/2 Price Apps (10PM-Close)	4PM-7PM;10PM-Close	906
1335	Thursday	2 for 1 Drinks; 1/2 Price Apps (10PM-Close)	4PM-7PM;10PM-Close	906
1336	Friday	2 for 1 Drinks; 1/2 Price Apps (10PM-Close); Free Buffet (5pm-7pm)	4PM-7PM;10PM-Close	906
1337	Saturday	None		906
1338	Sunday	None		908
1339	Monday	Free Bar Snacks; $4 Draft Beer; $5 Select Wine & House Cocktails	3PM-6PM	908
1340	Tuesday	Free Bar Snacks; $4 Draft Beer; $5 Select Wine & House Cocktails	3PM-6PM	908
1341	Wednesday	Free Bar Snacks; $4 Draft Beer; $5 Select Wine & House Cocktails	3PM-6PM	908
1342	Thursday	Free Bar Snacks; $4 Draft Beer; $5 Select Wine & House Cocktails	3PM-6PM	908
1343	Friday	Free Bar Snacks; $4 Draft Beer; $5 Select Wine & House Cocktails	3PM-6PM	908
1344	Saturday	None		908
1345	Sunday	None		912
1346	Monday	1/2 Price Bar	Noon-8PM	912
1347	Tuesday	1/2 Price Bar	Noon-8PM	912
1348	Wednesday	1/2 Price Bar	Noon-8PM	912
1349	Thursday	1/2 Price Bar	Noon-8PM	912
1350	Friday	1/2 Price Bar	Noon-8PM	912
1351	Saturday	None		912
1352	Sunday	None		917
1353	Monday	$3 Select Beers; $4 Wines; $5 Cocktails	4PM-11PM	917
1354	Tuesday	$3 Select Beers; $4 Wines; $5 Cocktails	4PM-7PM	917
1355	Wednesday	$3 Select Beers; $4 Wines; $5 Cocktails	4PM-7PM	917
1356	Thursday	$3 Select Beers; $4 Wines; $5 Cocktails	4PM-7PM	917
1357	Friday	$3 Select Beers; $4 Wines; $5 Cocktails	4PM-7PM	917
1358	Saturday	None		917
1359	Sunday	None		918
1360	Monday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	918
1361	Tuesday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	918
1362	Wednesday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	918
1363	Thursday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	918
1364	Friday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	918
1365	Saturday	None		918
1366	Sunday	None		919
1367	Monday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	919
1368	Tuesday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	919
1369	Wednesday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	919
1370	Thursday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	919
1371	Friday	$5 Flavored Martinis, Champagne, Mimosa, Bellini, Kir Royale, Sangria, Wine, Cocktails, Margaritas and Frozen Drinks; $4 Imported & Domestic Beer	3PM-6PM	919
1372	Saturday	None		919
1373	Sunday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1374	Monday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1375	Tuesday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1376	Wednesday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1377	Thursday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1378	Friday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1379	Saturday	$5 20oz Drafts; $5 House Liquor Drinks; $5 Bottled Beer; $5 Wine	1PM-7PM	921
1380	Sunday	$6 All Margaritas, Sangria, or Blue Lui ($1 Extra)	4PM-8PM	925
1381	Monday	None		925
1382	Tuesday	$6 All Margaritas, Sangria, or Blue Lui ($1 Extra)	4PM-8PM	925
1383	Wednesday	$6 All Margaritas, Sangria, or Blue Lui ($1 Extra)	4PM-8PM	925
1384	Thursday	$6 All Margaritas, Sangria, or Blue Lui ($1 Extra)	4PM-8PM	925
1385	Friday	$6 All Margaritas, Sangria, or Blue Lui ($1 Extra)	4PM-8PM	925
1386	Saturday	$6 All Margaritas, Sangria, or Blue Lui ($1 Extra)	4PM-8PM	925
1387	Sunday	Brunch: $3 Mimosas; Happy Hour: $3 Well, Domestic Drafts and Wings	4PM-7PM	927
1388	Monday	$3 Well, Domestic Drafts and Wings	4PM-7PM	927
1389	Tuesday	$3 Well, Domestic Drafts and Wings	4PM-7PM	927
1390	Wednesday	$3 Well, Domestic Drafts and Wings	4PM-7PM	927
1391	Thursday	$3 Well, Domestic Drafts and Wings	4PM-7PM	927
1392	Friday	$3 Well, Domestic Drafts and Wings	4PM-7PM	927
1393	Saturday	Brunch: $3 Mimosas; Happy Hour: $3 Well, Domestic Drafts and Wings	4PM-7PM	927
1394	Sunday	$2 Mimosas; $4 Bloody Marys; $10 Bud Light & Coors Light Pitchers (11am-6pm); 1/2 Price Burgers; $4 Wells; $5 Calls; $6 Premiums (6pm-Close)	11AM-6PM	940
1395	Monday	$4 Drafts; $5 Crafts; $4 Well Drinks; $5.95 Classic Burgers; $6.95 Select Appetizers (11am-8pm); 50 Cent Wings (Min Order 10); $4 Fireball; $4 Bud Light, Coors Light, Heineken & Corona Bottles; $5 Mojitos (8pm-Close)	11AM-8PM;8PM-Close	940
1396	Tuesday	$4 Drafts; $5 Crafts; $4 Well Drinks; $5.95 Classic Burgers; $6.95 Select Appetizers (11am-8pm); $2 Tacos; $4 Coronas & Cuervo Shots; $5 Margaritas; $8 Bull Dogs (8pm-Close)	11AM-8PM;8PM-Close	940
1460	Wednesday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1461	Thursday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1397	Wednesday	$4 Drafts; $5 Crafts; $4 Well Drinks; $5.95 Classic Burgers; $6.95 Select Appetizers (11am-8pm); 2 for 1 Burgers; $4 Drafts; $5 Crafts; $4 Mixed Drinks; $10 Bud Light & Coors Light Pitchers (8pm-Close)	11AM-8PM;8PM-Close	940
1398	Thursday	$4 Drafts; $5 Crafts; $4 Well Drinks; $5.95 Classic Burgers; $6.95 Select Appetizers (11am-8pm); $10 Beer & Classic Burger; $5 Bombs; 1/2 Price Signature Cocktails (8pm-Close)	11AM-8PM;8PM-Close	940
1399	Friday	$4 Drafts; $5 Crafts; $4 Well Drinks; $5.95 Classic Burgers; $6.95 Select Appetizers	11AM-8PM	940
1400	Saturday	$2 Mimosas; $4 Bloody Marys; $10 Bud Light & Coors Light Pitchers (11am-8pm); Power Hour - $5 Mixed Drinks; $4 Fireball; $9 Pitchers (6pm-8pm)	11AM-6PM	940
1401	Sunday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer	5PM-8PM	949
1402	Monday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer	5PM-8PM	949
1403	Tuesday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer	5PM-8PM	949
1404	Wednesday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer	5PM-8PM	949
1405	Thursday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer; Beat the Clock Night - 5-6 All Beers $1, 6-7 All Beers $2, 7-8 All Beers $3 (Couple Bottles are $1 More)	5PM-8PM	949
1406	Friday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer	5PM-8PM	949
1407	Saturday	$4 House Drinks; $2 Off All Draft Pints; $1 Off All Bottles of Beer	5PM-8PM	949
1408	Sunday	None		956
1409	Monday	50% Off on Full Bar and House Bottles of Wine	4PM-7PM	956
1410	Tuesday	50% Off on Full Bar and House Bottles of Wine	4PM-7PM	956
1411	Wednesday	50% Off on Full Bar and House Bottles of Wine	4PM-7PM	956
1412	Thursday	Ladies Night - Half Price Drinks and Two Appetizers on the House for Every Lady	6PM-10PM	956
1413	Friday	50% Off on Full Bar and House Bottles of Wine	4PM-7PM	956
1414	Saturday	None		956
1415	Sunday	Half-Priced Beer & "BYOC" Coffee Spikes; $4 Bloody Marys	12PM-4AM	971
1416	Monday	Half-Priced Bar till 8; $3 Drafts; $4 Shots	11:30AM-8PM;8PM-4AM	971
1417	Tuesday	Half-Priced Bar Till 8; $4 "You Call It"	11:30AM-8PM;8PM-4AM	971
1418	Wednesday	Half-Priced Bar Till 8; $2 Cans; $8 Domestic Pitchers; $4 Fireball & Flavored Vodka Shots	11:30AM-8PM;8PM-4AM	971
1419	Thursday	Half-Priced Bar Till 8; $14 Buckets of Beer; $5 Bombs	11:30AM-8PM;8PM-4AM	971
1420	Friday	Half-Priced Bar Till 8	11:30AM-8PM;8PM-4AM	971
1421	Saturday	Half-Priced Bar Till 8	11:30AM-8PM;8PM-4AM	971
1422	Sunday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1423	Monday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1424	Tuesday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1425	Wednesday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1426	Thursday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1427	Friday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1428	Saturday	$4 Draft Beers; Daily Mixed Drink/Martini for $7	5PM-8PM	973
1429	Sunday	None		974
1430	Monday	$5 Select Domestics and Well Drinks	4PM-6PM	974
1431	Tuesday	$5 Select Domestics and Well Drinks	4PM-6PM	974
1432	Wednesday	$5 Select Domestics and Well Drinks	4PM-6PM	974
1433	Thursday	$5 Select Domestics and Well Drinks	4PM-6PM	974
1434	Friday	$5 Select Domestics and Well Drinks	4PM-6PM	974
1435	Saturday	None		974
1436	Sunday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	5PM-7PM	999
1437	Monday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	3PM-7PM	999
1438	Tuesday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	3PM-7PM	999
1439	Wednesday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	3PM-7PM	999
1440	Thursday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	3PM-7PM	999
1441	Friday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	3PM-7PM	999
1442	Saturday	Sake Hour - $4.50 Sake; $6 Wines; $4 Plum Wine; $4.50 Draft Beers; $7.50 Haru Cocktails; $4 Edamame; $3.50 California Rolls; $5 Spicy Tuna Rolls; $5 Crunchy Spicy Salmon Rolls; $6 Grilled Chicken Skewers; $6 Tempura; $5 Spring Rolls	5PM-7PM	999
1443	Sunday	None		1002
1444	Monday	Happy Hour Specials	3PM-7PM	1002
1445	Tuesday	Happy Hour Specials	3PM-7PM	1002
1446	Wednesday	Happy Hour Specials	3PM-7PM	1002
1447	Thursday	Happy Hour Specials	3PM-7PM	1002
1448	Friday	None		1002
1449	Saturday	None		1002
1450	Sunday	None		1008
1451	Monday	$5 Wells and Drafts	4PM-8PM	1008
1452	Tuesday	$5 Wells and Drafts	4PM-8PM	1008
1453	Wednesday	$5 Wells and Drafts	4PM-8PM	1008
1454	Thursday	$5 Wells and Drafts	4PM-8PM	1008
1455	Friday	$5 Wells and Drafts	4PM-8PM	1008
1456	Saturday	None		1008
1457	Sunday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1458	Monday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1459	Tuesday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1462	Friday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1463	Saturday	2 for 1 Beer, Wine & Well Drinks	4PM-8PM	1025
1464	Sunday	$30 Bottomless Brunch Includes Unlimited Mimosas, Screwdrivers and Bloody Mary's (11am-4pm); $3 Mimosas (till 8pm)	11AM-8PM	1034
1465	Monday	$4 Domestic Drafts; $5 Well Drinks, Champagne & Martinis; $25 All You Can Eat Buffalo Wings, Chicken Finters + All You Can Drink Domestic Beers (till 9:30pm)	All Night	1034
1466	Tuesday	Half Priced Well Drinks, Wine and Beer; $2 Premium Cocktails	All Night	1034
1467	Wednesday	$3 Champagne; $4 Domestic Drafts; $5 Well Drinks & Martinis	All Night	1034
1468	Thursday	$4 Domestic Drafts; $5 Well Drinks, Champagne & Martinis	5PM-8PM	1034
1469	Friday	$4 Domestic Drafts; $5 Well Drinks, Champagne & Martinis (5pm-10pm); $3 Champagne; $150 Bottle Special (2am-4am)	5PM-10PM;2AM-4AM	1034
1470	Saturday	$30 Bottomless Brunch Includes Unlimited Mimosas, Screwdrivers and Bloody Mary's (11am-4pm); $3 Mimosas (till 8pm)	11AM-8PM	1034
1471	Sunday	None		1039
1472	Monday	$3 Drafts; $3 Domestic Bottles; $5 McSorley's	8AM-8PM	1039
1473	Tuesday	$3 Drafts; $3 Domestic Bottles; $5 McSorley's	8AM-8PM	1039
1474	Wednesday	$3 Drafts; $3 Domestic Bottles; $5 McSorley's	8AM-8PM	1039
1475	Thursday	$3 Drafts; $3 Domestic Bottles; $5 McSorley's	8AM-8PM	1039
1476	Friday	$3 Drafts; $3 Domestic Bottles; $5 McSorley's	8AM-8PM	1039
1477	Saturday	$3 Drafts; $3 Domestic Bottles; $5 McSorley's	8AM-8PM	1039
1478	Sunday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1479	Monday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1480	Tuesday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1481	Wednesday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1482	Thursday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1483	Friday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1484	Saturday	$4 Well; $4-$6 Craft Beer; Wine From $7 Up	12PM-8PM	1040
1485	Sunday	None		1049
1486	Monday	1/2 Price Drinks on Everything!	12PM-8PM	1049
1487	Tuesday	1/2 Price Drinks on Everything!	12PM-8PM	1049
1488	Wednesday	1/2 Price Drinks on Everything!	12PM-8PM	1049
1489	Thursday	1/2 Price Drinks on Everything!	12PM-8PM	1049
1490	Friday	1/2 Price Drinks on Everything!	12PM-8PM	1049
1491	Saturday	None		1049
1492	Sunday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	12PM-7PM	1053
1493	Monday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	11AM-7PM	1053
1494	Tuesday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	11AM-7PM	1053
1495	Wednesday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	11AM-7PM	1053
1496	Thursday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	11AM-7PM	1053
1497	Friday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	11AM-7PM	1053
1498	Saturday	$6 Daily Draft Beer Special; $8 Cosmopolitans, Apple Martinis and Infused Vodka Martinis; $1 Off All Drinks (Till 5PM)	12PM-7PM	1053
1499	Sunday	None		1055
1500	Monday	$5 Brooklyn Seasonal, Chelsea Checker Cab, Bronx Pale Ale, & Bud Light Drafts; $5 Margaritas & Cosmos (11am-7pm); All Draft Beers $5 Each; $5 Shot Specials (12am-Close)	11AM-7PM;12AM-Close	1055
1501	Tuesday	$5 Brooklyn Seasonal, Chelsea Checker Cab, Bronx Pale Ale, & Bud Light Drafts; $5 Margaritas & Cosmos (11am-7pm); All Draft Beers $5 Each; $5 Shot Specials (12am-Close)	11AM-7PM;12AM-Close	1055
1502	Wednesday	$5 Brooklyn Seasonal, Chelsea Checker Cab, Bronx Pale Ale, & Bud Light Drafts; $5 Margaritas & Cosmos (11am-7pm); All Draft Beers $5 Each; $5 Shot Specials (12am-Close)	11AM-7PM;12AM-Close	1055
1503	Thursday	$5 Brooklyn Seasonal, Chelsea Checker Cab, Bronx Pale Ale, & Bud Light Drafts; $5 Margaritas & Cosmos (11am-7pm); All Draft Beers $5 Each; $5 Shot Specials (12am-Close)	11AM-7PM;12AM-Close	1055
1504	Friday	$5 Brooklyn Seasonal, Chelsea Checker Cab, Bronx Pale Ale, & Bud Light Drafts; $5 Margaritas & Cosmos (11am-7pm); All Draft Beers $5 Each; $5 Shot Specials (12am-Close)	11AM-7PM;12AM-Close	1055
1505	Saturday	None		1055
1506	Sunday	None		1062
1507	Monday	$3 Domestic Rolling Rock or Bud Light Draft; $3 Domestic Beer Bottle Selections; 25 Cent Wings	All Day	1062
1508	Tuesday	Taco Tuesday - 3 Chicken or Beef Tacos for $6; $5 Margaritas; $20 Pitchers of HS Sangria; $12 Buckets of Bud or Bud Light Bottles; $6 Chips with Homemade Guacamole	All Day	1062
1509	Wednesday	2 American Burger Sandwiches and a Pitcher of Rolling Rock or Bud Light Draft for $20	All Day	1062
1510	Thursday	$3 Draft of Rolling Rock or Bud Light; $3 Domestic Beer Bottled Selections; $5 Cosmos; $5 Margaritas; $6 Glass of Red or White Wine	All Day	1062
1511	Friday	$15 for a Top Shelf Open Bar	5:30PM-7:30PM	1062
1512	Saturday	None		1062
1513	Sunday	None		1069
1514	Monday	$4 Well Drinks; $4 and $5 Imperial	1PM-8PM	1069
1515	Tuesday	$4 Well Drinks; $4 and $5 Imperial	1PM-8PM	1069
1516	Wednesday	$4 Well Drinks; $4 and $5 Imperial	1PM-8PM	1069
1517	Thursday	$4 Well Drinks; $4 and $5 Imperial	1PM-8PM	1069
1518	Friday	$4 Well Drinks; $4 and $5 Imperial	1PM-8PM	1069
1519	Saturday	None		1069
1520	Sunday	$4 Drafts	2PM-9PM	1070
1521	Monday	$2 PBR; $3 Drafts; $4 Wells	2PM-9PM	1070
1522	Tuesday	$2 PBR; $3 Drafts; $4 Wells	2PM-9PM	1070
1523	Wednesday	$2 PBR; $3 Drafts; $4 Wells	2PM-9PM	1070
1524	Thursday	$2 PBR; $3 Drafts; $4 Wells	2PM-9PM	1070
1525	Friday	$2 PBR; $3 Drafts; $4 Wells	2PM-9PM	1070
1526	Saturday	$4 Drafts	2PM-9PM	1070
1527	Sunday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	All Day	1072
1528	Monday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	3PM-7PM	1072
1529	Tuesday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	3PM-7PM	1072
1530	Wednesday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	3PM-7PM	1072
1531	Thursday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	3PM-7PM	1072
1532	Friday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	3PM-7PM	1072
1533	Saturday	$5 Beer; $6 Glass of Wine; $20 Bottle of Wine; $10 Beer Flight; $11 Wine Flight	12PM-7PM	1072
1534	Sunday	None		1076
1535	Monday	$7 Cocktails; $5 Bottles of Beer; Small Bites	4PM-7:30PM	1076
1536	Tuesday	$7 Cocktails; $5 Bottles of Beer; Small Bites	4PM-7:30PM	1076
1537	Wednesday	$7 Cocktails; $5 Bottles of Beer; Small Bites	4PM-7:30PM	1076
1538	Thursday	$7 Cocktails; $5 Bottles of Beer; Small Bites	4PM-7:30PM	1076
1539	Friday	$7 Cocktails; $5 Bottles of Beer; Small Bites	4PM-7:30PM	1076
1540	Saturday	None		1076
1541	Sunday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1542	Monday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1543	Tuesday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1544	Wednesday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1545	Thursday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1546	Friday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1547	Saturday	$4 Draft Beer; All Wines $7	5PM-6:30PM	1078
1548	Sunday	None		1084
1549	Monday	None		1084
1550	Tuesday	All You Eat Wings for $4.99; $3 Shots; $5 Mixed Drinks; $10 Hookah	5PM-12AM	1084
1551	Wednesday	None		1084
1552	Thursday	None		1084
1553	Friday	None		1084
1554	Saturday	None		1084
1555	Sunday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1556	Monday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1557	Tuesday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1558	Wednesday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1559	Thursday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1560	Friday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1561	Saturday	$1 Off All Drinks; Specials on Whiskey, Jameson, Sauza, Goslings, Bloody Marys, etc.	12PM-8PM	1086
1562	Sunday	Happy Hour Specials	4PM-9PM	1099
1563	Monday	Happy Hour Specials	4PM-9PM	1099
1564	Tuesday	Happy Hour Specials	4PM-9PM	1099
1565	Wednesday	Happy Hour Specials	4PM-9PM	1099
1566	Thursday	Happy Hour Specials	4PM-9PM	1099
1567	Friday	Happy Hour Specials	4PM-9PM	1099
1568	Saturday	Happy Hour Specials	4PM-9PM	1099
1569	Sunday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1570	Monday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1571	Tuesday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1572	Wednesday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1573	Thursday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1574	Friday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1575	Saturday	$5 Bronx Ale, Shock Top, Magic Hat #9; $6 Pinot Grigio, Cabernet, and Prosecco; $7 Pomegranate White Cosmo, Bohemian Rhapsody, Ivy Martini, and Westside Manhattan	4PM-7PM	1107
1576	Sunday	Happy Hour Specials	5:30PM-7PM	1108
1577	Monday	Happy Hour Specials	5:30PM-7PM	1108
1578	Tuesday	Happy Hour Specials	5:30PM-7PM	1108
1579	Wednesday	Happy Hour Specials	5:30PM-7PM	1108
1580	Thursday	Happy Hour Specials	5:30PM-7PM	1108
1581	Friday	Happy Hour Specials	5:30PM-7PM	1108
1582	Saturday	Happy Hour Specials	5:30PM-7PM	1108
1583	Sunday	None		1117
1584	Monday	None		1117
1585	Tuesday	1/2 Price Select Glasses of Wine; $4 Draft Beers	5PM-7PM	1117
1586	Wednesday	1/2 Price Select Glasses of Wine; $4 Draft Beers	5PM-7PM	1117
1587	Thursday	1/2 Price Select Glasses of Wine; $4 Draft Beers	5PM-7PM	1117
1588	Friday	1/2 Price Select Glasses of Wine; $4 Draft Beers	5PM-7PM	1117
1589	Saturday	1/2 Price Select Glasses of Wine; $4 Draft Beers	5PM-7PM	1117
1590	Sunday	Half Price Drinks (12-8pm); $3 Drafts and $3 Shots (8pm-Close)	12PM-8PM;8PM-Close	1118
1591	Monday	Half Price Drinks (4-8pm); $1 Domestic Drafts; $8 Domestic Pitchers; $3 Shots (8pm-Close)	4PM-8PM;8PM-Close	1118
1592	Tuesday	Half Price Drinks (4-8pm); 1/2 Price Beer Boggles, Drafts and Pitchers (8pm-Close)	4PM-8PM;8PM-Close	1118
1593	Wednesday	Half Price Drinks (4-8pm); $3 "You Call It" Drafts, Bottles, Shots & Mixed Drinks (8pm-Close)	4PM-8PM;8PM-Close	1118
1594	Thursday	Half Price Drinks (4-8pm); $12 Domestic Buckets of Beer (5); 1/2 Price Bombs (8pm-Close)	4PM-8PM;8PM-Close	1118
1595	Friday	Half Price Drinks (3-8pm); $5 Code Blue Bombs; $5 Code Blue & Vodka (8pm-Close)	4PM-8PM;8PM-Close	1118
1596	Saturday	Half Price Drinks (12-8pm); Power Hour: $1 Drafts and $2 Shots (8-9pm)	12PM-8PM;8PM-9PM	1118
1597	Sunday	Beer of the Week; Select Wines; Cocktail of the Week	All Day	1120
1598	Monday	Select Drafts $5; House Wines $7	4PM-8PM	1120
1599	Tuesday	Select Drafts $5; House Wines $7	4PM-8PM	1120
1600	Wednesday	Select Drafts $5; House Wines $7	4PM-8PM	1120
1601	Thursday	Select Drafts $5; House Wines $7	4PM-8PM	1120
1602	Friday	Select Drafts $5; House Wines $7	4PM-8PM	1120
1603	Saturday	Beer of the Week; Select Wines; Cocktail of the Week	All Day	1120
1604	Sunday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1605	Monday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1606	Tuesday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1607	Wednesday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1608	Thursday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1609	Friday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1610	Saturday	Half Price All Drinks (Excluding Liquor or Wine by the Glass and Room Charge)	4PM-7PM	1122
1611	Sunday	None		1123
1612	Monday	$6 Frozen Margarita; $8 Rocks Margarita; $5 Draft Beers; $4 House Wines; $2 Taquito; $3 Tex Mex Tostada; $5 Taco	3PM-6PM	1123
1613	Tuesday	$6 Frozen Margarita; $8 Rocks Margarita; $5 Draft Beers; $4 House Wines; $2 Taquito; $3 Tex Mex Tostada; $5 Taco	3PM-6PM	1123
1614	Wednesday	$6 Frozen Margarita; $8 Rocks Margarita; $5 Draft Beers; $4 House Wines; $2 Taquito; $3 Tex Mex Tostada; $5 Taco	3PM-6PM	1123
1615	Thursday	$6 Frozen Margarita; $8 Rocks Margarita; $5 Draft Beers; $4 House Wines; $2 Taquito; $3 Tex Mex Tostada; $5 Taco	3PM-6PM	1123
1616	Friday	$6 Frozen Margarita; $8 Rocks Margarita; $5 Draft Beers; $4 House Wines; $2 Taquito; $3 Tex Mex Tostada; $5 Taco	3PM-6PM	1123
1617	Saturday	None		1123
1618	Sunday	$5 Select Draft Beers; $5 Select Craft Cans; $6 Well Drinks; $8 NY State Wines on Tap	11AM-7PM;11PM-1AM	1127
1619	Monday	$5 Select Draft Beers; $5 Select Craft Cans; $6 Well Drinks; $8 NY State Wines on Tap	11AM-7PM;11PM-1AM	1127
1620	Tuesday	$5 Select Draft Beers; $5 Select Craft Cans; $6 Well Drinks; $8 NY State Wines on Tap	11AM-7PM;11PM-1AM	1127
1621	Wednesday	$5 Select Draft Beers; $5 Select Craft Cans; $6 Well Drinks; $8 NY State Wines on Tap	11AM-7PM;11PM-1AM	1127
1622	Thursday	$5 Select Draft Beers; $5 Select Craft Cans; $6 Well Drinks; $8 NY State Wines on Tap	11AM-7PM;11PM-1AM	1127
1623	Friday	None		1127
1624	Saturday	None		1127
1625	Sunday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light		1129
1626	Monday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light	4PM-6PM	1129
1627	Tuesday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light	4PM-6PM	1129
1628	Wednesday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light	4PM-6PM	1129
1629	Thursday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light	4PM-6PM	1129
1630	Friday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light	4PM-6PM	1129
1631	Saturday	$1.50 Jr. Burgers; 1/2 Price Well Drinks; $4 Buckets of Coors & Coors Light		1129
1632	Sunday	None		1130
1633	Monday	$7 Wines and $4 Beers	6PM-8PM	1130
1634	Tuesday	$7 Wines and $4 Beers	6PM-8PM	1130
1635	Wednesday	$7 Wines and $4 Beers	6PM-8PM	1130
1636	Thursday	$7 Wines and $4 Beers	6PM-8PM	1130
1637	Friday	$7 Wines and $4 Beers	6PM-8PM	1130
1638	Saturday	None		1130
1639	Sunday	None		1131
1640	Monday	$5.50 Pints	4PM-7PM	1131
1641	Tuesday	$5.50 Pints	4PM-7PM	1131
1642	Wednesday	$5.50 Pints	4PM-7PM	1131
1643	Thursday	$5.50 Pints	4PM-7PM	1131
1644	Friday	$5.50 Pints	4PM-7PM	1131
1645	Saturday	None		1131
1646	Sunday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1647	Monday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1648	Tuesday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1649	Wednesday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1650	Thursday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1651	Friday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1652	Saturday	Oyster Happy Hour - Half Dozen Oysters or Clams and Choice of Sparking Wine or a Pint of Oyster Stout Ale for $15	5PM-7PM	1140
1653	Sunday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1654	Monday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1655	Tuesday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1656	Wednesday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1657	Thursday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1658	Friday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1659	Saturday	$3 Cans of PBR/Rolling Rock; $4 Domestic Drafts; $6 Margaritas - Frozen or on the Rocks; $7 Mixed Drinks and Glasses of Wine	4PM-8PM	1144
1660	Sunday	None		1145
1726	Wednesday	2-for-1 Top Shelf Drinks	5PM-9PM	1178
1661	Monday	Buy 2 Get 1 Free (12pm-3pm); $4.25 Jack, Cuervo, Bacardi and Well Drinks (3pm-7pm)	12PM-3PM;3PM-7PM	1145
1662	Tuesday	Buy 2 Get 1 Free (12pm-3pm); $4.25 Jack, Cuervo, Bacardi and Well Drinks (3pm-7pm)	12PM-3PM;3PM-7PM	1145
1663	Wednesday	Buy 2 Get 1 Free (12pm-3pm); $4.25 Jack, Cuervo, Bacardi and Well Drinks (3pm-7pm)	12PM-3PM;3PM-7PM	1145
1664	Thursday	Buy 2 Get 1 Free (12pm-3pm); $4.25 Jack, Cuervo, Bacardi and Well Drinks (3pm-7pm)	12PM-3PM;3PM-7PM	1145
1665	Friday	Buy 2 Get 1 Free (12pm-3pm); $4.25 Jack, Cuervo, Bacardi and Well Drinks (3pm-7pm)	12PM-3PM;3PM-7PM	1145
1666	Saturday	None		1145
1667	Sunday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-8PM	1150
1668	Monday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-4AM	1150
1669	Tuesday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-8PM	1150
1670	Wednesday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-8PM	1150
1671	Thursday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-8PM	1150
1672	Friday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-8PM	1150
1673	Saturday	$4 Bud, Bud Lite, Coors Lite and Yuengling Drafts; $5 Well Drinks; $5 Wines	12PM-8PM	1150
1674	Sunday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-9PM	1156
1675	Monday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-9PM	1156
1676	Tuesday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-9PM	1156
1677	Wednesday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-Close	1156
1678	Thursday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-9PM	1156
1679	Friday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-9PM	1156
1680	Saturday	$6 Beer; $6 Wine; $6 Well Drinks; $9 Specialty Cocktails	5PM-9PM	1156
1681	Sunday	1/2 Price Beer	All Day	1159
1682	Monday	1/2 Price Well Drinks and Beer	4PM-9PM	1159
1683	Tuesday	1/2 Price Well Drinks and Beer	4PM-9PM	1159
1684	Wednesday	1/2 Price Well Drinks and Beer	4PM-9PM	1159
1685	Thursday	1/2 Price Well Drinks and Beer	4PM-9PM	1159
1686	Friday	1/2 Price Well Drinks and Beer	4PM-9PM	1159
1687	Saturday	1/2 Price Well Drinks and Beer	4PM-9PM	1159
1688	Sunday	$4 Bud Light, Junction Ale, and Yuengling Pints; $14 Pitchers; $4 Shot Specials (All Day); Any Brunch Item & Unlimited Mimosas, Bloodys or Screwdrivers for 2 Hrs - $25 (During Brunch)	All Day	1160
1689	Monday	$4 Bud Light, Junction Ale, and Yuengling Drafts; $4 Well Liquor; $5 House Chardonnay and House Malbec	11AM-7PM	1160
1690	Tuesday	$4 Bud Light, Junction Ale, and Yuengling Drafts; $4 Well Liquor; $5 House Chardonnay and House Malbec	11AM-7PM	1160
1691	Wednesday	$4 Bud Light, Junction Ale, and Yuengling Drafts; $4 Well Liquor; $5 House Chardonnay and House Malbec	11AM-7PM	1160
1692	Thursday	$4 Bud Light, Junction Ale, and Yuengling Drafts; $4 Well Liquor; $5 House Chardonnay and House Malbec	11AM-7PM	1160
1693	Friday	$4 Bud Light, Junction Ale, and Yuengling Drafts; $4 Well Liquor; $5 House Chardonnay and House Malbec	11AM-7PM	1160
1694	Saturday	$4 Bud Light, Junction Ale, and Yuengling Pints; $14 Pitchers; $4 Shot Specials (All Day); Any Brunch Item & Unlimited Mimosas, Bloodys or Screwdrivers for 2 Hrs - $25 (During Brunch)	All Day	1160
1695	Sunday	None		1165
1696	Monday	$2 Off Selected Pints and Bottles; 1/2 Price Drinks - Any Mixed Drinks, Any Drinks on the Rocks, Any Shot (Except Top Shelf)	3PM-8PM	1165
1697	Tuesday	$2 Off Selected Pints and Bottles; 1/2 Price Drinks - Any Mixed Drinks, Any Drinks on the Rocks, Any Shot (Except Top Shelf)	3PM-8PM	1165
1698	Wednesday	$2 Off Selected Pints and Bottles; 1/2 Price Drinks - Any Mixed Drinks, Any Drinks on the Rocks, Any Shot (Except Top Shelf)	3PM-8PM	1165
1699	Thursday	$2 Off Selected Pints and Bottles; 1/2 Price Drinks - Any Mixed Drinks, Any Drinks on the Rocks, Any Shot (Except Top Shelf)	3PM-8PM	1165
1700	Friday	$2 Off Selected Pints and Bottles; 1/2 Price Drinks - Any Mixed Drinks, Any Drinks on the Rocks, Any Shot (Except Top Shelf)	3PM-8PM	1165
1701	Saturday	None		1165
1702	Sunday	None		1167
1703	Monday	$6 Wines by the Glass; $5 Beer on Tap	5PM-7PM	1167
1704	Tuesday	$6 Wines by the Glass; $5 Beer on Tap	5PM-7PM	1167
1705	Wednesday	$6 Wines by the Glass; $5 Beer on Tap	5PM-7PM	1167
1706	Thursday	$6 Wines by the Glass; $5 Beer on Tap	5PM-7PM	1167
1707	Friday	$6 Wines by the Glass; $5 Beer on Tap	5PM-7PM	1167
1708	Saturday	None		1167
1709	Sunday	50% Off All Drinks	1PM-8PM	1172
1710	Monday	50% Off All Drinks	2PM-8PM	1172
1711	Tuesday	50% Off All Drinks	2PM-8PM	1172
1712	Wednesday	50% Off All Drinks	2PM-8PM	1172
1713	Thursday	50% Off All Drinks	2PM-8PM	1172
1714	Friday	50% Off All Drinks	2PM-8PM	1172
1715	Saturday	50% Off All Drinks	1PM-8PM	1172
1716	Sunday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1717	Monday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1718	Tuesday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1719	Wednesday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1720	Thursday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1721	Friday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1722	Saturday	$5 Draft Beers; $10 Specialty Cocktails; $6 Glasses of Montepulciano & Chilean Sauvignon Blan	4PM-7PM;12AM-2AM	1176
1723	Sunday	None		1178
1724	Monday	2-for-1 Top Shelf Drinks	5PM-9PM	1178
1725	Tuesday	2-for-1 Top Shelf Drinks	5PM-9PM	1178
1727	Thursday	2-for-1 Top Shelf Drinks	5PM-9PM	1178
1728	Friday	2-for-1 Top Shelf Drinks	5PM-9PM	1178
1729	Saturday	None		1178
1730	Sunday	Happy Hour Specials	4PM-8PM	1181
1731	Monday	Happy Hour Specials	4PM-8PM	1181
1732	Tuesday	Happy Hour Specials	4PM-8PM	1181
1733	Wednesday	Happy Hour Specials	4PM-12AM	1181
1734	Thursday	Happy Hour Specials	4PM-8PM	1181
1735	Friday	Happy Hour Specials	4PM-8PM	1181
1736	Saturday	Happy Hour Specials	4PM-8PM	1181
1737	Sunday	None		1186
1738	Monday	1/2 Off All Draft Beer (at the bar)	3PM-6PM	1186
1739	Tuesday	1/2 Off All Draft Beer (at the bar)	3PM-6PM	1186
1740	Wednesday	1/2 Off All Draft Beer (at the bar)	3PM-6PM	1186
1741	Thursday	1/2 Off All Draft Beer (at the bar)	3PM-6PM	1186
1742	Friday	1/2 Off All Draft Beer (at the bar)	3PM-6PM	1186
1743	Saturday	None		1186
1744	Sunday	None		1188
1745	Monday	$3 Draughts; $5 Stella, Sierra Nevada and $6 Guinness (20 oz.); $4 Well Drinks; $4 Wine	12PM-8PM	1188
1746	Tuesday	$3 Draughts; $5 Stella, Sierra Nevada and $6 Guinness (20 oz.); $4 Well Drinks; $4 Wine	12PM-8PM	1188
1747	Wednesday	$3 Draughts; $5 Stella, Sierra Nevada and $6 Guinness (20 oz.); $4 Well Drinks; $4 Wine	12PM-8PM	1188
1748	Thursday	$3 Draughts; $5 Stella, Sierra Nevada and $6 Guinness (20 oz.); $4 Well Drinks; $4 Wine	12PM-8PM	1188
1749	Friday	$3 Draughts; $5 Stella, Sierra Nevada and $6 Guinness (20 oz.); $4 Well Drinks; $4 Wine	12PM-8PM	1188
1750	Saturday	None		1188
1751	Sunday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-4AM	1194
1752	Monday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-4AM	1194
1753	Tuesday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-10PM	1194
1754	Wednesday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-10PM	1194
1755	Thursday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-10PM	1194
1756	Friday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-10PM	1194
1757	Saturday	2-for-1 Well Drinks, Shots, Cocktails, Martinis, Wine, All Import Drafts & Bottles	4PM-10PM	1194
1758	Sunday	$4 Pints	4PM-7PM	1198
1759	Monday	$4 Pints	4PM-7PM	1198
1760	Tuesday	$4 Pints	4PM-7PM	1198
1761	Wednesday	$4 Pints	4PM-7PM	1198
1762	Thursday	$4 Pints	4PM-7PM	1198
1763	Friday	$4 Pints	4PM-7PM	1198
1764	Saturday	$4 Pints	4PM-7PM	1198
1765	Sunday	None		1204
1766	Monday	Two-for-One Drinks	4PM-8PM	1204
1767	Tuesday	Two-for-One Drinks	4PM-8PM	1204
1768	Wednesday	Two-for-One Drinks	4PM-8PM	1204
1769	Thursday	Two-for-One Drinks	4PM-8PM	1204
1770	Friday	Two-for-One Drinks	4PM-8PM	1204
1771	Saturday	Two-for-One Drinks	4PM-8PM	1204
1772	Sunday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1773	Monday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1774	Tuesday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1775	Wednesday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1776	Thursday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1777	Friday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1778	Saturday	$6 Wine by the Glass; $5 Beer Draughts and Bottles	4PM-7PM	1207
1779	Sunday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1780	Monday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1781	Tuesday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1782	Wednesday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1783	Thursday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1784	Friday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1785	Saturday	$5 Well Drinks/Tap Beer/Glass of Wine; Complimentary Snacks	5PM-8PM	1213
1786	Sunday	None		1222
1787	Monday	None		1222
1788	Tuesday	Specially Priced Cocktails and Latin-Asian Street Foods	5PM-7PM	1222
1789	Wednesday	Specially Priced Cocktails and Latin-Asian Street Foods	5PM-7PM	1222
1790	Thursday	Specially Priced Cocktails and Latin-Asian Street Foods	5PM-7PM	1222
1791	Friday	Specially Priced Cocktails and Latin-Asian Street Foods	5PM-7PM	1222
1792	Saturday	None		1222
1793	Sunday	1/2 Price (All Alcoholic Beverages)	5PM-9PM;11PM-Close	1234
1794	Monday	1/2 Price (All Alcoholic Beverages)	5PM-9PM;11PM-Close	1234
1795	Tuesday	1/2 Price (All Alcoholic Beverages)	5PM-9PM;11PM-Close	1234
1796	Wednesday	1/2 Price (All Alcoholic Beverages)	3PM-9PM;11PM-Close	1234
1797	Thursday	1/2 Price (All Alcoholic Beverages)	3PM-9PM;12AM-Close	1234
1798	Friday	1/2 Price (All Alcoholic Beverages)	3PM-9PM	1234
1799	Saturday	1/2 Price (All Alcoholic Beverages)	3PM-9PM	1234
1800	Sunday	Margarita, Sangria and Draft Beer Specials; Special Bar Antojitos Menu (4PM-7PM); $10 Pitchers of Sangria (All Day)	All Day	1240
1801	Monday	Margarita, Sangria and Draft Beer Specials; Special Bar Antojitos Menu	4PM-7PM	1240
1802	Tuesday	Margarita, Sangria and Draft Beer Specials; Special Bar Antojitos Menu (4PM-7PM); $5 Fresh Lime Frozen Margaritas (All Day)	4PM-7PM, All Day	1240
1803	Wednesday	Margarita, Sangria and Draft Beer Specials; Special Bar Antojitos Menu	4PM-7PM	1240
1804	Thursday	Margarita, Sangria and Draft Beer Specials; Special Bar Antojitos Menu	4PM-7PM	1240
1805	Friday	Margarita, Sangria and Draft Beer Specials; Special Bar Antojitos Menu	4PM-7PM	1240
1806	Saturday	None		1240
1807	Sunday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1808	Monday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1809	Tuesday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1810	Wednesday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1811	Thursday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1812	Friday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1813	Saturday	$5 Draft Beers; $6 Red and White Wine and Champagne	3PM-6PM	1246
1814	Sunday	None		1250
1815	Monday	Buy-one-get-one on All Drinks; 10 Cent Buffalo Wings	4PM-7PM	1250
1816	Tuesday	Buy-one-get-one on All Drinks; 10 Cent Buffalo Wings	4PM-7PM	1250
1817	Wednesday	Buy-one-get-one on All Drinks; 10 Cent Buffalo Wings	4PM-7PM	1250
1818	Thursday	Buy-one-get-one on All Drinks; 10 Cent Buffalo Wings	4PM-7PM	1250
1819	Friday	Buy-one-get-one on All Drinks; 10 Cent Buffalo Wings	4PM-7PM	1250
1820	Saturday	None		1250
1821	Sunday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1822	Monday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1823	Tuesday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1824	Wednesday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1825	Thursday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1826	Friday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1827	Saturday	Daily Double - $4 Daily Selected Bottle and $4 Daily Selected Draught	All Day	1252
1828	Sunday	None		1256
1829	Monday	Margarita Mondays - $5 Margaritas	All Night	1256
1830	Tuesday	Ladies Night - $5 Drinks	All Night	1256
1831	Wednesday	Beer & Shots - $3 Shots; $9 Pitchers; $4 Draft Beer	All Night	1256
1832	Thursday	Boys Night - Buy Two Drinks, Get the Third for Free	All Night	1256
1833	Friday	Classic Martini Nite - $6 Martinis & Cosmopolitans	All Night	1256
1834	Saturday	None		1256
1835	Sunday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	12PM-Close	1257
1836	Monday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	3PM-8PM	1257
1837	Tuesday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	3PM-8PM	1257
1838	Wednesday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	3PM-8PM	1257
1839	Thursday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	3PM-8PM	1257
1840	Friday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	3PM-8PM	1257
1841	Saturday	$5 Margaritas, Cosmos, Appletinis, Lychee Martinis, Strawberry Basil Martinis, Pomegranate Fizz; $4 Bud, Bud Light, Coors Light	12PM-10PM	1257
1842	Sunday	Various Specials	4PM-7PM	1266
1843	Monday	Various Specials	4PM-7PM	1266
1844	Tuesday	Various Specials	4PM-7PM	1266
1845	Wednesday	Various Specials	4PM-7PM	1266
1846	Thursday	Various Specials	4PM-7PM	1266
1847	Friday	Various Specials	4PM-7PM	1266
1848	Saturday	Various Specials	4PM-7PM	1266
1849	Sunday	Happy Hour Specials	11AM-7PM	1270
1850	Monday	Happy Hour Specials	4PM-7PM	1270
1851	Tuesday	Happy Hour Specials	4PM-7PM	1270
1852	Wednesday	Happy Hour Specials	4PM-7PM	1270
1853	Thursday	Happy Hour Specials	4PM-7PM	1270
1854	Friday	Happy Hour Specials	4PM-7PM	1270
1855	Saturday	Happy Hour Specials	11AM-7PM	1270
1856	Sunday	1 App + 1 Pasta $25; $4 Beer; $5 Wine; $6 Cocktails	5PM-7PM	1279
1857	Monday	1 App + 1 Pasta $25; $4 Beer; $5 Wine; $6 Cocktails	5PM-7PM	1279
1858	Tuesday	1 App + 1 Pasta $25; $4 Beer; $5 Wine; $6 Cocktails	5PM-7PM	1279
1859	Wednesday	1 App + 1 Pasta $25; $4 Beer; $5 Wine; $6 Cocktails	5PM-7PM	1279
1860	Thursday	1 App + 1 Pasta $25; $4 Beer; $5 Wine; $6 Cocktails	5PM-7PM	1279
1861	Friday	1 App + 1 Pasta $25; $4 Beer; $5 Wine; $6 Cocktails	5PM-7PM	1279
1862	Saturday	1 App + 1 Pasta $25; $4 Beer; $5 Wine & $6 Cocktails	5PM-7PM	1279
1863	Sunday	$4 Mimosa; $4 Bloody Mary; $4 Domestic Beer	11AM-3PM;Midnight-4AM	1280
1864	Monday	$4 Drafts; $5 Well Drinks; $6 Wines; $7 Frozen Drinks	4PM-7PM;Midnight-4AM	1280
1865	Tuesday	$4 Drafts; $5 Well Drinks; $6 Wines; $7 Frozen Drinks	4PM-7PM;Midnight-4AM	1280
1866	Wednesday	$4 Drafts; $5 Well Drinks; $6 Wines; $7 Frozen Drinks	4PM-7PM;Midnight-4AM	1280
1867	Thursday	$4 Drafts; $5 Well Drinks; $6 Wines; $7 Frozen Drinks	4PM-7PM;Midnight-4AM	1280
1868	Friday	$4 Drafts; $5 Well Drinks; $6 Wines; $7 Frozen Drinks	4PM-7PM	1280
1869	Saturday	$4 Mimosa; $4 Bloody Mary; $4 Domestic Beer	11AM-3PM	1280
1870	Sunday	None		1281
1871	Monday	$26 Btls; $8 Glasses; $12 for 3 Meats/Cheeses	5PM-7:30PM	1281
1872	Tuesday	$26 Btls; $8 Glasses; $12 for 3 Meats/Cheeses	5PM-7:30PM	1281
1873	Wednesday	$26 Btls; $8 Glasses; $12 for 3 Meats/Cheeses	5PM-7:30PM	1281
1874	Thursday	$26 Btls; $8 Glasses; $12 for 3 Meats/Cheeses	5PM-7:30PM	1281
1875	Friday	$26 Btls; $8 Glasses; $12 for 3 Meats/Cheeses	5PM-7:30PM	1281
1876	Saturday	$26 Btls; $8 Glasses; $12 for 3 Meats/Cheeses	5PM-7:30PM	1281
1877	Sunday	None		1290
1878	Monday	$3 Draft Beers; $3 Shots of the Week; $4 Well Drinks; $5 Snacks; $6 Jameson Picklebacks; $9 Specialty Cocktails; $12 Pitchers	5PM-9PM	1290
3094	Saturday	None		2017
1879	Tuesday	$3 Draft Beers; $3 Shots of the Week; $4 Well Drinks; $5 Snacks; $6 Jameson Picklebacks; $9 Specialty Cocktails; $12 Pitchers	5PM-9PM	1290
1880	Wednesday	$3 Draft Beers; $3 Shots of the Week; $4 Well Drinks; $5 Snacks; $6 Jameson Picklebacks; $9 Specialty Cocktails; $12 Pitchers	5PM-9PM	1290
1881	Thursday	$3 Draft Beers; $3 Shots of the Week; $4 Well Drinks; $5 Snacks; $6 Jameson Picklebacks; $9 Specialty Cocktails; $12 Pitchers	5PM-9PM	1290
1882	Friday	$3 Draft Beers; $3 Shots of the Week; $4 Well Drinks; $5 Snacks; $6 Jameson Picklebacks; $9 Specialty Cocktails; $12 Pitchers	5PM-9PM	1290
1883	Saturday	None		1290
1884	Sunday	Two-For-One Drinks	5PM-8PM	1293
1885	Monday	Two-For-One Drinks	5PM-8PM	1293
1886	Tuesday	Two-For-One Drinks	5PM-8PM	1293
1887	Wednesday	Two-For-One Drinks	5PM-8PM	1293
1888	Thursday	Two-For-One Drinks; Two-For-One Drinks for the Ladies (8PM-Midnight)	5PM-8PM;8PM-Midnight	1293
1889	Friday	Two-For-One Drinks	5PM-8PM	1293
1890	Saturday	Two-For-One Drinks	5PM-8PM	1293
1891	Sunday	3-for-1 Brunch Cocktails (Mimosa, Bloody Mary, Bellini or Prosecco)	11AM-2PM	1298
1892	Monday	None		1298
1893	Tuesday	None		1298
1894	Wednesday	None		1298
1895	Thursday	None		1298
1896	Friday	3-for-1 Brunch Cocktails (Mimosa, Bloody Mary, Bellini or Prosecco)	11AM-2PM	1298
1897	Saturday	3-for-1 Brunch Cocktails (Mimosa, Bloody Mary, Bellini or Prosecco)	11AM-2PM	1298
1898	Sunday	None		1300
1899	Monday	$2.75 Domestic Drafts and Bottles; $3.50 Import Drafts and Bottles; $6 Harp & IPA	4PM-8PM	1300
1900	Tuesday	$2.75 Domestic Drafts and Bottles; $3.50 Import Drafts and Bottles; $6 Harp & IPA	4PM-8PM	1300
1901	Wednesday	$2.75 Domestic Drafts and Bottles; $3.50 Import Drafts and Bottles; $6 Harp & IPA	4PM-8PM	1300
1902	Thursday	$2.75 Domestic Drafts and Bottles; $3.50 Import Drafts and Bottles; $6 Harp & IPA	4PM-8PM	1300
1903	Friday	$2.75 Domestic Drafts and Bottles; $3.50 Import Drafts and Bottles; $6 Harp & IPA	4PM-8PM	1300
1904	Saturday	None		1300
1905	Sunday	$3 PBR Tall Boys; $3 Draughts of Bud & Bud Light; $10 Pitcher Specials; $5 Food Specials	All Day	1303
1906	Monday	$3 Draughts; $3 PBR Tall Boys	7PM-Midnight	1303
1907	Tuesday	$3 Domestic Bottles; $3 PBR Tall Boys	7PM-Midnight	1303
1908	Wednesday	$10 Pitchers of Bud & Bud LIght; $3 PBR Tall Boys	7PM-Midnight	1303
1909	Thursday	$5 Martinis; $3 PBR Tall Boys	7PM-Midnight	1303
1910	Friday	$3 PBR Tall Boys	All Day	1303
1911	Saturday	$3 PBR Tall Boys; $3 Draughts of Bud & Bud Light; $10 Pitcher Specials; $5 Food Specials	All Day	1303
1912	Sunday	None		1312
1913	Monday	$1 Oysters; $5 Draft Beer	5PM-7PM	1312
1914	Tuesday	$1 Oysters; $5 Draft Beer	5PM-7PM	1312
1915	Wednesday	$1 Oysters; $5 Draft Beer	5PM-7PM	1312
1916	Thursday	$1 Oysters; $5 Draft Beer	5PM-7PM	1312
1917	Friday	$1 Oysters; $5 Draft Beer	5PM-7PM	1312
1918	Saturday	None		1312
1919	Sunday	None		1319
1920	Monday	$3 Beers; $4 Beers; $4 Margaritas; $6 Cosmos	4PM-7PM	1319
1921	Tuesday	$3 Beers; $4 Beers; $4 Margaritas; $6 Cosmos	4PM-7PM	1319
1922	Wednesday	$3 Beers; $4 Beers; $4 Margaritas; $6 Cosmos	4PM-7PM	1319
1923	Thursday	$3 Beers; $4 Beers; $4 Margaritas; $6 Cosmos	4PM-7PM	1319
1924	Friday	$3 Beers; $4 Beers; $4 Margaritas; $6 Cosmos	4PM-7PM	1319
1925	Saturday	None		1319
1926	Sunday	None		1325
1927	Monday	$3 Mixed Drinks	3PM-7PM	1325
1928	Tuesday	$3 Mixed Drinks	3PM-7PM	1325
1929	Wednesday	$3 Mixed Drinks	3PM-7PM	1325
1930	Thursday	$3 Mixed Drinks	3PM-7PM	1325
1931	Friday	$3 Mixed Drinks	3PM-7PM	1325
1932	Saturday	None		1325
1933	Sunday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1934	Monday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1935	Tuesday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1936	Wednesday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1937	Thursday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1938	Friday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1939	Saturday	$3 Select Beers and Well Drinks	Noon-8PM	1343
1940	Sunday	None		1344
1941	Monday	1/2 Priced Beer and Well Drinks; $5 Mini Burgers; $3 Frites	4PM-7PM	1344
1942	Tuesday	1/2 Priced Beer and Well Drinks; $5 Mini Burgers; $3 Frites	4PM-7PM	1344
1943	Wednesday	1/2 Priced Beer and Well Drinks; $5 Mini Burgers; $3 Frites	4PM-7PM	1344
1944	Thursday	1/2 Priced Beer and Well Drinks; $5 Mini Burgers; $3 Frites	4PM-7PM	1344
1945	Friday	1/2 Priced Beer and Well Drinks; $5 Mini Burgers; $3 Frites	4PM-7PM	1344
1946	Saturday	None		1344
1947	Sunday	$4 Drafts All Day; $7 Frozen Lime Margaritas; $6 Red Wine Sangria	4PM-7PM	1346
1948	Monday	$4 Corona & Corona Light; $7 Frozen Lime Margaritas; $6 Red Wine Sangria; $4 Coors Light Draft	4PM-7PM	1346
1949	Tuesday	$4 Shock Top; $7 Frozen Lime Margaritas; $6 Red Wine Sangria; $4 Coors Light Draft	4PM-7PM	1346
1950	Wednesday	$6 Stoli & Absolut Cocktails; $7 Frozen Lime Margaritas; $6 Red Wine Sangria; $4 Coors Light Draft	4PM-7PM	1346
1951	Thursday	$4 Pork Slap; $6 Baja Iced Tea; $7 Frozen Lime Margaritas; $6 Red Wine Sangria; $4 Coors Light Draft	4PM-7PM	1346
1952	Friday	$4 Domestic Bottles; $7 Frozen Lime Margaritas; $6 Red Wine Sangria; $4 Coors Light Draft	4PM-7PM	1346
1953	Saturday	$6 Cuba Libre; $7 Frozen Lime Margaritas; $6 Red Wine Sangria; $4 Coors Light Draft	4PM-7PM	1346
1954	Sunday	None		1351
1955	Monday	$5 Beers; $7 Glasses of Wine; $8 Cocktails; $1.50 Oysters; $1 Clams and Other Appetizer Specials	5PM-7PM	1351
1956	Tuesday	$5 Beers; $7 Glasses of Wine; $8 Cocktails; $1.50 Oysters; $1 Clams and Other Appetizer Specials	5PM-7PM	1351
3095	Sunday	None		2029
1957	Wednesday	$5 Beers; $7 Glasses of Wine; $8 Cocktails; $1.50 Oysters; $1 Clams and Other Appetizer Specials	5PM-7PM	1351
1958	Thursday	$5 Beers; $7 Glasses of Wine; $8 Cocktails; $1.50 Oysters; $1 Clams and Other Appetizer Specials	5PM-7PM	1351
1959	Friday	$5 Beers; $7 Glasses of Wine; $8 Cocktails; $1.50 Oysters; $1 Clams and Other Appetizer Specials	5PM-7PM	1351
1960	Saturday	None		1351
1961	Sunday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf (During Football Season)	12PM-12AM	1357
1962	Monday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf	4PM-12AM	1357
1963	Tuesday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf	4PM-12AM	1357
1964	Wednesday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf	4PM-12AM	1357
1965	Thursday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf	4PM-10PM	1357
1966	Friday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf	4PM-10PM	1357
1967	Saturday	Half Price Wells, Beers, and Wines; $2 Off Top Shelf	8PM-10PM	1357
1968	Sunday	$15 Brunch Menu with Unlimited Mimosas, Champagne and Bloody Marys	11:30AM-3:30PM	1365
1969	Monday	$4 Margaritas; $4 Coronas	7PM-10PM	1365
1970	Tuesday	$3 Bud Light Draught; $4 Kettle Citroen Drinks; $4 Captain Morgan Drinks; $4 Blue Moons; 2-for-1 Burgers	8PM-10PM	1365
1971	Wednesday	$4 Miller Lite Aluminum Bottles; $20 Open Bar (from 8pm-10pm)	8PM-10PM	1365
1972	Thursday	$3 Bud and Bud Light; $5 Absolut; $5 Malibu Black Shots	7PM-Close	1365
1973	Friday	$1 Domestic Draughts; $2 Mixed Drinks ($10 Admission)	7PM-10PM	1365
1974	Saturday	None		1365
1975	Sunday	None		1374
1976	Monday	$5 Domestic Drafts; $6 Craft Beers; $8 Select Wines; 2-for-1 Select Cocktails; $12 Flight of the Week - 4 Beers + Your Favorite Draft	4PM-7PM	1374
1977	Tuesday	$5 Domestic Drafts; $6 Craft Beers; $8 Select Wines; 2-for-1 Select Cocktails; $12 Flight of the Week - 4 Beers + Your Favorite Draft	4PM-7PM	1374
1978	Wednesday	$5 Domestic Drafts; $6 Craft Beers; $8 Select Wines; 2-for-1 Select Cocktails; $12 Flight of the Week - 4 Beers + Your Favorite Draft	4PM-7PM	1374
1979	Thursday	$5 Domestic Drafts; $6 Craft Beers; $8 Select Wines; 2-for-1 Select Cocktails; $12 Flight of the Week - 4 Beers + Your Favorite Draft	4PM-7PM	1374
1980	Friday	$5 Domestic Drafts; $6 Craft Beers; $8 Select Wines; 2-for-1 Select Cocktails; $12 Flight of the Week - 4 Beers + Your Favorite Draft	4PM-7PM	1374
1981	Saturday	None		1374
1982	Sunday	Great Drink Specials	11AM-7PM	1377
1983	Monday	Great Drink Specials	11AM-7PM	1377
1984	Tuesday	Great Drink Specials	11AM-7PM	1377
1985	Wednesday	Great Drink Specials	11AM-7PM	1377
1986	Thursday	Great Drink Specials	11AM-7PM	1377
1987	Friday	Great Drink Specials	11AM-7PM	1377
1988	Saturday	Great Drink Specials	11AM-7PM	1377
1989	Sunday	None		1384
1990	Monday	Dollar Oysters	4PM-7PM	1384
1991	Tuesday	Dollar Oysters	4PM-7PM	1384
1992	Wednesday	Dollar Oysters	4PM-7PM	1384
1993	Thursday	Dollar Oysters	4PM-7PM	1384
1994	Friday	Dollar Oysters	4PM-7PM	1384
1995	Saturday	None		1384
1996	Sunday	$2 Drafts	All Day	1388
1997	Monday	None		1388
1998	Tuesday	2-for-1 Drinks at the Bar	All Day	1388
1999	Wednesday	None		1388
2000	Thursday	None		1388
2001	Friday	$5 Cocktails and Frozen Drinks	5PM-8PM	1388
2002	Saturday	$2 Drafts	All Day	1388
2003	Sunday	$12 Unlimited Brunch - Includes Bloody Marys, Bellinis, Mimosas & Malt Mosas!	11AM-4PM	1391
2004	Monday	$4/$5 Drafts; $6 Cocktails; $6 Wines (12pm-7pm); Small Plates Starting at $3 (4pm-7pm)	12PM-7PM	1391
2005	Tuesday	$4/$5 Drafts; $6 Cocktails; $6 Wines (12pm-7pm); Small Plates Starting at $3 (4pm-7pm)	12PM-7PM	1391
2006	Wednesday	$4/$5 Drafts; $6 Cocktails; $6 Wines (12pm-7pm); Small Plates Starting at $3 (4pm-7pm)	12PM-7PM	1391
2007	Thursday	$4/$5 Drafts; $6 Cocktails; $6 Wines (12pm-7pm); Small Plates Starting at $3 (4pm-7pm)	12PM-7PM	1391
2008	Friday	$4/$5 Drafts; $6 Cocktails; $6 Wines (12pm-7pm); Small Plates Starting at $3 (4pm-7pm)	12PM-7PM	1391
2009	Saturday	$12 Unlimited Brunch - Includes Bloody Marys, Bellinis, Mimosas & Malt Mosas!	11AM-4PM	1391
2010	Sunday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	12AM-4AM	1392
2011	Monday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	5PM-9PM	1392
2012	Tuesday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	5PM-9PM	1392
2013	Wednesday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	5PM-9PM	1392
2014	Thursday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	5PM-9PM	1392
2015	Friday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	5PM-9PM	1392
2016	Saturday	$3 Budweiser Drafts, But Light Bottles, PBR; $5 Well Drinks	12AM-4AM	1392
2017	Sunday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2018	Monday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2019	Tuesday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2020	Wednesday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2021	Thursday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2022	Friday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2023	Saturday	$2 Domestic Bottles; $3 Imported Bottles; $3 Drafts; $3 Well Drinks; $1 Off All Call Drinks	2PM-8PM	1400
2024	Sunday	$15 Manny's Milwaukee Mary; $12 Pitchers of Light Beer	All Day	1401
2025	Monday	Half Off All Beer, Wine, and Well Liquor (11am-7pm); 1/2 Price All Orders of Wings; Half Price Craft Beers (7pm-Close)	11AM-7PM;7PM-Close	1401
2026	Tuesday	Half Off All Beer, Wine, and Well Liquor (11am-7pm); $2 Sliders; $2 Keystone Lights; $3 Well Shots (7pm-Close)	11AM-7PM;7PM-Close	1401
2027	Wednesday	Half Off All Beer, Wine, and Well Liquor (11am-7pm); 1/2 Price All Wraps (no side included); $5 Stoli Cocktails (7pm-Close)	11AM-7PM;7PM-Close	1401
2028	Thursday	Half Off All Beer, Wine, and Well Liquor (11am-7pm); $12 Burger and Beer (Hamburger and a Side With a Beer of Your Choice) (7pm-Close)	11AM-7PM;7PM-Close	1401
2029	Friday	Half Off All Beer, Wine, and Well Liquor (11am-7pm); $2 Pints; $6 Pitchers of Light Beer (7pm-9pm)	11AM-7PM;7PM-9PM	1401
2030	Saturday	$12 Pitchers of Light Beer	All Day	1401
2031	Sunday	None		1403
2032	Monday	All Natural Frozen Cocktail Specials; Beer & Shot Specials (Pickelbacks, Car Bombs, Jaeger Bombs)	6PM-8PM	1403
2033	Tuesday	All Natural Frozen Cocktail Specials; Beer & Shot Specials (Pickelbacks, Car Bombs, Jaeger Bombs)	6PM-8PM	1403
2034	Wednesday	All Natural Frozen Cocktail Specials; Beer & Shot Specials (Pickelbacks, Car Bombs, Jaeger Bombs)	6PM-8PM	1403
2035	Thursday	All Natural Frozen Cocktail Specials; Beer & Shot Specials (Pickelbacks, Car Bombs, Jaeger Bombs)	6PM-8PM	1403
2036	Friday	All Natural Frozen Cocktail Specials; Beer & Shot Specials (Pickelbacks, Car Bombs, Jaeger Bombs)	6PM-8PM	1403
2037	Saturday	None		1403
2038	Sunday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	3PM-8PM	1405
2039	Monday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	3PM-8PM	1405
2040	Tuesday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	3PM-8PM	1405
2041	Wednesday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	3PM-8PM	1405
2042	Thursday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	3PM-8PM	1405
2043	Friday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	3PM-8PM	1405
2044	Saturday	$3.50 Beer; $4.50 Wine; $4.50 Sangria; $6 Margaritas; $6 Drink of the Day	4PM-2:30AM	1405
2045	Sunday	None		1409
2046	Monday	$3-$5 Drink Specials	5:30PM-9PM	1409
2047	Tuesday	$3-$5 Drink Specials	5:30PM-9PM	1409
2048	Wednesday	$3-$5 Drink Specials	5:30PM-9PM	1409
2049	Thursday	$3-$5 Drink Specials	5:30PM-9PM	1409
2050	Friday	None		1409
2051	Saturday	None		1409
2052	Sunday	None		1416
2053	Monday	$4 Pints of Guinness, Sixpoint, Radeberger and More	4PM-7PM	1416
2054	Tuesday	$4 Pints of Guinness, Sixpoint, Radeberger and More	4PM-7PM	1416
2055	Wednesday	$4 Pints of Guinness, Sixpoint, Radeberger and More	4PM-7PM	1416
2056	Thursday	$4 Pints of Guinness, Sixpoint, Radeberger and More	4PM-7PM	1416
2057	Friday	$4 Pints of Guinness, Sixpoint, Radeberger and More	4PM-7PM	1416
2058	Saturday	None		1416
2059	Sunday	None		1422
2060	Monday	$4 Drafts; $4 Well Drinks	3PM-8PM	1422
2061	Tuesday	$4 Drafts; $4 Well Drinks	3PM-8PM	1422
2062	Wednesday	$4 Drafts; $4 Well Drinks	3PM-8PM	1422
2063	Thursday	$4 Drafts; $4 Well Drinks	3PM-8PM	1422
2064	Friday	$4 Drafts; $4 Well Drinks	3PM-8PM	1422
2065	Saturday	None		1422
2066	Sunday	$35 Bottomless Margarita Brunch	11AM-3PM	1426
2067	Monday	None		1426
2068	Tuesday	$6 Margaritas & Wines; $4 Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites (at the Tequileria)	5PM-8PM	1426
2069	Wednesday	$6 Margaritas & Wines; $4 Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites (at the Tequileria)	5PM-8PM	1426
2070	Thursday	$6 Margaritas & Wines; $4 Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites (at the Tequileria)	5PM-8PM	1426
2071	Friday	$6 Margaritas & Wines; $4 Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites (at the Tequileria)	5PM-8PM	1426
2072	Saturday	$35 Bottomless Margarita Brunch (11am-3pm); $6 Margaritas & Wines; $4 Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites (at the Tequileria, 5pm-8pm)	11AM-3PM;5PM-8PM	1426
2073	Sunday	Bottomless Brunch (11:30am-4pm); $6 Margaritas, Wines, Sangria & Select Cocktails; $4 Select Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites (3pm-12am)	11:30AM-4PM;3PM-Midnight	1427
2074	Monday	$6 Margaritas, Wines, Sangria & Select Cocktails; $4 Select Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites	3PM-Midnight	1427
2075	Tuesday	$6 Margaritas, Wines, Sangria & Select Cocktails; $4 Select Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites	3PM-8PM	1427
2076	Wednesday	$6 Margaritas, Wines, Sangria & Select Cocktails; $4 Select Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites	3PM-8PM	1427
2077	Thursday	$6 Margaritas, Wines, Sangria & Select Cocktails; $4 Select Mexican Beers; $4 Tacos, Nachos, Quesadillas & Mexican Bites	3PM-8PM	1427
2078	Friday	Reverse Happy Hour	10PM-Midnight	1427
2079	Saturday	Bottomless Brunch (11:30am-4pm); Reverse Happy Hour (10pm-12am)	11:30AM-4PM;10PM-Midnight	1427
2080	Sunday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2081	Monday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2082	Tuesday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2083	Wednesday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2084	Thursday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2085	Friday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2086	Saturday	$1 Oysters (minimum of 6); $3 Labatt Blue Cans; $4 Draft Beer; $5 Well Drinks; $6 House Wine	5PM-6:30PM	1429
2087	Sunday	None		1435
2088	Monday	$3 Drafts at the Bar Starting at 6pm!	6PM-9PM	1435
2089	Tuesday	McFadden's 20 Oz Mugs!	6PM-9PM	1435
2090	Wednesday	$3 Drafts; $4 Wine; $5 Stoli Mixed Drinks Starting at 6pm; 1/2 Price Bottles of Wine Until 8pm	6PM-9PM	1435
2091	Thursday	1/2 Price Drinks; $25 Top Shelf Special	6PM-9PM	1435
2092	Friday	None		1435
2093	Saturday	None		1435
2094	Sunday	None		1439
2095	Monday	None		1439
2096	Tuesday	None		1439
2097	Wednesday	None		1439
2098	Thursday	$4 Well Drinks; $8 Domestic Pitchers	4PM-7PM	1439
2099	Friday	None		1439
2100	Saturday	None		1439
2101	Sunday	$5 Sam Seasonal	11AM-8PM	1440
2102	Monday	2 for 1 Stella Artois	11AM-8PM	1440
2103	Tuesday	$4 Bud, Bud Light and Shock Top	11AM-8PM	1440
2104	Wednesday	$5 Wines	11AM-8PM	1440
2105	Thursday	$4 Heineken Pints	11AM-8PM	1440
2106	Friday	$5 Mixed Drinks	11AM-8PM	1440
2107	Saturday	None		1440
2108	Sunday	All Drinks 2-for-1	12PM-7PM	1441
2109	Monday	All Drinks 2-for-1	12PM-7PM	1441
2110	Tuesday	All Drinks 2-for-1	12PM-7PM	1441
2111	Wednesday	All Drinks 2-for-1	12PM-7PM	1441
2112	Thursday	All Drinks 2-for-1	12PM-7PM	1441
2113	Friday	All Drinks 2-for-1	12PM-7PM	1441
2114	Saturday	All Drinks 2-for-1	12PM-7PM	1441
2115	Sunday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2116	Monday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2117	Tuesday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2118	Wednesday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2119	Thursday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2120	Friday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2121	Saturday	$3 Well Drinks; $3 Shot Specials; $3 Pints/Bottles of Bud, Bud Light & Coors Light; $4 Daily Beer Specials; $4 Glasses of Wine; $4 Premium Drinks; $3 PBR Cans (All Day)	12-1PM;4PM-7PM;12AM-1AM	1443
2122	Sunday	None		1446
2123	Monday	1/2 Priced Pitchers of Sangria; 1/2 Priced Pitchers of PBR; 1/2 Priced Quarts of Fool-Aid; Sliders, Pints of PBR, Well Shots (Pick 2 for $6)	4PM-6PM	1446
2124	Tuesday	1/2 Priced Pitchers of Sangria; 1/2 Priced Pitchers of PBR; 1/2 Priced Quarts of Fool-Aid; Sliders, Pints of PBR, Well Shots (Pick 2 for $6)	4PM-6PM	1446
2125	Wednesday	1/2 Priced Pitchers of Sangria; 1/2 Priced Pitchers of PBR; 1/2 Priced Quarts of Fool-Aid; Sliders, Pints of PBR, Well Shots (Pick 2 for $6)	4PM-6PM	1446
2126	Thursday	1/2 Priced Pitchers of Sangria; 1/2 Priced Pitchers of PBR; 1/2 Priced Quarts of Fool-Aid; Sliders, Pints of PBR, Well Shots (Pick 2 for $6)	4PM-6PM	1446
2127	Friday	1/2 Priced Pitchers of Sangria; 1/2 Priced Pitchers of PBR; 1/2 Priced Quarts of Fool-Aid; Sliders, Pints of PBR, Well Shots (Pick 2 for $6)	4PM-6PM	1446
2128	Saturday	None		1446
2129	Sunday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;10PM-Close	1447
2130	Monday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;10PM-Close	1447
2131	Tuesday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;10PM-Close	1447
2132	Wednesday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;10PM-Close	1447
2133	Thursday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;10PM-Close	1447
2134	Friday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;11PM-Close	1447
2194	Tuesday	$1.50 Off All Drinks; 1/2 Price Bar Menu	4:30PM-7PM	1479
2195	Wednesday	$1.50 Off All Drinks; 1/2 Price Bar Menu (4:30PM-7PM); 1/2 Price Wine by the Bottle (All Day)	4:30PM-7PM;All Day	1479
2431	Monday	Various Pints on Tap for $4	All Night	1642
2135	Saturday	$1 Oysters (6 Minimum & This Price May Change Time to Time); $5 Stella Artoise on Tap; $7 Glass of Wine Red or White; $4 Sparkling Glass with 1 Doz. Oysters ( 2 Glasses Max); $7 Well Cocktails; $5 Glass of Sangria; $25 1lt Pitcher of Sangria; mixed Olives $7; Date Pincho $10; Brussels Sprouts $9; Hummus & Pita $10; Meatballs $14; Fries (papas Fritas) $8; Bruschete ( Ricotta, Chicken Liver, Mussels & Chorizo ) $5 Each or Trio for $12 ( One of Each)	4PM-7PM;11PM-Close	1447
2136	Sunday	None		1449
2137	Monday	$5 Draft Beers, Wines, Sake and $15 Sake Flights	5PM-11PM	1449
2138	Tuesday	$5 Draft Beers, Wines, Sake and $15 Sake Flights	5PM-7PM	1449
2139	Wednesday	$5 Draft Beers, Wines, Sake and $15 Sake Flights	5PM-7PM	1449
2140	Thursday	$5 Draft Beers, Wines, Sake and $15 Sake Flights	5PM-7PM	1449
2141	Friday	$5 Draft Beers, Wines, Sake and $15 Sake Flights	5PM-7PM	1449
2142	Saturday	None		1449
2143	Sunday	Free Bloody Mary or Mimosa with Brunch (11am-4pm); $3 Bud, Bud Light, Coors Light and Rolling Rock; $4 Shots of Jager and Soco (All Day)	All Day	1457
2144	Monday	$4 Domestic Bottles; $4 Shots of Jameson; $5 Mojitos	5PM-Close	1457
2145	Tuesday	$4 Margaritas; $4 Coronas; $3 Shots of Cuervo; $5 Shots of Patron; $6 Shots of Patron Cafe; $1 Tacos	5PM-Close	1457
2146	Wednesday	Ladies Get Half Off All Drinks	5PM-Close	1457
2147	Thursday	None		1457
2148	Friday	None		1457
2149	Saturday	Free Bloody Mary or Mimosa with Brunch	11AM-4PM	1457
2150	Sunday	None		1459
2151	Monday	$1 East Coast Oysters; $1.75 West Coast Oysters; $6 Wine by the Glass; $5 Draft Beer; Bar Bites Starting at $3	5:30PM-7PM	1459
2152	Tuesday	$1 East Coast Oysters; $1.75 West Coast Oysters; $6 Wine by the Glass; $5 Draft Beer; Bar Bites Starting at $3	5:30PM-7PM	1459
2153	Wednesday	$1 East Coast Oysters; $1.75 West Coast Oysters; $6 Wine by the Glass; $5 Draft Beer; Bar Bites Starting at $3	5:30PM-7PM	1459
2154	Thursday	$1 East Coast Oysters; $1.75 West Coast Oysters; $6 Wine by the Glass; $5 Draft Beer; Bar Bites Starting at $3	5:30PM-7PM	1459
2155	Friday	$1 East Coast Oysters; $1.75 West Coast Oysters; $6 Wine by the Glass; $5 Draft Beer; Bar Bites Starting at $3	5:00PM-7PM	1459
2156	Saturday	None		1459
2157	Sunday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5PM-7PM	1460
2158	Monday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5:30PM-10PM	1460
2159	Tuesday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5:30PM-7PM	1460
2160	Wednesday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5:30PM-7PM	1460
2161	Thursday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5:30PM-7PM	1460
2162	Friday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5PM-7PM	1460
2163	Saturday	$1 East Coast Oysters; $1.75 West Coast Oysters; $5 Beers; $6 Glasses of Wine; $7 Cocktails; Snack Menu	5PM-7PM	1460
2164	Sunday	None		1461
2165	Monday	$3-$4 Draughts; $3-$4 Bottles; $4 Well Drinks; $4 Wine	5PM-7PM	1461
2166	Tuesday	$3-$4 Draughts; $3-$4 Bottles; $4 Well Drinks; $4 Wine	5PM-7PM	1461
2167	Wednesday	$3-$4 Draughts; $3-$4 Bottles; $4 Well Drinks; $4 Wine	12PM-7PM	1461
2168	Thursday	$3-$4 Draughts; $3-$4 Bottles; $4 Well Drinks; $4 Wine	12PM-7PM	1461
2169	Friday	$3-$4 Draughts; $3-$4 Bottles; $4 Well Drinks; $4 Wine	12PM-7PM	1461
2170	Saturday	None		1461
2171	Sunday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots	12PM-5PM	1466
2172	Monday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots; $2 Individual Tacos (At the Bar Only)	4PM-7PM	1466
2173	Tuesday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots; $2 Individual Tacos (At the Bar Only)	4PM-7PM	1466
2174	Wednesday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots; $2 Individual Tacos (At the Bar Only)	4PM-7PM	1466
2175	Thursday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots; $2 Individual Tacos (At the Bar Only)	4PM-7PM	1466
2176	Friday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots; $2 Individual Tacos (At the Bar Only)	4PM-7PM	1466
2177	Saturday	$5 House Margaritas; $5 Well Drinks; $3 Tecate, $2 House Infused Cinnamon Tequila Shots	12PM-5PM	1466
2178	Sunday	None		1473
2179	Monday	$4 Shots; $4 Buds; $5 Well Drinks	4PM-8PM	1473
2180	Tuesday	$4 Shots; $4 Buds; $5 Well Drinks	4PM-8PM	1473
2181	Wednesday	$4 Shots; $4 Buds; $5 Well Drinks	4PM-8PM	1473
2182	Thursday	$4 Shots; $4 Buds; $5 Well Drinks	4PM-8PM	1473
2183	Friday	$4 Shots; $4 Buds; $5 Well Drinks	4PM-8PM	1473
2184	Saturday	None		1473
2185	Sunday	Beer and Shot Combos Between $8-$11 Depending on the Beer (combo is for Cans of Beer and a Well Shot!)	3PM-7PM	1476
2186	Monday	$3 Bud, Bud Lite, Coors Lite Bottles; $5 Drafts; $5 Well Drinks; $6 Wine, Beer and Shot Combos Between $8-$11 Depending on the Beer	3PM-7PM	1476
2187	Tuesday	$3 Bud, Bud Lite, Coors Lite Bottles; $5 Drafts; $5 Well Drinks; $6 Wine, Beer and Shot Combos Between $8-$11 Depending on the Beer	3PM-7PM	1476
2188	Wednesday	$3 Bud, Bud Lite, Coors Lite Bottles; $5 Drafts; $5 Well Drinks; $6 Wine, Beer and Shot Combos Between $8-$11 Depending on the Beer	3PM-7PM	1476
2189	Thursday	$3 Bud, Bud Lite, Coors Lite Bottles; $5 Drafts; $5 Well Drinks; $6 Wine, Beer and Shot Combos Between $8-$11 Depending on the Beer	3PM-7PM	1476
2190	Friday	$3 Bud, Bud Lite, Coors Lite Bottles; $5 Drafts; $5 Well Drinks; $6 Wine, Beer and Shot Combos Between $8-$11 Depending on the Beer	3PM-7PM	1476
2191	Saturday	Beer and Shot Combos Between $8-$11 Depending on the Beer (combo is for Cans of Beer and a Well Shot!)	3PM-7PM	1476
2192	Sunday	None		1479
2193	Monday	$1.50 Off All Drinks; 1/2 Price Bar Menu	4:30PM-7PM	1479
2196	Thursday	$1.50 Off All Drinks; 1/2 Price Bar Menu	4:30PM-7PM	1479
2197	Friday	$1.50 Off All Drinks; 1/2 Price Bar Menu	4:30PM-7PM	1479
2198	Saturday	None		1479
2199	Sunday	None		1485
2200	Monday	$4 Craft Draft Beers; $6 Wines; $8 Specialty Cocktails; 2 for $8 Appetizers	4PM-7PM	1485
2201	Tuesday	$4 Craft Draft Beers; $6 Wines; $8 Specialty Cocktails; 2 for $8 Appetizers	4PM-7PM	1485
2202	Wednesday	$4 Craft Draft Beers; $6 Wines; $8 Specialty Cocktails; 2 for $8 Appetizers	4PM-7PM	1485
2203	Thursday	$4 Craft Draft Beers; $6 Wines; $8 Specialty Cocktails; 2 for $8 Appetizers	4PM-7PM	1485
2204	Friday	$4 Craft Draft Beers; $6 Wines; $8 Specialty Cocktails; 2 for $8 Appetizers	4PM-7PM	1485
2205	Saturday	$4 Craft Draft Beers; $6 Wines; $8 Specialty Cocktails; 2 for $8 Appetizers	4PM-7PM	1485
2206	Sunday	2-for-1 Beer, Wine & Mezes	5PM-8PM	1486
2207	Monday	2-for-1 Beer, Wine & Mezes	5PM-8PM	1486
2208	Tuesday	2-for-1 Beer, Wine & Mezes	5PM-8PM	1486
2209	Wednesday	2-for-1 Beer, Wine & Mezes	5PM-8PM	1486
2210	Thursday	2-for-1 Beer, Wine & Mezes	5PM-8PM	1486
2211	Friday	2-for-1 Beer, Wine & Mezes	5PM-8PM;10PM-11:30PM	1486
2212	Saturday	2-for-1 Beer, Wine & Mezes	5PM-8PM;10PM-11:30PM	1486
2213	Sunday	$4 Pints of Miller Lite; $3.50 Miller High Life Bottles; $5 Shots; $6 Frozen Drinks	All Day	1499
2214	Monday	$4 Pints of Miller Lite; $3.50 Miller High Life Bottles; $5 Shots; $6 Frozen Drinks	All Day	1499
2215	Tuesday	$4 Pints of Miller Lite; $3.50 Miller High Life Bottles; $5 Shots; $6 Frozen Drinks	All Day	1499
2216	Wednesday	$4 Pints of Miller Lite; $3.50 Miller High Life Bottles; $5 Shots; $6 Frozen Drinks	All Day	1499
2217	Thursday	$4 Pints of Miller Lite; $3.50 Miller High Life Bottles; $5 Shots; $6 Frozen Drinks	All Day	1499
2218	Friday	$4 Pints of Miller Lite; $3.50 Miller High Life Bottles; $5 Shots; $6 Frozen Drinks	All Day	1499
2219	Saturday	None		1499
2220	Sunday	None		1507
2221	Monday	Happy Hour Specials	4PM-6PM	1507
2222	Tuesday	Happy Hour Specials	4PM-6PM	1507
2223	Wednesday	Happy Hour Specials	4PM-6PM	1507
2224	Thursday	None		1507
2225	Friday	None		1507
2226	Saturday	None		1507
2227	Sunday	None		1509
2228	Monday	$3.75 Bud or Rolling Rock; $4 Mixed Bar Drinks; Hors d'ouevres	4PM-9PM	1509
2229	Tuesday	$3.75 Bud or Rolling Rock; $4 Mixed Bar Drinks; Hors d'ouevres	4PM-9PM	1509
2230	Wednesday	$3.75 Bud or Rolling Rock; $4 Mixed Bar Drinks; Hors d'ouevres	4PM-9PM	1509
2231	Thursday	$3.75 Bud or Rolling Rock; $4 Mixed Bar Drinks; Hors d'ouevres	4PM-9PM	1509
2232	Friday	$3.75 Bud or Rolling Rock; $4 Mixed Bar Drinks; Hors d'ouevres	4PM-9PM	1509
2233	Saturday	None		1509
2234	Sunday	None		1514
2235	Monday	1/2 Price Bar Bites	4:30PM-6:30PM;9PM-Close	1514
2236	Tuesday	1/2 Price Bar Bites	4:30PM-6:30PM;9PM-Close	1514
2237	Wednesday	1/2 Price Bar Bites	4:30PM-6:30PM;9PM-Close	1514
2238	Thursday	1/2 Price Bar Bites	4:30PM-6:30PM;9PM-Close	1514
2239	Friday	1/2 Price Bar Bites	4:30PM-6:30PM;9PM-Close	1514
2240	Saturday	None		1514
2241	Sunday	None		1515
2242	Monday	20% Off All Bottled & Draft Beers, and Wines by the Glass	5PM-7PM	1515
2243	Tuesday	20% Off All Bottled & Draft Beers, and Wines by the Glass	5PM-7PM	1515
2244	Wednesday	20% Off All Bottled & Draft Beers, and Wines by the Glass	5PM-7PM	1515
2245	Thursday	20% Off All Bottled & Draft Beers, and Wines by the Glass	5PM-7PM	1515
2246	Friday	20% Off All Bottled & Draft Beers, and Wines by the Glass	5PM-7PM	1515
2247	Saturday	None		1515
2248	Sunday	$20 Beer Towers; $3 Drafts; $3 Coors Light Bottles; $3 Pinnacle Vodka Drinks	All Night	1526
2249	Monday	$6 Buckets of Rolling Rocks; $6 Bucket of Appetizers	All Night	1526
2250	Tuesday	None		1526
2251	Wednesday	$5 Pitchers; $.20 Wings	All Night	1526
2252	Thursday	None		1526
2253	Friday	Twofers & Half Off Apps	3PM-8PM	1526
2254	Saturday	$3.50 Bud Lights and Mixed Drinks	All Night	1526
2255	Sunday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2256	Monday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2257	Tuesday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2258	Wednesday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2259	Thursday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2260	Friday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2261	Saturday	$3.50 Budweiser, Coors and Miller Lite; $4 Wells	4PM-8PM	1534
2262	Sunday	Half-Price on All Food and Drinks	12AM-4AM	1537
2263	Monday	Half-Price on All Food and Drinks	12AM-4AM	1537
2264	Tuesday	Half-Price on All Food and Drinks	12AM-4AM	1537
2265	Wednesday	Half-Price on All Food and Drinks	12AM-4AM	1537
2266	Thursday	Half-Price on All Food and Drinks	12AM-4AM	1537
2267	Friday	Half-Price on All Food and Drinks	12AM-4AM	1537
2268	Saturday	Half-Price on All Food and Drinks	12AM-4AM	1537
2269	Sunday	None		1544
2270	Monday	$4 Assorted Beers; $8 Drink of the Day; $6 Wines by the Glass; Selection of Snacks Under $5	4:30PM-6:30PM	1544
2271	Tuesday	$4 Assorted Beers; $8 Drink of the Day; $6 Wines by the Glass; Selection of Snacks Under $5	4:30PM-6:30PM	1544
2272	Wednesday	$4 Assorted Beers; $8 Drink of the Day; $6 Wines by the Glass; Selection of Snacks Under $5	4:30PM-6:30PM	1544
2273	Thursday	$4 Assorted Beers; $8 Drink of the Day; $6 Wines by the Glass; Selection of Snacks Under $5	4:30PM-6:30PM	1544
2274	Friday	$4 Assorted Beers; $8 Drink of the Day; $6 Wines by the Glass; Selection of Snacks Under $5	4:30PM-6:30PM	1544
2275	Saturday	None		1544
2276	Sunday	$12 Unlimited Mimosas (w/Brunch, 2 Hr Limit)	12PM-3:30PM	1546
2277	Monday	None		1546
2278	Tuesday	None		1546
2279	Wednesday	None		1546
2280	Thursday	None		1546
2281	Friday	None		1546
2282	Saturday	None		1546
2283	Sunday	$10 Unlimited Mimosas & Bloody Marys (11am-3pm); Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	Midnight-4AM	1552
2284	Monday	$4 Pints of Stella, Bronx, Kona & Bud Light; $5 Moscow Mules & Well Drinks; $6 Wines by the Glas; Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	11AM-8PM;Midnight-4AM	1552
2285	Tuesday	$4 Pints of Stella, Bronx, Kona & Bud Light; $5 Moscow Mules & Well Drinks; $6 Wines by the Glass; Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	11AM-8PM;Midnight-4AM	1552
2286	Wednesday	$4 Pints of Stella, Bronx, Kona & Bud Light; $5 Moscow Mules & Well Drinks; $6 Wines by the Glass; Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	11AM-8PM;Midnight-4AM	1552
2287	Thursday	$4 Pints of Stella, Bronx, Kona & Bud Light; $5 Moscow Mules & Well Drinks; $6 Wines by the Glass; Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	11AM-8PM;Midnight-4AM	1552
2288	Friday	$4 Pints of Stella, Bronx, Kona & Bud Light; $5 Moscow Mules & Well Drinks; $6 Wines by the Glass; Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	11AM-8PM;Midnight-4AM	1552
2289	Saturday	$10 Unlimited Mimosas & Bloody Marys (11am-3pm); Midnight HH ('til 4am): $5 Pints of Stella, Bronx, Kona & Bud Light; $5 Well Drinks; $5 Shots of Jameson, Fireball & Cuervo	Midnight-4AM	1552
2290	Sunday	2 For 1 Drinks	12PM-4PM	1553
2291	Monday	2 For 1 Drinks	12PM-4PM	1553
2292	Tuesday	2 For 1 Drinks	12PM-4PM	1553
2293	Wednesday	2 For 1 Drinks	12PM-4PM	1553
2294	Thursday	2 For 1 Drinks	12PM-4PM	1553
2295	Friday	2 For 1 Drinks	12PM-4PM	1553
2296	Saturday	2 For 1 Drinks	12PM-4PM	1553
2297	Sunday	None		1562
2298	Monday	Half-Price Drinks	5PM-8PM	1562
2299	Tuesday	Half-Price Drinks	5PM-8PM	1562
2300	Wednesday	Half-Price Drinks	5PM-8PM	1562
2301	Thursday	Half-Price Drinks	5PM-8PM	1562
2302	Friday	Half-Price Drinks	5PM-8PM	1562
2303	Saturday	None		1562
2304	Sunday	None		1564
2305	Monday	Draft Beers $3; Well Drinks $5; Wine $6; Broccoli Tacos $4 Each	4PM-7PM	1564
2306	Tuesday	None		1564
2307	Wednesday	Draft Beers $3; Well Drinks $5; Wine $6; Broccoli Tacos $4 Each	4PM-7PM	1564
2308	Thursday	Draft Beers $3; Well Drinks $5; Wine $6; Broccoli Tacos $4 Each	4PM-7PM	1564
2309	Friday	Draft Beers $3; Well Drinks $5; Wine $6; Broccoli Tacos $4 Each	4PM-7PM	1564
2310	Saturday	None		1564
2311	Sunday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2312	Monday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2313	Tuesday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2314	Wednesday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2315	Thursday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2316	Friday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2317	Saturday	$4-$5 Apps; $4-$5 Drinks	5PM-7PM	1571
2318	Sunday	None		1572
2319	Monday	None		1572
2320	Tuesday	$10 Burger and Beer; 2 for 1 Drinks	5PM-8PM	1572
2321	Wednesday	$10 Burger and Beer; Half Off Wine Bottles	5PM-8PM	1572
2322	Thursday	$10 Burger and Beer; Beer and Shot Specials	5PM-8PM	1572
2323	Friday	$10 Burger and Beer; $10 Pitchers of Narragansett	5PM-8PM	1572
2324	Saturday	None		1572
2325	Sunday	50% Off Bottles of Wine	All Day	1574
2326	Monday	$5 Cocktails, Glasses of Wine & Beer; 1/2 Off Appetizers; 50% Off Bottles of Wine	5PM-7PM	1574
2327	Tuesday	$5 Cocktails, Glasses of Wine & Beer; 1/2 Off Appetizers	5PM-7PM	1574
2328	Wednesday	$5 Cocktails, Glasses of Wine & Beer; 1/2 Off Appetizers	5PM-7PM	1574
2329	Thursday	$5 Cocktails, Glasses of Wine & Beer; 1/2 Off Appetizers; Complimentary Buffet	5PM-7PM	1574
2330	Friday	$5 Cocktails, Glasses of Wine & Beer; 1/2 Off Appetizers; Complimentary Buffet	5PM-7PM	1574
2331	Saturday	None		1574
2332	Sunday	$4 Drafts; $4 Well Drinks	6PM-Close	1578
2333	Monday	$4 Drafts; $4 Well Drinks	6PM-Close	1578
2334	Tuesday	$4 Drafts; $4 Well Drinks	6PM-9PM	1578
2335	Wednesday	$4 Drafts; $4 Well Drinks	6PM-9PM	1578
2336	Thursday	$4 Drafts; $4 Well Drinks	6PM-9PM	1578
2337	Friday	$4 Drafts; $4 Well Drinks	6PM-9PM	1578
2338	Saturday	$4 Drafts; $4 Well Drinks	6PM-9PM	1578
2339	Sunday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2340	Monday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2341	Tuesday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2342	Wednesday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2343	Thursday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2344	Friday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2345	Saturday	$6 House Wine; $6 Draft Beer; $9 Classic Cocktails	4PM-7PM	1594
2346	Sunday	Half Price Domestic Drafts & Pitchers; $4 We Call It Shots	12PM-8PM	1599
2347	Monday	Half Price Drinks (2-8pm); $1 Drafts; $8 Pitchers (8pm-Close)	2PM-8PM;8PM-Close	1599
2348	Tuesday	Half Price Drinks (2-8pm); College Night: $9 Domestic Pitchers; $3 Tall Boy Cans; 1/2 Price on All Bomb Shots (8pm-Close)	2PM-8PM;8PM-Close	1599
2349	Wednesday	Half Price Drinks (2-8pm); Half Price Drafts, Mixed Drinks, Bottles & Shots (8pm-Close)	2PM-8PM;8PM-Close	1599
2350	Thursday	Half Price Drinks (2-8pm); Thirsty Thursday: $14 Domestic Buckets of Beer (5); $9 Domestic Pitchers; All Shots $4 (8pm-Close)	2PM-8PM;8PM-Close	1599
2351	Friday	Half Price Drinks	2PM-8PM	1599
2352	Saturday	Half Price Domestic Drafts & Pitchers; $4 We Call It Shots	12PM-9PM	1599
2353	Sunday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2354	Monday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2355	Tuesday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2356	Wednesday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2357	Thursday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2358	Friday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2359	Saturday	$6 Margaritas; $4 Beer; $6 Wine; $6 Red Sangria; $7 Antojitos	4PM-7PM	1601
2360	Sunday	$5 Beer and Shot; Bartender $6 Cocktail Special	12PM-4AM	1604
2361	Monday	$5 Beer and Shot	4PM-8PM	1604
2362	Tuesday	$5 Beer and Shot	4PM-8PM	1604
2363	Wednesday	$5 Beer and Shot	4PM-8PM	1604
2364	Thursday	$2 Off All Cocktails; $1 All Beer	4PM-8PM	1604
2365	Friday	$2 Off All Cocktails; $1 All Beer	4PM-7PM	1604
2366	Saturday	$2 Off All Cocktails; $1 All Beer	12PM-5PM	1604
2367	Sunday	$18 Brunch Includes 1 Menu Item, Endless Coffee and Unlimited Narragansett	11AM-3PM	1615
2368	Monday	$1 Off All Draft Beers; $5 Pickle Backs; $5 Borsch Backs; $6 Beer Cocktails	4PM-8PM	1615
2369	Tuesday	$1 Off All Draft Beers; $5 Pickle Backs; $5 Borsch Backs; $6 Beer Cocktails	4PM-8PM	1615
2370	Wednesday	$1 Off All Draft Beers; $5 Pickle Backs; $5 Borsch Backs; $6 Beer Cocktails	4PM-8PM	1615
2371	Thursday	$1 Off All Draft Beers; $5 Pickle Backs; $5 Borsch Backs; $6 Beer Cocktails	4PM-8PM	1615
2372	Friday	$1 Off All Draft Beers; $5 Pickle Backs; $5 Borsch Backs; $6 Beer Cocktails	4PM-8PM	1615
2373	Saturday	$18 Brunch Includes 1 Menu Item, Endless Coffee and Unlimited Narragansett	11AM-3PM	1615
2374	Sunday	$5 Shots, Beer and Wine by the Glass	4PM-7PM	1616
2375	Monday	$5 Shots, Beer and Wine by the Glass	4PM-7PM	1616
2376	Tuesday	$5 Shots, Beer and Wine by the Glass	4PM-7PM	1616
2377	Wednesday	$5 Shots, Beer and Wine by the Glass	4PM-7PM	1616
2378	Thursday	$5 Shots, Beer and Wine by the Glass	4PM-7PM	1616
2379	Friday	None		1616
2380	Saturday	None		1616
2381	Sunday	None		1617
2382	Monday	$2 Off Draft Beers; $5 House Mixed Drinks	4PM-7PM	1617
2383	Tuesday	$2 Off Draft Beers; $5 House Mixed Drinks	4PM-7PM	1617
2384	Wednesday	$2 Off Draft Beers; $5 House Mixed Drinks	4PM-7PM	1617
2385	Thursday	$2 Off Draft Beers; $5 House Mixed Drinks	4PM-7PM	1617
2386	Friday	$2 Off Draft Beers; $5 House Mixed Drinks	4PM-7PM	1617
2387	Saturday	None		1617
2388	Sunday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings	1PM-7PM	1623
2389	Monday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings (1pm-1pm); $4 Wine; $5 Draft (All Day)	1PM-7PM;All Day	1623
2390	Tuesday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings (1pm-1pm); $4 Wine; $5 Draft (All Day)	1PM-7PM;All Day	1623
2391	Wednesday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings (1pm-1pm); $4 Wine; $5 Draft (All Day)	1PM-7PM;All Day	1623
2392	Thursday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings (1pm-1pm); $4 Wine; $5 Draft (All Day)	1PM-7PM;All Day	1623
2393	Friday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings	1PM-7PM	1623
2394	Saturday	$4 Wine; $4 Well Drinks; $5 All Drafts; $4 Fries; $6 6 Wings	1PM-7PM	1623
2395	Sunday	None		1626
2396	Monday	Some Wines by the Glass	5PM-7PM	1626
2397	Tuesday	Some Wines by the Glass	5PM-7PM	1626
2398	Wednesday	Some Wines by the Glass	5PM-7PM	1626
2399	Thursday	Some Wines by the Glass	5PM-7PM	1626
2400	Friday	Some Wines by the Glass	5PM-7PM	1626
2401	Saturday	None		1626
2402	Sunday	None		1633
2403	Monday	None		1633
2404	Tuesday	None		1633
2405	Wednesday	None		1633
2406	Thursday	None		1633
2407	Friday	2 for 1 Drink Specials (Including Frozen Drinks)	5PM-10PM	1633
2408	Saturday	None		1633
2409	Sunday	None		1634
2410	Monday	2-for-1 Drinks	2PM-6PM	1634
2411	Tuesday	2-for-1 Drinks	2PM-6PM	1634
2412	Wednesday	2-for-1 Drinks	2PM-6PM	1634
2413	Thursday	2-for-1 Drinks	2PM-6PM	1634
2414	Friday	2-for-1 Drinks	2PM-6PM	1634
2415	Saturday	None		1634
2416	Sunday	None		1635
2417	Monday	Apertivo Italiano - Special Drinks, Food, Music, and More	5PM-8PM	1635
2418	Tuesday	Apertivo Italiano - Special Drinks, Food, Music, and More	5PM-8PM	1635
2419	Wednesday	Apertivo Italiano - Special Drinks, Food, Music, and More	5PM-8PM	1635
2420	Thursday	Apertivo Italiano - Special Drinks, Food, Music, and More	5PM-8PM	1635
2421	Friday	Apertivo Italiano - Special Drinks, Food, Music, and More	5PM-8PM	1635
2422	Saturday	None		1635
2423	Sunday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2424	Monday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2425	Tuesday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2426	Wednesday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2427	Thursday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2428	Friday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2429	Saturday	$4 Drafts, Wells and Select Wines	5PM-6PM;11PM-Midnight	1638
2430	Sunday	None		1642
2432	Tuesday	$1 Off Drinks	4PM-8PM	1642
2433	Wednesday	$1 Off Drinks	4PM-8PM	1642
2434	Thursday	$1 Off Drinks	4PM-8PM	1642
2435	Friday	$1 Off Drinks	12PM-8PM	1642
2436	Saturday	None		1642
2437	Sunday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2438	Monday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2439	Tuesday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2440	Wednesday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2441	Thursday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2442	Friday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2443	Saturday	$3 Domestic Bottles; $4 Imported Bottles	3PM-4AM	1643
2444	Sunday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2445	Monday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2446	Tuesday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2447	Wednesday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2448	Thursday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2449	Friday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2450	Saturday	$6 Margaritas, Lime, Tamarind, Hibiscus, Watermelon; $5 Sangria and Beer	5PM-8PM	1655
2451	Sunday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2452	Monday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2453	Tuesday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2454	Wednesday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2455	Thursday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2456	Friday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2457	Saturday	$3 Beers; $3 Well Drinks	1PM-8PM	1667
2458	Sunday	None		1687
2459	Monday	Almost Half Price On All Cocktails, Wines & Beers	4PM-8PM	1687
2460	Tuesday	Almost Half Price On All Cocktails, Wines & Beers	4PM-8PM	1687
2461	Wednesday	Almost Half Price On All Cocktails, Wines & Beers	4PM-8PM	1687
2462	Thursday	Almost Half Price On All Cocktails, Wines & Beers	4PM-8PM	1687
2463	Friday	Almost Half Price On All Cocktails, Wines & Beers	4PM-8PM	1687
2464	Saturday	None		1687
2465	Sunday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails; $8 Bloody Mary; $8 Mimosa	10:00AM-4PM	1688
2466	Monday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails	3PM-7PM	1688
2467	Tuesday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails	3PM-7PM	1688
2468	Wednesday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails	3PM-7PM	1688
2469	Thursday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails	3PM-7PM	1688
2470	Friday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails	12PM-7PM	1688
2471	Saturday	$5 Draft Beers (except Duvel); $6 Well Liquor; $7 House Wine; $7 Soda Spike Cocktails; $8 Bloody Mary; $8 Mimosa	10:00AM-4PM	1688
2472	Sunday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2473	Monday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2474	Tuesday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2475	Wednesday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2476	Thursday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2477	Friday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2478	Saturday	$14 for a Wine or Cocktail and Two Mezes	3:30PM-7PM	1690
2479	Sunday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM	1691
2480	Monday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM	1691
2481	Tuesday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM	1691
2482	Wednesday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM	1691
2483	Thursday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM	1691
2484	Friday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM	1691
2485	Saturday	Selected Signature Cocktails, Wines and All Draft Beers Just $6 Complemented by An Intrguing Assortment of Tasty Mezes (Turkish for Bar Food!) at Only $6 for Any Two!	4PM-7PM Monday Night Footbal Happy Hour Till 10PM	1691
2486	Sunday	None		1693
2487	Monday	$4 Mugs; $3 Shots; $6 & $7 Pints; $5 Wells; $7 Wines	1PM-8PM	1693
2488	Tuesday	$4 Mugs; $3 Shots; $6 & $7 Pints; $5 Wells; $7 Wines	1PM-8PM	1693
2489	Wednesday	$4 Mugs; $3 Shots; $6 & $7 Pints; $5 Wells; $7 Wines	1PM-8PM	1693
2490	Thursday	$4 Mugs; $3 Shots; $6 & $7 Pints; $5 Wells; $7 Wines	1PM-8PM	1693
2491	Friday	$4 Mugs; $3 Shots; $6 & $7 Pints; $5 Wells; $7 Wines	1PM-8PM	1693
2492	Saturday	None		1693
2493	Sunday	None		1696
2494	Monday	$5 Draft Beers; $7 House Wine	4PM-7PM	1696
2495	Tuesday	$5 Draft Beers; $7 House Wine	4PM-7PM	1696
2496	Wednesday	$5 Draft Beers; $7 House Wine	4PM-6PM	1696
2497	Thursday	$5 Draft Beers; $7 House Wine	4PM-6PM	1696
2498	Friday	$5 Draft Beers; $7 House Wine	4PM-6PM	1696
2499	Saturday	None		1696
2500	Sunday	None		1699
2501	Monday	$4 Pints of Stella, Blue Moon and Bud Light; $3 Bottles of Corona	5PM-8PM	1699
2502	Tuesday	$4 Pints of Stella, Blue Moon and Bud Light; $3 Bottles of Corona	5PM-8PM	1699
2503	Wednesday	$4 Pints of Stella, Blue Moon and Bud Light; $3 Bottles of Corona	5PM-8PM	1699
2504	Thursday	$4 Pints of Stella, Blue Moon and Bud Light; $3 Bottles of Corona	5PM-8PM	1699
2505	Friday	$4 Pints of Stella, Blue Moon and Bud Light; $3 Bottles of Corona	5PM-8PM	1699
2506	Saturday	None		1699
2507	Sunday	None		1706
2508	Monday	None		1706
2509	Tuesday	2-for-1 House Cocktails and Beer	12 PM-7PM	1706
2510	Wednesday	2-for-1 House Cocktails and Beer	12 PM-7PM	1706
2511	Thursday	2-for-1 House Cocktails and Beer	12 PM-7PM	1706
2512	Friday	2-for-1 House Cocktails and Beer	12 PM-7PM	1706
2513	Saturday	None		1706
2514	Sunday	None		1707
2515	Monday	$4 Wines; $3 Well Drinks and Beers; $5 Nachos and Burgers	2PM-8PM	1707
2516	Tuesday	$4 Wines; $3 Well Drinks and Beers; $5 Nachos and Burgers	2PM-8PM	1707
2517	Wednesday	$4 Wines; $3 Well Drinks and Beers; $5 Nachos and Burgers	2PM-8PM	1707
2518	Thursday	$4 Wines; $3 Well Drinks and Beers; $5 Nachos and Burgers	2PM-8PM	1707
2519	Friday	$4 Wines; $3 Well Drinks and Beers; $5 Nachos and Burgers	2PM-8PM	1707
2520	Saturday	None		1707
2521	Sunday	Wine Specials	4PM-7PM	1714
2522	Monday	Wine Specials	4PM-7PM	1714
2523	Tuesday	Wine Specials	4PM-7PM	1714
2524	Wednesday	Wine Specials	4PM-7PM	1714
2525	Thursday	Wine Specials	4PM-7PM	1714
2526	Friday	Wine Specials	4PM-7PM	1714
2527	Saturday	Wine Specials	4PM-7PM	1714
2528	Sunday	$2 Select Craft Beers	All Day	1725
2529	Monday	$3 Domestic Beer and Well Drinks	5PM-8PM	1725
2530	Tuesday	$3 Domestic Beer and Well Drinks	5PM-8PM	1725
2531	Wednesday	$3 Domestic Beer and Well Drinks	5PM-8PM	1725
2532	Thursday	$3 Domestic Beer and Well Drinks	5PM-8PM	1725
2533	Friday	$3 Domestic Beer and Well Drinks	5PM-8PM	1725
2534	Saturday	$3 Domestic Beer and Well Drinks	5PM-8PM	1725
2535	Sunday	None		1732
2536	Monday	$5 Drafts & Wine	5PM-7PM	1732
2537	Tuesday	$5 Drafts & Wine	5PM-7PM	1732
2538	Wednesday	$5 Drafts & Wine	5PM-7PM	1732
2539	Thursday	$5 Drafts & Wine	5PM-7PM	1732
2540	Friday	$5 Drafts & Wine	5PM-7PM	1732
2541	Saturday	None		1732
2542	Sunday	$6 Selected Beers & Cocktails & House Wines	All Day	1735
2543	Monday	$6 Selected Beers & Cocktails & House Wines	4PM-7PM	1735
2544	Tuesday	$6 Selected Beers & Cocktails & House Wines	4PM-7PM	1735
2545	Wednesday	$6 Selected Beers & Cocktails & House Wines	4PM-7PM	1735
2546	Thursday	$6 Selected Beers & Cocktails & House Wines	4PM-7PM	1735
2547	Friday	$6 Selected Beers & Cocktails & House Wines	4PM-7PM	1735
2548	Saturday	$6 Selected Beers & Cocktails & House Wines	All Day	1735
2549	Sunday	None		1738
2550	Monday	$3 Bud/Bud Light Bottles & Drafts; $3 Miller Lite Drafts; $3 Miller High Life Bottles; $3 Coors Light Bottles; $3 Mixed Well Drinks	4PM-7PM	1738
2551	Tuesday	$3 Bud/Bud Light Bottles & Drafts; $3 Miller Lite Drafts; $3 Miller High Life Bottles; $3 Coors Light Bottles; $3 Mixed Well Drinks	4PM-7PM	1738
2552	Wednesday	$3 Bud/Bud Light Bottles & Drafts; $3 Miller Lite Drafts; $3 Miller High Life Bottles; $3 Coors Light Bottles; $3 Mixed Well Drinks	4PM-7PM	1738
2553	Thursday	$3 Bud/Bud Light Bottles & Drafts; $3 Miller Lite Drafts; $3 Miller High Life Bottles; $3 Coors Light Bottles; $3 Mixed Well Drinks	4PM-7PM	1738
2554	Friday	$3 Bud/Bud Light Bottles & Drafts; $3 Miller Lite Drafts; $3 Miller High Life Bottles; $3 Coors Light Bottles; $3 Mixed Well Drinks	4PM-7PM	1738
2555	Saturday	None		1738
2556	Sunday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2557	Monday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2558	Tuesday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2559	Wednesday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2560	Thursday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2561	Friday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2562	Saturday	$5 Beers; $10 Wines, Champagnes and Cocktails	5PM-10PM	1739
2563	Sunday	$4 Aguilla & Cucapa Honey Beer; $5 Jalapenos Margaritas; $6 White Peach Basil Sangria & Strawberry Red Cinnamon Sangria	5PM-8PM	1742
2564	Monday	$4 Aguilla & Cucapa Honey Beer; $5 Jalapenos Margaritas; $6 White Peach Basil Sangria & Strawberry Red Cinnamon Sangria	5PM-8PM	1742
2565	Tuesday	$4 Aguilla & Cucapa Honey Beer; $5 Jalapenos Margaritas; $6 White Peach Basil Sangria & Strawberry Red Cinnamon Sangria	5PM-8PM	1742
2566	Wednesday	$4 Aguilla & Cucapa Honey Beer; $5 Jalapenos Margaritas; $6 White Peach Basil Sangria & Strawberry Red Cinnamon Sangria	5PM-8PM	1742
2567	Thursday	$4 Aguilla & Cucapa Honey Beer; $5 Jalapenos Margaritas; $6 White Peach Basil Sangria & Strawberry Red Cinnamon Sangria	5PM-8PM	1742
2568	Friday	None		1742
2569	Saturday	None		1742
2570	Sunday	None		1745
2571	Monday	All Our Draft Beers Are $4; All Our Well Drinks Are $4	5PM-7PM	1745
2572	Tuesday	All Our Draft Beers Are $4; All Our Well Drinks Are $4 (5pm-7pm); $4 Margarita's All Day!	5PM-7PM;All Day	1745
2573	Wednesday	All Our Draft Beers Are $4; All Our Well Drinks Are $4 (5pm-7pm); $4 Cosmo All Day!	5PM-7PM;All Day	1745
2574	Thursday	All Our Draft Beers Are $4; All Our Well Drinks Are $4	5PM-7PM	1745
2575	Friday	All Our Draft Beers Are $4; All Our Well Drinks Are $4	5PM-7PM	1745
2576	Saturday	None		1745
2577	Sunday	None		1749
2578	Monday	None		1749
2579	Tuesday	$5 Beer; $6 Wine; $9 Apps	All Day	1749
2580	Wednesday	$5 Beer; $6 Wine; $9 Apps	All Day	1749
2581	Thursday	$5 Beer; $6 Wine; $9 Apps	All Day	1749
2582	Friday	$5 Beer; $6 Wine; $9 Apps	All Day	1749
2583	Saturday	None		1749
2584	Sunday	All Beers $3	3PM-9PM	1751
2585	Monday	All Beers $3	3PM-9PM	1751
2586	Tuesday	All Beers $3	3PM-9PM	1751
2587	Wednesday	All Beers $3	3PM-9PM	1751
2588	Thursday	All Beers $3	3PM-9PM	1751
2589	Friday	All Beers $3	3PM-9PM	1751
2590	Saturday	All Beers $3	3PM-9PM	1751
2591	Sunday	None		1753
2592	Monday	2 for 1 Drinks (Beer and House Wine); Complimentary Pool Games	5PM-8PM	1753
2593	Tuesday	None		1753
2594	Wednesday	Ladies 2 for 1 Drinks (Beer and House Wine)	5PM-8PM	1753
2595	Thursday	None		1753
2596	Friday	None		1753
2597	Saturday	None		1753
2598	Sunday	Reverse Happy Hour - $3 and $4 Drafts, $4 Wines, $4 Well Drinks	8PM-Close	1760
2599	Monday	None		1760
2600	Tuesday	None		1760
2601	Wednesday	None		1760
2602	Thursday	None		1760
2603	Friday	None		1760
2604	Saturday	None		1760
2605	Sunday	$4 Bud & Bud Light Pints; $15 Bud & Bud Light Pitchers	All Day	1764
2606	Monday	$3 Bud & Bud Light Pints; $10 Bud & Bud Light Pitchers; $2.50 Sliders	4PM-7PM	1764
2607	Tuesday	$3 Bud & Bud Light Pints; $10 Bud & Bud Light Pitchers; $2.50 Sliders	4PM-7PM	1764
2608	Wednesday	$3 Bud & Bud Light Pints; $10 Bud & Bud Light Pitchers; $2.50 Sliders	4PM-7PM	1764
2609	Thursday	$3 Bud & Bud Light Pints; $10 Bud & Bud Light Pitchers; $2.50 Sliders	4PM-7PM	1764
2610	Friday	$3 Bud & Bud Light Pints; $10 Bud & Bud Light Pitchers; $2.50 Sliders	4PM-7PM	1764
2611	Saturday	$4 Bud & Bud Light Pints; $15 Bud & Bud Light Pitchers	All Day	1764
2612	Sunday	None		1769
2613	Monday	$6 Cosmos, Apple Martinis and Well Drinks	4PM-7PM	1769
2614	Tuesday	$6 Cosmos, Apple Martinis and Well Drinks	4PM-7PM	1769
2615	Wednesday	$6 Cosmos, Apple Martinis and Well Drinks	4PM-7PM	1769
2616	Thursday	$6 Cosmos, Apple Martinis and Well Drinks	4PM-7PM	1769
2617	Friday	$6 Cosmos, Apple Martinis and Well Drinks	4PM-7PM	1769
2618	Saturday	None		1769
2619	Sunday	None		1771
2620	Monday	$4 Domestic Beer; $5 House Wine; $6 Mixed House Drinks	4PM-7PM	1771
2621	Tuesday	$4 Domestic Beer; $5 House Wine; $6 Mixed House Drinks	4PM-7PM	1771
2622	Wednesday	$3 Draft Beer; Half Priced Martinis	4PM-8PM	1771
2623	Thursday	$4 Domestic Beer; $5 House Wine; $6 Mixed House Drinks	4PM-7PM	1771
2624	Friday	$4 Domestic Beer; $5 House Wine; $6 Mixed House Drinks	4PM-7PM	1771
2625	Saturday	None		1771
2626	Sunday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2627	Monday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2628	Tuesday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2629	Wednesday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2630	Thursday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2631	Friday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2632	Saturday	$3 Domestics; $4 Imports; $5 Wines; $6 Well Drinks (11:30-4); $5 Pints; $6 Well Drinks; $5 Wines (4-8)	11:30AM-4PM;4PM-8PM	1773
2633	Sunday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	4PM-7PM	1776
2634	Monday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	Noon-7PM	1776
2635	Tuesday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	Noon-7PM	1776
2636	Wednesday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	Noon-7PM	1776
2637	Thursday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	Noon-7PM	1776
2638	Friday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	Noon-7PM	1776
2639	Saturday	$6 Wines; $6 Beers; $6 Mixed Well Drinks	Noon-7PM	1776
2640	Sunday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2641	Monday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2642	Tuesday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2643	Wednesday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2644	Thursday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2645	Friday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2646	Saturday	$5 Draughts; $5 Draught Imported British Beers; $3.75 House Liquor; $3.75 House Liquor (10pm-Close)	4PM-10PM;10PM-Close	1781
2647	Sunday	None		1786
2648	Monday	None		1786
2649	Tuesday	An Entree Paired with a Beer	5PM-8PM	1786
2650	Wednesday	An Entree Paired with a Beer	5PM-8PM	1786
2651	Thursday	An Entree Paired with a Beer; Beer and Brat Specials	5PM-8PM	1786
2652	Friday	An Entree Paired with a Beer	5PM-8PM	1786
2653	Saturday	None		1786
2654	Sunday	None		1787
2655	Monday	$3 Domestics; $4 Imports; 1/2 Price Karaoke	3PM-8PM	1787
2656	Tuesday	$3 Domestics; $4 Imports; 1/2 Price Karaoke	3PM-8PM	1787
2657	Wednesday	$3 Domestics; $4 Imports; 1/2 Price Karaoke	3PM-8PM	1787
2658	Thursday	$3 Domestics; $4 Imports; 1/2 Price Karaoke (3PM-7PM); Ladies' Night - $4 Martinis, Shots (8PM-Close)	3PM-7PM;8PM-Close	1787
2659	Friday	$3 Domestics; $4 Imports; 1/2 Price Karaoke	3PM-7PM	1787
2660	Saturday	None		1787
2661	Sunday	None		1790
2662	Monday	$5 House Martinis; $5 Bartender's Choice Martinis; $5 Draft Beers; $4 House Wines	4PM-7PM	1790
2663	Tuesday	Trivia Night - $2 Coors Light and Yuengling Drafts; $5 Draft Beers	4PM-7PM	1790
2664	Wednesday	$4 House Wines; $5 Draft Beers	4PM-7PM	1790
2665	Thursday	Live Jazz Happy Hour - $5 Well Drinks; $5 Draft Beers; $4 House Wines	4PM-7PM	1790
2666	Friday	$2 Select Shot Specials; $5 Draft Beers; $4 House Wines	4PM-7PM	1790
2667	Saturday	None		1790
2668	Sunday	None		1792
2669	Monday	Cocktail Specials	4PM-7PM	1792
2670	Tuesday	Cocktail Specials	4PM-7PM	1792
2671	Wednesday	Cocktail Specials	4PM-7PM	1792
2672	Thursday	Cocktail Specials	4PM-7PM	1792
2673	Friday	Cocktail Specials	4PM-7PM	1792
2674	Saturday	None		1792
2675	Sunday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2676	Monday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2677	Tuesday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2678	Wednesday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2679	Thursday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2680	Friday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2681	Saturday	Cocktails for Half-Price ($7)	8AM-8PM	1794
2682	Sunday	None		1800
2683	Monday	$1 Off Select Drafts; $5 Cocktails; $4 Select Bottles	11AM-6PM	1800
2684	Tuesday	$1 Off Select Drafts; $5 Cocktails; $4 Select Bottles	11AM-6PM	1800
2685	Wednesday	$1 Off Select Drafts; $5 Cocktails; $4 Select Bottles	11AM-6PM	1800
2686	Thursday	$1 Off Select Drafts; $5 Cocktails; $4 Select Bottles	11AM-6PM	1800
2687	Friday	$1 Off Select Drafts; $5 Cocktails; $4 Select Bottles	11AM-6PM	1800
2688	Saturday	None		1800
2689	Sunday	Complimentary Brunch Cocktail (Mimosa, Bloody Mary, Bud Light & More!) or 2 Hour Unlimited Brunch Drinks for $15.00 with Purchase of An Entree	11AM-4PM	1802
2690	Monday	$3 Coors Light and Bud Light Draft; $3 PBR 16oz Cans; $4 Abita & Strongbow Draft; $4 Well Drinks; $5 Wine; $1 Off Selected Apps	4PM-7PM	1802
2691	Tuesday	$3 Coors Light and Bud Light Draft; $3 PBR 16oz Cans; $4 Abita & Strongbow Draft; $4 Well Drinks; $5 Wine; $1 Off Selected Apps	4PM-7PM	1802
2692	Wednesday	$3 Coors Light and Bud Light Draft; $3 PBR 16oz Cans; $4 Abita & Strongbow Draft; $4 Well Drinks; $5 Wine; $1 Off Selected Apps	4PM-7PM	1802
2693	Thursday	$3 Coors Light and Bud Light Draft; $3 PBR 16oz Cans; $4 Abita & Strongbow Draft; $4 Well Drinks; $5 Wine; $1 Off Selected Apps	4PM-7PM	1802
2694	Friday	$3 Coors Light and Bud Light Draft; $3 PBR 16oz Cans; $4 Abita & Strongbow Draft; $4 Well Drinks; $5 Wine; $1 Off Selected Apps (4pm-7pm); Plus TGIF Happy Hour In the Attic with Rotating Specials! (6pm-9pm)	4PM-7PM;6PM-9PM	1802
2695	Saturday	Complimentary Brunch Cocktail (Mimosa, Bloody Mary, Bud Light & More!) or 2 Hour Unlimited Brunch Drinks for $15.00 with Purchase of An Entree	11AM-4PM	1802
2696	Sunday	$3 Corona Bottles	All Day	1803
2697	Monday	None		1803
2698	Tuesday	None		1803
2699	Wednesday	1/2 Price Martinis; $5 Long Island Iced Teas	All Night	1803
2700	Thursday	$3 Bottles of Land Shark; Ladies Night - $1 House Shots (after 10PM); $.25 Wings	All Night	1803
2701	Friday	$3 Shots of SoCo	All Night	1803
2702	Saturday	$5 Margaritas	All Day	1803
2703	Sunday	None		1805
2704	Monday	$6 Red Wine; $6 White Wine; $4 Domestic Beer; $4 Imported Beer; $14 Martinis & Cocktails; Bar Bites Starting at $5	4:30PM-6:30PM;9:30PM-10:30PM	1805
2705	Tuesday	$6 Red Wine; $6 White Wine; $4 Domestic Beer; $4 Imported Beer; $14 Martinis & Cocktails; Bar Bites Starting at $5	4:30PM-6:30PM;9:30PM-10:30PM	1805
2706	Wednesday	$6 Red Wine; $6 White Wine; $4 Domestic Beer; $4 Imported Beer; $14 Martinis & Cocktails; Bar Bites Starting at $5	4:30PM-6:30PM;9:30PM-10:30PM	1805
2707	Thursday	$6 Red Wine; $6 White Wine; $4 Domestic Beer; $4 Imported Beer; $14 Martinis & Cocktails; Bar Bites Starting at $5	4:30PM-6:30PM;9:30PM-10:30PM	1805
2708	Friday	$6 Red Wine; $6 White Wine; $4 Domestic Beer; $4 Imported Beer; $14 Martinis & Cocktails; Bar Bites Starting at $5	4:30PM-6:30PM;9:30PM-10:30PM	1805
2709	Saturday	None		1805
2710	Sunday	$4 Beers; $5 Wells	5PM-7PM	1806
2711	Monday	$4 Beers; $5 Wells	5PM-7PM	1806
2712	Tuesday	$4 Beers; $5 Wells	5PM-7PM	1806
2713	Wednesday	$4 Beers; $5 Wells	5PM-7PM	1806
2714	Thursday	$4 Beers; $5 Wells	5PM-7PM	1806
2715	Friday	$4 Beers; $5 Wells	5PM-7PM	1806
2716	Saturday	$4 Beers; $5 Wells	5PM-7PM	1806
2717	Sunday	None		1808
2718	Monday	$5 Beer (Draught and Bottles); $5 Well Drinks (4:30pm-7:00pm); 1/2 Priced Appetizers (11:30pm-2am)	4:30PM-7:00PM;11:30PM-2AM	1808
2719	Tuesday	$5 Beer (Draught and Bottles); $5 Well Drinks (4:30pm-7:00pm); 1/2 Priced Appetizers (11:30pm-2am)	4:30PM-7:00PM;11:30PM-2AM	1808
2720	Wednesday	$5 Beer (Draught and Bottles); $5 Well Drinks (4:30pm-7:00pm); 1/2 Priced Appetizers (11:30pm-2am)	4:30PM-7:00PM;11:30PM-2AM	1808
2721	Thursday	$5 Beer (Draught and Bottles); $5 Well Drinks (4:30pm-7:00pm); 1/2 Priced Appetizers (11:30pm-2am)	4:30PM-7:00PM;11:30PM-2AM	1808
2722	Friday	$5 Beer (Draught and Bottles); $5  Well Drinks (4:30pm-7:00pm); 1/2 Priced Appetizers (11:30pm-2am)	4:30PM-7:00PM;11:30PM-2AM	1808
2723	Saturday	None		1808
2724	Sunday	None		1813
2725	Monday	$3 Select Drafts; $4 Select Bottles; $5 Well Drinks; $6 French or Appletini; 1/2 Price Appetizers	3PM-8PM	1813
2726	Tuesday	$3 Select Drafts; $4 Select Bottles; $5 Well Drinks; $6 French or Appletini; 1/2 Price Appetizers	3PM-8PM	1813
2727	Wednesday	$3 Select Drafts; $4 Select Bottles; $5 Well Drinks; $6 French or Appletini; 1/2 Price Appetizers	Open-10PM	1813
2728	Thursday	$3 Select Drafts; $4 Select Bottles; $5 Well Drinks; $6 French or Appletini; 1/2 Price Appetizers	3PM-8PM	1813
2729	Friday	$3 Select Drafts; $4 Select Bottles; $5 Well Drinks; $6 French or Appletini; 1/2 Price Appetizers	3PM-8PM	1813
2730	Saturday	None		1813
2731	Sunday	None		1815
2732	Monday	Various Specials	4PM-7PM	1815
2733	Tuesday	Various Specials	4PM-7PM	1815
2734	Wednesday	Various Specials	4PM-7PM	1815
2735	Thursday	Various Specials	4PM-7PM	1815
2736	Friday	None		1815
2737	Saturday	None		1815
2738	Sunday	$5 House Martinis; $3.50 Jameson & Jager Shots	7PM-11PM	1818
2739	Monday	$5 House Martinis; 1/2 Price Appetizers; Reduced Prices on All Alcoholic Beverages; $.35 Jumbo Wings (4-7); $5 House Martinis; $3.50 Jameson & Jager Shots (7-11)	4PM-7PM;7PM-11PM	1818
2740	Tuesday	$5 House Martinis; 1/2 Price Appetizers; Reduced Prices on All Alcoholic Beverages; $.35 Jumbo Wings (4-7); $5 House Martinis; $3.50 Jameson & Jager Shots (7-11)	4PM-7PM;7PM-11PM	1818
2741	Wednesday	$5 House Martinis; 1/2 Price Appetizers; Reduced Prices on All Alcoholic Beverages; $.35 Jumbo Wings (4-7); $5 House Martinis; $3.50 Jameson & Jager Shots (7-11)	4PM-7PM;7PM-11PM	1818
2742	Thursday	$5 House Martinis; 1/2 Price Appetizers; Reduced Prices on All Alcoholic Beverages; $.35 Jumbo Wings (4-7); $5 House Martinis; $3.50 Jameson & Jager Shots (7-11)	4PM-7PM;7PM-11PM	1818
2743	Friday	$5 House Martinis; 1/2 Price Appetizers; Reduced Prices on All Alcoholic Beverages; $.35 Jumbo Wings (4-7); $5 House Martinis; $3.50 Jameson & Jager Shots (7-11)	4PM-7PM;7PM-11PM	1818
2744	Saturday	$5 House Martinis; $3.50 Jameson & Jager Shots	7PM-11PM	1818
2745	Sunday	None		1819
2746	Monday	1/2 Price Wines; $4 Bud Light Drafts; 1/2 Price Pizza	All Day	1819
2747	Tuesday	2-for-1 Coronas and Corona Lights; 1/2 Price Patron Margaritas; 1/2 Price Nachos	All Day	1819
2748	Wednesday	1/2 Price Wine; 2-for-1 Specialty Martinis; 1/2 Price Spinach Dip	All Day	1819
2749	Thursday	$5 Pinnacle Vodka Cocktails; $4 Stella Drafts; 1/2 Price Quesadillas	All Day	1819
2750	Friday	2-for-1 Specialty Martinis; 2-for-1 Foster's Oil Cans; 1/2 Price Calamari; College Night - $2 Bud Light Mugs with College ID (9PM-11PM)	All Day	1819
2751	Saturday	College Night - $2 Bud Light Mugs with College ID (9PM-11PM)	9PM-11PM	1819
2752	Sunday	Buy a Mimosa or Bloody Mary with a Main Course and get Unlimited Refills	11AM-3:30PM	1822
2753	Monday	All Pastas on the Menu $9	5PM-11PM	1822
2754	Tuesday	3 Course Meal $25	5PM-11PM	1822
2755	Wednesday	Selected Wine Bottles 1/2 Price	All Night	1822
2756	Thursday	None		1822
2757	Friday	None		1822
2758	Saturday	Buy a Mimosa or Bloody Mary with a Main Course and get Unlimited Refills	11AM-3:30PM	1822
2759	Sunday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2760	Monday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2761	Tuesday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2762	Wednesday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2763	Thursday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2764	Friday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2765	Saturday	$4 Beers; $5 Wines; $7 Cocktails	3PM-7PM	1824
2766	Sunday	None		1825
2767	Monday	$2 Off All Taps and Wine; $1 Off Specialty Bottles and Well Drinks	4PM-7PM	1825
2768	Tuesday	$2 Off All Taps and Wine; $1 Off Specialty Bottles and Well Drinks	4PM-7PM	1825
2769	Wednesday	$2 Off All Taps and Wine; $1 Off Specialty Bottles and Well Drinks	4PM-7PM	1825
2770	Thursday	$2 Off All Taps and Wine; $1 Off Specialty Bottles and Well Drinks	4PM-7PM	1825
2771	Friday	$2 Off All Taps and Wine; $1 Off Specialty Bottles and Well Drinks	4PM-7PM	1825
2772	Saturday	None		1825
2773	Sunday	1/2 Price Drinks (at Bar and Lounge); Discounted Snacks	3PM-6PM	1827
2774	Monday	1/2 Price Drinks (at Bar and Lounge); Discounted Snacks	3PM-6PM	1827
2775	Tuesday	1/2 Price Drinks (at Bar and Lounge); Discounted Snacks	3PM-6PM	1827
2776	Wednesday	1/2 Price Drinks (at Bar and Lounge); Discounted Snacks	3PM-6PM	1827
2777	Thursday	1/2 Price Drinks (at Bar and Lounge); Discounted Snacks	3PM-6PM	1827
2778	Friday	1/2 Price Drinks (at Bar and Lounge); Discounted Snacks	3PM-6PM	1827
2779	Saturday	None		1827
2780	Sunday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2781	Monday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2782	Tuesday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2783	Wednesday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2784	Thursday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2785	Friday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2786	Saturday	$4 Bud, Bud Light & Highlife; $5 Well Drinks, Bottled Beer, Drafts & Wine	4PM-8PM	1831
2787	Sunday	None		1832
2788	Monday	Various Specials	4PM-7PM	1832
2789	Tuesday	Various Specials	4PM-7PM	1832
2790	Wednesday	Various Specials	4PM-7PM	1832
2791	Thursday	Various Specials	4PM-7PM	1832
2792	Friday	Various Specials	4PM-7PM	1832
2793	Saturday	None		1832
2794	Sunday	None		1837
2795	Monday	None		1837
2796	Tuesday	None		1837
2797	Wednesday	None		1837
2798	Thursday	2 for 1 Lobster, Clams and Oysters	All Day	1837
2799	Friday	None		1837
2800	Saturday	None		1837
2801	Sunday	None		1847
2802	Monday	Discounts on Select Margaritas, Beer, Wine	3PM-6PM	1847
2803	Tuesday	Discounts on Select Margaritas, Beer, Wine	3PM-6PM	1847
2804	Wednesday	Discounts on Select Margaritas, Beer, Wine	3PM-6PM	1847
2805	Thursday	Discounts on Select Margaritas, Beer, Wine	3PM-6PM	1847
2806	Friday	Discounts on Select Margaritas, Beer, Wine	3PM-6PM	1847
2807	Saturday	None		1847
2808	Sunday	None		1848
2809	Monday	$4 Blue Moon and Bud Light Drafts; $6 House Wines (4pm-7pm); $4 Bud, Bud Light and Coors Light Bottles (8pm-10pm); $4 Tecates (10pm-Close)	4PM-7PM;8PM-10PM;10PM-Close	1848
2810	Tuesday	$4 Bud Light Drafts, $6 House Mixed Drinks (4pm-7pm); $4 Tecates (10pm-Close)	4PM-7PM;10PM-Close	1848
2811	Wednesday	$2 Off All Drafts; $6 House Wines (4pm-7pm); $4 Tecates (10pm-Close)	4PM-7PM;10PM-Close	1848
2812	Thursday	$6 Flavored Margaritas; $5 Dos Equis Bottles (4pm-7pm); $4 Bud, Bud Light and Coors Light Bottles (8pm-10pm); $4 Tecates (10pm-Close)	4PM-7PM;8PM-10PM;10PM-Close	1848
2813	Friday	$8 Bud Light + Whiskey Shot; $6 House Mixed Drinks (4pm-7pm); $4 Tecates (10pm-Close)	4PM-7PM;10PM-Close	1848
2814	Saturday	None		1848
2815	Sunday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; $6 Appetizers	4PM-7PM	1856
2816	Monday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; $6 Appetizers	4PM-7PM	1856
2817	Tuesday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; $6 Appetizers	4PM-7PM	1856
2818	Wednesday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; $6 Appetizers	4PM-7PM	1856
2819	Thursday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; $6 Appetizers	4PM-7PM	1856
2820	Friday	None		1856
2821	Saturday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; $6 Appetizers	4PM-7PM	1856
2822	Sunday	None		1857
2823	Monday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; Specialties on a Selection of Authentic Mexican Specialties	3PM-5PM	1857
2824	Tuesday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; Specialties on a Selection of Authentic Mexican Specialties	3PM-5PM	1857
2825	Wednesday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; Specialties on a Selection of Authentic Mexican Specialties	3PM-5PM	1857
2826	Thursday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; Specialties on a Selection of Authentic Mexican Specialties	3PM-5PM	1857
2827	Friday	Specials on Margaritas, Specialty Tequilas, Sangrias and Beers; Specialties on a Selection of Authentic Mexican Specialties	3PM-5PM	1857
2828	Saturday	None		1857
2829	Sunday	None		1872
2830	Monday	$10 Rose; $10 Rum Punch; $10 Caipirinha; $5 Narragansett	12PM-6PM	1872
2831	Tuesday	$10 Rose; $10 Rum Punch; $10 Caipirinha; $5 Narragansett	12PM-6PM	1872
2832	Wednesday	$10 Rose; $10 Rum Punch; $10 Caipirinha; $5 Narragansett	12PM-6PM	1872
2833	Thursday	$10 Rose; $10 Rum Punch; $10 Caipirinha; $5 Narragansett	12PM-6PM	1872
2834	Friday	$10 Rose; $10 Rum Punch; $10 Caipirinha; $5 Narragansett	12PM-6PM	1872
2835	Saturday	None		1872
2836	Sunday	None		1875
2837	Monday	$3.50 House-Infused Vodkas; $5 Flavored Martinis; $4 Beers	4PM-7PM	1875
2838	Tuesday	$3.50 House-Infused Vodkas; $5 Flavored Martinis; $4 Beers	4PM-7PM	1875
2839	Wednesday	$3.50 House-Infused Vodkas; $5 Flavored Martinis; $4 Beers	4PM-7PM	1875
2840	Thursday	$3.50 House-Infused Vodkas; $5 Flavored Martinis; $4 Beers	4PM-7PM	1875
2841	Friday	$3.50 House-Infused Vodkas; $5 Flavored Martinis; $4 Beers	4PM-7PM	1875
2842	Saturday	None		1875
2843	Sunday	None		1876
2844	Monday	$4 Well Cocktails; $4 House Red and White Wine; $4 Draft Beer	4PM-8PM	1876
2845	Tuesday	$4 Well Cocktails; $4 House Red and White Wine; $4 Draft Beer	4PM-8PM	1876
2846	Wednesday	$4 Well Cocktails; $4 House Red and White Wine; $4 Draft Beer	4PM-8PM	1876
2847	Thursday	$4 Well Cocktails; $4 House Red and White Wine; $4 Draft Beer	4PM-8PM	1876
2848	Friday	Teacher Appreciation Happy Hour - $4 Well Cocktails; $4 House Red and White Wine; $4 Draft Beer	3PM-8PM	1876
2849	Saturday	None		1876
2850	Sunday	None		1879
2851	Monday	Free Buffet	5PM-7PM	1879
2852	Tuesday	Free Buffet	5PM-7PM	1879
2853	Wednesday	Free Buffet	5PM-7PM	1879
2854	Thursday	Free Buffet	5PM-7PM	1879
2855	Friday	Free Buffet	5PM-7PM	1879
2856	Saturday	None		1879
2857	Sunday	None		1886
2858	Monday	$2 Off All Drinks; $4 Empanadas	4PM-7PM	1886
2859	Tuesday	$2 Off All Drinks; $4 Empanadas	4PM-7PM	1886
2860	Wednesday	$1 Off All Drinks; $4 Empanadas	4PM-7PM	1886
2861	Thursday	$1 Off All Drinks; $4 Empanadas	4PM-7PM	1886
2862	Friday	$1 Off All Drinks; $4 Empanadas	4PM-7PM	1886
2863	Saturday	$1 Off All Drinks; $4 Empanadas	4PM-7PM	1886
2864	Sunday	None		1887
2865	Monday	$4 Draft Beers, $5 Select Wines, $9 Select Cocktails, $1 Oysters	4PM-7PM	1887
2866	Tuesday	$4 Draft Beers, $5 Select Wines, $9 Select Cocktails, $1 Oysters	4PM-7PM	1887
2867	Wednesday	$4 Draft Beers, $5 Select Wines, $9 Select Cocktails, $1 Oysters	4PM-7PM	1887
2868	Thursday	$4 Draft Beers, $5 Select Wines, $9 Select Cocktails, $1 Oysters	4PM-7PM	1887
2869	Friday	$4 Draft Beers, $5 Select Wines, $9 Select Cocktails, $1 Oysters	4PM-7PM	1887
2870	Saturday	$4 Draft Beers, $5 Select Wines, $9 Select Cocktails, $1 Oysters	4PM-7PM	1887
2871	Sunday	None		1895
2872	Monday	1/2 Priced Beer, Wine and Sangria	4PM-7PM	1895
2873	Tuesday	1/2 Priced Beer, Wine and Sangria	4PM-7PM	1895
2874	Wednesday	1/2 Priced Beer, Wine and Sangria	4PM-7PM	1895
2875	Thursday	1/2 Priced Beer, Wine and Sangria	4PM-7PM	1895
2876	Friday	1/2 Priced Beer, Wine and Sangria	4PM-7PM	1895
2877	Saturday	None		1895
2878	Sunday	None		1914
2879	Monday	Mojito Monday - $6 Mojitos	All Night	1914
2880	Tuesday	Tequila Tuesday - 1/2 Price Shots	All Night	1914
2881	Wednesday	Wine Tasting Wednesday - Wine Specials	All Night	1914
2882	Thursday	Ladies Night Thursday - Drinks Specials for the Ladies	All Night	1914
2883	Friday	None		1914
2884	Saturday	None		1914
2885	Sunday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2886	Monday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2887	Tuesday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2888	Wednesday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2889	Thursday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2890	Friday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2891	Saturday	$29.95 Pre-Theater Menu	4PM-11PM	1916
2892	Sunday	None		1921
2893	Monday	None		1921
2894	Tuesday	None		1921
2895	Wednesday	None		1921
2896	Thursday	Complimentary Admission with 2 Free Drinks	7PM-9PM	1921
2897	Friday	None		1921
2898	Saturday	None		1921
2899	Sunday	None		1932
2900	Monday	$3 Domestic Beers; $4 Import Beers; $5 Cocktails; 1/2 Prices Wines & $2 Tacos and $5 Sangria 8PM-Close	5PM-7PM	1932
2901	Tuesday	$3 Domestic Beers; $4 Import Beers; $5 Cocktails; 1/2 Prices Wines & $3 PBR and $4 Whiskey	5PM-7PM	1932
2902	Wednesday	$3 Domestic Beers; $4 Import Beers; $5 Cocktails; 1/2 Prices Wines	5PM-7PM	1932
2903	Thursday	$3 Domestic Beers; $4 Import Beers; $5 Cocktails; 1/2 Prices Wines	5PM-7PM	1932
2904	Friday	$3 Domestic Beers; $4 Import Beers; $5 Cocktails; 1/2 Prices Wines	5PM-7PM	1932
2905	Saturday	None		1932
2906	Sunday	None		1936
2907	Monday	$1 Off Beer, Wine and Wells	12PM-7PM	1936
2908	Tuesday	$1 Off Beer, Wine and Wells	12PM-7PM	1936
2909	Wednesday	$1 Off Beer, Wine and Wells	12PM-7PM	1936
2910	Thursday	$1 Off Beer, Wine and Wells	12PM-7PM	1936
2911	Friday	$1 Off Beer, Wine and Wells	12PM-7PM	1936
2912	Saturday	None		1936
2913	Sunday	None		1942
2914	Monday	$.75 Domestic Drafts; $2 Well Drinks; $.30 Wings; $1.50 Domestic Bottles (4-7pm)	3PM-7PM	1942
2915	Tuesday	$.75 Domestic Drafts; $2 Well Drinks; $.30 Wings; $1.50 Domestic Bottles (4-7pm)	3PM-7PM	1942
2916	Wednesday	$.75 Domestic Drafts; $2 Well Drinks; $.30 Wings; $1.50 Domestic Bottles (4-7pm)	3PM-7PM	1942
2917	Thursday	$.75 Domestic Drafts; $2 Well Drinks; $.30 Wings; $1.50 Domestic Bottles (4-7pm)	3PM-7PM	1942
2918	Friday	$.75 Domestic Drafts; $2 Well Drinks; $.30 Wings	3PM-7PM	1942
2919	Saturday	None		1942
2920	Sunday	$12 Select Pitchers; $5 Bloody Marys; $6 Wiz Sliders	4PM-7PM	1948
2921	Monday	$12 Select Pitchers; $.25 Wings	4PM-7PM	1948
2922	Tuesday	2-for-1 Select Drafts, Bottles, and Cans; $6 Wiz Sliders	4PM-7PM	1948
2923	Wednesday	$4 Yuengling Drafts; $4 Yuengling Rings	4PM-7PM	1948
2924	Thursday	$12 Select Pitchers; $6 Wiz Sliders	4PM-7PM	1948
2925	Friday	$6 Absolut Tinis and Cosmos; $5 Jager Shots; $3 Shorty Shots	4PM-7PM;11PM-2AM	1948
2926	Saturday	$4 Import Bottles; $5 Jager Shots; $3 Shorty Shots; $6 Wiz Sliders	4PM-7PM	1948
2927	Sunday	None		1950
2928	Monday	$2-$4 Draft Beers; $5 Glasses of Wine; $2 Tequila Shots; $7 Chicken Wings (w/ Side)	4PM-8PM	1950
2929	Tuesday	$2-$4 Draft Beers; $5 Glasses of Wine; $2 Tequila Shots; $7 Chicken Wings (w/ Side)	4PM-8PM	1950
2930	Wednesday	$2-$4 Draft Beers; $5 Glasses of Wine; $2 Tequila Shots; $7 Chicken Wings (w/ Side)	4PM-8PM	1950
2931	Thursday	$2-$4 Draft Beers; $5 Glasses of Wine; $2 Tequila Shots; $7 Chicken Wings (w/ Side)	4PM-8PM	1950
2932	Friday	$2-$4 Draft Beers; $5 Glasses of Wine; $2 Tequila Shots; $7 Chicken Wings (w/ Side)	4PM-8PM	1950
2933	Saturday	None		1950
2934	Sunday	$30 Bottomless Mimosas and Bud Lights, includes 1 Brunch Entree	12PM-3PM	1951
2935	Monday	2-for-1 Absolut Cocktails; $4 Bud Light Drafts; $5 Bud Light Bottles; $10 Ketel Martinis; $10 Jumbo Avion Margs	12PM-7PM	1951
2936	Tuesday	2-for-1 Absolut Cocktails; $4 Bud Light Drafts; $5 Bud Light Bottles; $10 Ketel Martinis; $10 Jumbo Avion Margs	12PM-7PM	1951
2937	Wednesday	2-for-1 Absolut Cocktails; $4 Bud Light Drafts; $5 Bud Light Bottles; $10 Ketel Martinis; $10 Jumbo Avion Margs	12PM-7PM	1951
2938	Thursday	2-for-1 Absolut Cocktails; $4 Bud Light Drafts; $5 Bud Light Bottles; $10 Ketel Martinis; $10 Jumbo Avion Margs	12PM-7PM	1951
2939	Friday	None		1951
2940	Saturday	$30 Bottomless Mimosas and Bud Lights, includes 1 Brunch Entree	12PM-3PM	1951
2941	Sunday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2942	Monday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2943	Tuesday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2944	Wednesday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2945	Thursday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2946	Friday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2947	Saturday	1/2 Price Draft Beer (just $4!); Some Bottled Beers (starting at $2.50); Well Drinks, House Wines (starting at $5); House Made Sangria ($5)	11AM-8PM	1953
2948	Sunday	$4 All Beer, Wine and Well; $4/hr for Private Room	4PM-9PM	1956
2949	Monday	$4 All Beer, Wine and Well; $4/hr for Private Room	6PM-9PM	1956
2950	Tuesday	$4 All Beer, Wine and Well; $4/hr for Private Room	6PM-9PM	1956
2951	Wednesday	$4 All Beer, Wine and Well; $4/hr for Private Room	6PM-9PM	1956
2952	Thursday	$4 All Beer, Wine and Well; $4/hr for Private Room	4PM-9PM	1956
2953	Friday	$4 All Beer, Wine and Well; $4/hr for Private Room	4PM-9PM	1956
2954	Saturday	$4 All Beer, Wine and Well; $4/hr for Private Room	4PM-9PM	1956
2955	Sunday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2956	Monday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2957	Tuesday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2958	Wednesday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2959	Thursday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2960	Friday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2961	Saturday	All Beer at $3 and Wine starting at $5	4PM-7PM	1960
2962	Sunday	None		1961
2963	Monday	None		1961
2964	Tuesday	None		1961
2965	Wednesday	None		1961
2966	Thursday	None		1961
2967	Friday	None		1961
2968	Saturday	$5 Cans of Beer and a Shot; $5 Well Drinks; $5 Hot Whiskeys; $6 Blue Moon Bombs	All Night	1961
2969	Sunday	None		1967
2970	Monday	2 for 1 (Choose from 20 Drafts and 4 House Wines)	12PM-8PM	1967
2971	Tuesday	2 for 1 (Choose from 20 Drafts and 4 House Wines)	12PM-8PM	1967
2972	Wednesday	2 for 1 (Choose from 20 Drafts and 4 House Wines)	12PM-8PM	1967
2973	Thursday	2 for 1 (Choose from 20 Drafts and 4 House Wines)	12PM-8PM	1967
2974	Friday	2 for 1 (Choose from 20 Drafts and 4 House Wines)	12PM-8PM	1967
2975	Saturday	None		1967
2976	Sunday	None		1968
2977	Monday	$5 ANY DRINK; $3 BUD & BUD LIGHT Until 7pm	4PM-9PM	1968
2978	Tuesday	$5 ANY DRINK; $3 BUD & BUD LIGHT Until 7pm	4PM-9PM	1968
2979	Wednesday	$5 ANY DRINK; $3 BUD & BUD LIGHT Until 7pm	4PM-9PM	1968
2980	Thursday	$5 ANY DRINK; $3 BUD & BUD LIGHT Until 7pm	4PM-9PM	1968
2981	Friday	$5 ANY DRINK; $3 BUD & BUD LIGHT Until 7pm	4PM-9PM	1968
2982	Saturday	None		1968
2983	Sunday	$4 Domestic and Draft Beer; $5 House Wines; $4 Well Drinks; $6 Flavored Martinis	12PM-12AM	1969
2984	Monday	$4 Domestic and Draft Beer; $5 House Wines; $4 Well Drinks; $6 Flavored Martinis	5PM-8PM	1969
2985	Tuesday	$4 Domestic and Draft Beer; $5 House Wines; $4 Well Drinks; $6 Flavored Martinis	5PM-8PM	1969
2986	Wednesday	$4 Domestic and Draft Beer; $5 House Wines; $4 Well Drinks; $6 Flavored Martinis	5PM-8PM	1969
2987	Thursday	$4 Domestic and Draft Beer; $5 House Wines; $4 Well Drinks; $6 Flavored Martinis	5PM-8PM	1969
2988	Friday	$4 Domestic and Draft Beer; $5 House Wines; $4 Well Drinks; $6 Flavored Martinis	5PM-8PM	1969
2989	Saturday	None		1969
2990	Sunday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2991	Monday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2992	Tuesday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2993	Wednesday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2994	Thursday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2995	Friday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2996	Saturday	Half Price Cocktails, Well Drinks, and Wine by the Glass	4:30PM-6PM	1973
2997	Sunday	None		1975
2998	Monday	$3.75 and $4 Domestic Bottles; $4 Well Drinks; $4 Soco Shots; $4 Soco Pepper Shots	12PM-7PM	1975
2999	Tuesday	$3.75 and $4 Domestic Bottles; $4 Well Drinks; $4 Soco Shots; $4 Soco Pepper Shots	12PM-7PM	1975
3000	Wednesday	$3.75 and $4 Domestic Bottles; $4 Well Drinks; $4 Soco Shots; $4 Soco Pepper Shots	12PM-7PM	1975
3001	Thursday	$3.75 and $4 Domestic Bottles; $4 Well Drinks; $4 Soco Shots; $4 Soco Pepper Shots	12PM-7PM	1975
3002	Friday	$3.75 and $4 Domestic Bottles; $4 Well Drinks; $4 Soco Shots; $4 Soco Pepper Shots	12PM-7PM	1975
3003	Saturday	None		1975
3004	Sunday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3005	Monday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3006	Tuesday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3007	Wednesday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3008	Thursday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3009	Friday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3010	Saturday	$3 Bud Light Pints; $5 Cosmos, Appletinis and Peachtinis; $5 Mojitos; $5 Shots of Patron Silver or Cafe, Jameson & Jager	6PM-8PM	1980
3011	Sunday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3012	Monday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3013	Tuesday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3014	Wednesday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3015	Thursday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3016	Friday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3017	Saturday	$5 Beer, Wine, and Sangria; Half Off All Tapas	4PM-6PM	1983
3018	Sunday	All Tapas Half a Price + $5 Glass of Wine, Cava, Sangria or Beer @ the Bar Only	5PM-7PM	1984
3019	Monday	All Tapas Half a Price + $5 Glass of Wine, Cava, Sangria or Beer @ the Bar Only	5PM-7PM	1984
3020	Tuesday	All Tapas Half a Price + $5 Glass of Wine, Cava, Sangria or Beer @ the Bar Only	5PM-7PM	1984
3021	Wednesday	All Tapas Half a Price + $5 Glass of Wine, Cava, Sangria or Beer @ the Bar Only	5PM-7PM	1984
3022	Thursday	All Tapas Half a Price + $5 Glass of Wine, Cava, Sangria or Beer @ the Bar Only	5PM-7PM	1984
3023	Friday	None		1984
3024	Saturday	None		1984
3091	Wednesday	2 for 1 Beer	5PM-7PM	2017
3092	Thursday	2 for 1 Beer	5PM-7PM	2017
3025	Sunday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	All Day	1985
3026	Monday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	All Day	1985
3027	Tuesday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	11:30AM-8PM	1985
3028	Wednesday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	11:30AM-8PM	1985
3029	Thursday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	11:30AM-8PM	1985
3030	Friday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	11:30AM-8PM	1985
3031	Saturday	$4 Bud, Bud Light and Coors Light; $4.50 Well Mixed Drinks;$5 House Red or White, Samual Adams Boston Lager, Pomegranate Lemon Drops, White Peach Sangria, Hurricanes	11:30AM-10PM	1985
3032	Sunday	None		1988
3033	Monday	$3 Beer; $8 Mojitos; $2 Empanadas; $0.75 Wings	4PM-8PM	1988
3034	Tuesday	$3 Beer; $8 Mojitos; $2 Empanadas; $0.75 Wings	4PM-8PM	1988
3035	Wednesday	$3 Beer; $8 Mojitos; $2 Empanadas; $0.75 Wings	4PM-8PM	1988
3036	Thursday	$3 Beer; $8 Mojitos; $2 Empanadas; $0.75 Wings	4PM-8PM	1988
3037	Friday	$3 Beer; $8 Mojitos; $2 Empanadas; $0.75 Wings	4PM-7PM	1988
3038	Saturday	None		1988
3039	Sunday	None		1989
3040	Monday	2-for-1 Drafts and Well Drinks	5PM-8PM	1989
3041	Tuesday	2-for-1 Drafts and Well Drinks	5PM-8PM	1989
3042	Wednesday	2-for-1 Drafts and Well Drinks	5PM-8PM	1989
3043	Thursday	2-for-1 Drafts and Well Drinks	5PM-8PM	1989
3044	Friday	2-for-1 Drafts and Well Drinks	5PM-8PM	1989
3045	Saturday	None		1989
3046	Sunday	None		1992
3047	Monday	$6 Drink Specials; $3 Domestic Bottles; $4 Import/Craft Bottles; $3.50 Domestic Drafts; $4.50 Import/Craft Drafts; $6 Wine Specials; $9 House Martinis, Mojitos, Margaritas	4PM-8PM	1992
3048	Tuesday	$6 Drink Specials; $3 Domestic Bottles; $4 Import/Craft Bottles; $3.50 Domestic Drafts; $4.50 Import/Craft Drafts; $6 Wine Specials; $9 House Martinis, Mojitos, Margaritas	4PM-8PM	1992
3049	Wednesday	$6 Drink Specials; $3 Domestic Bottles; $4 Import/Craft Bottles; $3.50 Domestic Drafts; $4.50 Import/Craft Drafts; $6 Wine Specials; $9 House Martinis, Mojitos, Margaritas	4PM-8PM	1992
3050	Thursday	$6 Drink Specials; $3 Domestic Bottles; $4 Import/Craft Bottles; $3.50 Domestic Drafts; $4.50 Import/Craft Drafts; $6 Wine Specials; $9 House Martinis, Mojitos, Margaritas	4PM-8PM	1992
3051	Friday	$6 Drink Specials; $3 Domestic Bottles; $4 Import/Craft Bottles; $3.50 Domestic Drafts; $4.50 Import/Craft Drafts; $6 Wine Specials; $9 House Martinis, Mojitos, Margaritas	4PM-8PM	1992
3052	Saturday	None		1992
3053	Sunday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	1PM-11PM	1997
3054	Monday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	4PM-7PM	1997
3055	Tuesday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	4PM-7PM	1997
3056	Wednesday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	4PM-7PM	1997
3057	Thursday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	4PM-7PM	1997
3058	Friday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	4PM-7PM	1997
3059	Saturday	$7 Red and White, Somm's Selection; $5 Selected Craft Beers; $8 Aperol Spritz; $1 Oysters; $5 Somm Frites	4PM-7PM	1997
3060	Sunday	$1 Off Everything	6PM-9PM	2003
3061	Monday	$1 Off Everything	6PM-9PM	2003
3062	Tuesday	$1 Off Everything	6PM-9PM	2003
3063	Wednesday	$1 Off Everything	6PM-9PM	2003
3064	Thursday	$1 Off Everything	6PM-9PM	2003
3065	Friday	$1 Off Everything	6PM-9PM	2003
3066	Saturday	$1 Off Everything	6PM-9PM	2003
3067	Sunday	$4 Drafts; $4 Well Drinks	1AM-4AM	2004
3068	Monday	$4 Drafts; $4 Well Drinks	4PM-8PM, 1AM-4AM	2004
3069	Tuesday	$4 Drafts; $4 Well Drinks	4PM-8PM, 1AM-4AM	2004
3070	Wednesday	$4 Drafts; $4 Well Drinks	4PM-8PM, 1AM-4AM	2004
3071	Thursday	$4 Drafts; $4 Well Drinks	4PM-8PM, 1AM-4AM	2004
3072	Friday	$4 Drafts; $4 Well Drinks	4PM-8PM	2004
3073	Saturday	None		2004
3074	Sunday	Complimentary Glass of Wine, Mimosa, Bloody Mary, Screwdriver or Juice Served with Each Plate	12PM-5PM	2008
3075	Monday	$2 Off Everything	4PM-8PM	2008
3076	Tuesday	$2 Off Everything	4PM-8PM	2008
3077	Wednesday	$2 Off Everything	4PM-8PM	2008
3078	Thursday	$2 Off Everything	4PM-8PM	2008
3079	Friday	$2 Off Everything	4PM-8PM	2008
3080	Saturday	Complimentary Glass of Wine, Mimosa, Bloody Mary, Screwdriver or Juice Served with Each Plate	12PM-5PM	2008
3081	Sunday	None		2009
3082	Monday	$4 Miller/Coors; $5 Wells; $6 Wine & Frozen Drinks; $5 Bar Bites	5PM-8PM	2009
3083	Tuesday	$4 Miller/Coors; $5 Wells; $6 Wine & Frozen Drinks; $5 Bar Bites	5PM-8PM	2009
3084	Wednesday	$4 Miller/Coors; $5 Wells; $6 Wine & Frozen Drinks; $5 Bar Bites	5PM-8PM	2009
3085	Thursday	$4 Miller/Coors; $5 Wells; $6 Wine & Frozen Drinks; $5 Bar Bites	5PM-8PM	2009
3086	Friday	$4 Miller/Coors; $5 Wells; $6 Wine & Frozen Drinks; $5 Bar Bites	5PM-8PM	2009
3087	Saturday	None		2009
3088	Sunday	None		2017
3089	Monday	2 for 1 Beer	5PM-7PM	2017
3090	Tuesday	2 for 1 Beer	5PM-7PM	2017
3093	Friday	2 for 1 Beer	5PM-7PM	2017
3096	Monday	$4 and $5 Craft Drafts	11AM-7PM	2029
3097	Tuesday	$4 and $5 Craft Drafts	11AM-7PM	2029
3098	Wednesday	$4 and $5 Craft Drafts	11AM-7PM	2029
3099	Thursday	$4 and $5 Craft Drafts	11AM-7PM	2029
3100	Friday	$4 and $5 Craft Drafts	11AM-7PM	2029
3101	Saturday	None		2029
3102	Sunday	30% Off Karaoke & Drinks	5PM-8PM	2030
3103	Monday	30% Off Karaoke & Drinks	5PM-8PM	2030
3104	Tuesday	30% Off Karaoke & Drinks	5PM-8PM	2030
3105	Wednesday	30% Off Karaoke & Drinks	5PM-8PM	2030
3106	Thursday	30% Off Karaoke & Drinks	5PM-8PM	2030
3107	Friday	None		2030
3108	Saturday	None		2030
3109	Sunday	None		2037
3110	Monday	None		2037
3111	Tuesday	None		2037
3112	Wednesday	None		2037
3113	Thursday	None		2037
3114	Friday	$5 Draft & Domestic Beers; $6 Red & White Wine; $7 Sangria; $7 Cosmos & Appletinis; 20 Wings for $10	11AM-7PM	2037
3115	Saturday	None		2037
3116	Sunday	None		2039
3117	Monday	$2 Off Mixed Drinks, Drafts and Select Wines; 25 Cent Wings	4PM-7PM	2039
3118	Tuesday	$2 Off Mixed Drinks, Drafts and Select Wines; Bottle of Wine and 2 Appetizers - $35	4PM-7PM	2039
3119	Wednesday	$2 Off Mixed Drinks, Drafts and Select Wines	4PM-7PM	2039
3120	Thursday	$2 Off Mixed Drinks, Drafts and Select Wines	4PM-7PM	2039
3121	Friday	$2 Off Mixed Drinks, Drafts and Select Wines	4PM-7PM	2039
3122	Saturday	None		2039
3123	Sunday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3124	Monday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3125	Tuesday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3126	Wednesday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3127	Thursday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3128	Friday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3129	Saturday	$6 Select Wine, Craft Beer, and Spirits - Mixed, On the Rocks, or Neat	4PM-7PM	2040
3130	Sunday	Drink Specials	2PM-8PM	2041
3131	Monday	Two-For-One Beer, Wine & Well	2PM-8PM	2041
3132	Tuesday	Two-For-One Beer, Wine & Well	2PM-8PM	2041
3133	Wednesday	Two-For-One Beer, Wine & Well	2PM-8PM	2041
3134	Thursday	Two-For-One Beer, Wine & Well	2PM-8PM	2041
3135	Friday	Two-For-One Beer, Wine & Well	2PM-8PM	2041
3136	Saturday	Drink Specials	2PM-8PM	2041
3137	Sunday	None		2043
3138	Monday	None		2043
3139	Tuesday	None		2043
3140	Wednesday	Free Taster of Stout	All Night	2043
3141	Thursday	None		2043
3142	Friday	None		2043
3143	Saturday	None		2043
3144	Sunday	All Beer 1/2 Price	11:30AM-Close	2048
3145	Monday	Whole Bar 1/2 Price (11:30-7pm); $1 Drafts; $8 Pitchers; $4 Stella and Sam Light Bottles (7pm-Close)	11:30AM-7PM;7PM-Close	2048
3146	Tuesday	Whole Bar 1/2 Price (11:30-7pm); $4 You Call It: Mixed Drinks, Drafts, Bottles, & Shots (7pm-Close)	11:30AM-7PM;7PM-Close	2048
3147	Wednesday	Whole Bar 1/2 Price (11:30-7pm); Ladies Night: $2 Pints; $8 and $12 Pitchers; $3 Shots of Soco Lime & Lemon Drops for Everyone (7pm-Close)	11:30AM-7PM;7PM-Close	2048
3148	Thursday	Whole Bar 1/2 Price (11:30-7pm); $12 Domestic Buckets of Beer (5) and 1/2 Price Bombs (7pm-Close)	11:30AM-7PM;7PM-Close	2048
3149	Friday	Whole Bar 1/2 Price	11:30AM-7PM	2048
3150	Saturday	Whole Bar 1/2 Price	11:30AM-7PM	2048
3151	Sunday	None		2056
3152	Monday	50% Off Specials - Features Different Draft and Bottled Beer, Signature Cocktail, Wine, Shot, and Two Appetizers Each Week	4PM-8PM	2056
3153	Tuesday	50% Off Specials - Features Different Draft and Bottled Beer, Signature Cocktail, Wine, Shot, and Two Appetizers Each Week	4PM-8PM	2056
3154	Wednesday	50% Off Specials - Features Different Draft and Bottled Beer, Signature Cocktail, Wine, Shot, and Two Appetizers Each Week	4PM-8PM	2056
3155	Thursday	50% Off Specials - Features Different Draft and Bottled Beer, Signature Cocktail, Wine, Shot, and Two Appetizers Each Week	4PM-8PM	2056
3156	Friday	50% Off Specials - Features Different Draft and Bottled Beer, Signature Cocktail, Wine, Shot, and Two Appetizers Each Week	4PM-8PM	2056
3157	Saturday	None		2056
3158	Sunday	Sunday Brunch with Complimentary Mimosa or Bloody Mary $18	11AM-3PM	2057
3159	Monday	Drink Specials & Half Off Entire Bar Menu	3PM-7PM	2057
3160	Tuesday	Drink Specials & Half Off Entire Bar Menu	3PM-7PM	2057
3161	Wednesday	Drink Specials & Half Off Entire Bar Menu; 50% Off All Bottled Wines	3PM-7PM	2057
3162	Thursday	Drink Specials & Half Off Entire Bar Menu	3PM-7PM	2057
3163	Friday	Drink Specials & Half Off Entire Bar Menu	3PM-7PM	2057
3164	Saturday	None		2057
3165	Sunday	Oyster & Cocktail Happy Hour	4PM-7:30PM	2058
3166	Monday	Oyster & Cocktail Happy Hour	5:30PM-7:30PM	2058
3167	Tuesday	Oyster & Cocktail Happy Hour	5:30PM-7:30PM	2058
3168	Wednesday	Oyster & Cocktail Happy Hour	5:30PM-7:30PM	2058
3169	Thursday	Oyster & Cocktail Happy Hour	5:30PM-7:30PM	2058
3170	Friday	Oyster & Cocktail Happy Hour	5:30PM-7:30PM	2058
3171	Saturday	Oyster & Cocktail Happy Hour	4PM-7:30PM	2058
3172	Sunday	None		2064
3173	Monday	Happy Hour Specials	5PM-7PM	2064
3174	Tuesday	Happy Hour Specials	5PM-7PM	2064
3175	Wednesday	Happy Hour Specials	5PM-7PM	2064
3176	Thursday	Happy Hour Specials	5PM-7PM	2064
3177	Friday	Happy Hour Specials	5PM-7PM	2064
3178	Saturday	None		2064
3179	Sunday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3180	Monday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3181	Tuesday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3182	Wednesday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3183	Thursday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3184	Friday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3185	Saturday	$6 Cocktails; $5 Beers; $5 House Wines (Red & White)	4PM-8PM	2065
3186	Sunday	SambaHour - $5 Select Beer; $6 Specialty Drinks; $6 Wines and Sake; $6 Apps, Shrimp Tempura Rolls, Spicy Tuna Rolls	4PM-7PM;11PM-Close	2069
3187	Monday	SambaHour - $5 Select Beer; $6 Specialty Drinks; $6 Wines and Sake; $6 Apps, Shrimp Tempura Rolls, Spicy Tuna Rolls	4PM-7PM;11PM-Close	2069
3188	Tuesday	SambaHour - $5 Select Beer; $6 Specialty Drinks; $6 Wines and Sake; $6 Apps, Shrimp Tempura Rolls, Spicy Tuna Rolls	4PM-7PM;11PM-Close	2069
3189	Wednesday	SambaHour - $5 Select Beer; $6 Specialty Drinks; $6 Wines and Sake; $6 Apps, Shrimp Tempura Rolls, Spicy Tuna Rolls	4PM-7PM;11PM-Close	2069
3190	Thursday	SambaHour - $5 Select Beer; $6 Specialty Drinks; $6 Wines and Sake; $6 Apps, Shrimp Tempura Rolls, Spicy Tuna Rolls	4PM-7PM;11PM-Close	2069
3191	Friday	SambaHour - $5 Select Beer; $6 Specialty Drinks; $6 Wines and Sake; $6 Apps, Shrimp Tempura Rolls, Spicy Tuna Rolls	4PM-7PM;11PM-Close	2069
3192	Saturday	None		2069
3193	Sunday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3194	Monday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3195	Tuesday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3196	Wednesday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3197	Thursday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3198	Friday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3199	Saturday	$1 Off Beers; $6 Wines and Wells; $8 Jargaritas	2PM-7PM	2072
3200	Sunday	Brunch Happy Hour - $4 Beers; $6 Brunch Cocktails	11AM-4:30PM	2073
3201	Monday	$4 Beers; $5 Mixed Drinks; $6 Wines and Select Cocktails	4PM-7PM	2073
3202	Tuesday	$4 Beers; $5 Mixed Drinks; $6 Wines and Select Cocktails	4PM-7PM	2073
3203	Wednesday	$4 Beers; $5 Mixed Drinks; $6 Wines and Select Cocktails	4PM-7PM	2073
3204	Thursday	$4 Beers; $5 Mixed Drinks; $6 Wines and Select Cocktails	4PM-7PM	2073
3205	Friday	$4 Beers; $5 Mixed Drinks; $6 Wines and Select Cocktails	4PM-7PM	2073
3206	Saturday	Brunch Happy Hour - $4 Beers; $6 Brunch Cocktails	11AM-4:30PM	2073
3207	Sunday	None		2075
3208	Monday	$1 Off Beer and Well Liquors	5PM-8PM	2075
3209	Tuesday	$1 Off Beer and Well Liquors	5PM-8PM	2075
3210	Wednesday	$1 Off Beer and Well Liquors	5PM-8PM	2075
3211	Thursday	$1 Off Beer and Well Liquors	5PM-8PM	2075
3212	Friday	$1 Off Beer and Well Liquors	5PM-8PM	2075
3213	Saturday	None		2075
3214	Sunday	None		2078
3215	Monday	None		2078
3216	Tuesday	Oysters and Guinness - $12 For a Pint and a Half Dozen	5PM-12AM	2078
3217	Wednesday	None		2078
3218	Thursday	None		2078
3219	Friday	None		2078
3220	Saturday	None		2078
3221	Sunday	8 Small Plates, Sangria, Specialty Cocktails, Shots, Beer Specials, Wine Specials, etc.	3PM-7PM	2088
3222	Monday	8 Small Plates, Sangria, Specialty Cocktails, Shots, Beer Specials, Wine Specials, etc.	3PM-7PM	2088
3223	Tuesday	8 Small Plates, Sangria, Specialty Cocktails, Shots, Beer Specials, Wine Specials, etc.	3PM-7PM	2088
3224	Wednesday	8 Small Plates, Sangria, Specialty Cocktails, Shots, Beer Specials, Wine Specials, etc.	3PM-7PM	2088
3225	Thursday	8 Small Plates, Sangria, Specialty Cocktails, Shots, Beer Specials, Wine Specials, etc.	3PM-7PM	2088
3226	Friday	None		2088
3227	Saturday	None		2088
3228	Sunday	None		2096
3229	Monday	Rotating Selection of Discounted Glasses of Wine From $6-$9; $1 East Coast Oysters; $4 Veal & Ricotta Meatballs	5PM-7PM	2096
3230	Tuesday	Rotating Selection of Discounted Glasses of Wine From $6-$9; $1 East Coast Oysters; $4 Veal & Ricotta Meatballs	5PM-7PM	2096
3231	Wednesday	Rotating Selection of Discounted Glasses of Wine From $6-$9; $1 East Coast Oysters; $4 Veal & Ricotta Meatballs	5PM-7PM	2096
3232	Thursday	Rotating Selection of Discounted Glasses of Wine From $6-$9; $1 East Coast Oysters; $4 Veal & Ricotta Meatballs	5PM-7PM	2096
3233	Friday	Rotating Selection of Discounted Glasses of Wine From $6-$9; $1 East Coast Oysters; $4 Veal & Ricotta Meatballs	5PM-7PM	2096
3234	Saturday	Rotating Selection of Discounted Glasses of Wine From $6-$9; $1 East Coast Oysters; $4 Veal & Ricotta Meatballs	5PM-7PM	2096
3235	Sunday	$3 Brunch Cocktails	11AM-3PM	2103
3236	Monday	$4 Beers; $5 Wines, Martinis and Margaritas; $2 Off Pitchers; $1 Off All Bottles and Select Liquors; $1 Sliders; $2 Mini Pizzas	12PM-8PM	2103
3237	Tuesday	$4 Beers; $5 Wines, Martinis and Margaritas; $2 Off Pitchers; $1 Off All Bottles and Select Liquors; $1 Sliders; $2 Mini Pizzas	12PM-8PM	2103
3238	Wednesday	$4 Beers; $5 Wines, Martinis and Margaritas; $2 Off Pitchers; $1 Off All Bottles and Select Liquors; $1 Sliders; $2 Mini Pizzas	12PM-8PM	2103
3239	Thursday	$4 Beers; $5 Wines, Martinis and Margaritas; $2 Off Pitchers; $1 Off All Bottles and Select Liquors; $1 Sliders; $2 Mini Pizzas	12PM-8PM	2103
3240	Friday	$4 Beers; $5 Wines, Martinis and Margaritas; $2 Off Pitchers; $1 Off All Bottles and Select Liquors; $1 Sliders; $2 Mini Pizzas	12PM-8PM	2103
3241	Saturday	$3 Brunch Cocktails	11AM-3PM	2103
3242	Sunday	$4 Well Drinks; 1/2 Priced Pizzas	10PM-10:30PM	2104
3243	Monday	1/2 Priced Martinis; $4 Craft Beers and Bottles	4PM-6:30PM	2104
3244	Tuesday	1/2 Priced Martinis; $4 Craft Beers and Bottles	4PM-6:30PM	2104
3245	Wednesday	1/2 Priced Martinis; $4 Craft Beers and Bottles	4PM-6:30PM	2104
3246	Thursday	1/2 Priced Martinis; $4 Craft Beers and Bottles	4PM-1AM	2104
3247	Friday	1/2 Priced Martinis; $4 Craft Beers and Bottles	4PM-6:30PM	2104
3248	Saturday	None		2104
3249	Sunday	Boozy Brunch Followed by Sunday "SUPER" BYOB or BYOP Starting at $8 (Build You Own Burger or Pizza)	All Day	2107
3250	Monday	$6 Craft Selection; $6 Mixed Drinks; $7 Wines; $5 Tater Tots; $5 Fried Pickles; $6 Mozzarella Sticks; $6 Shrimp Puppies; $8 Margherita Flatbread	11AM-7PM	2107
3251	Tuesday	$6 Craft Selection; $6 Mixed Drinks; $7 Wines; $5 Tater Tots; $5 Fried Pickles; $6 Mozzarella Sticks; $6 Shrimp Puppies; $8 Margherita Flatbread	11AM-7PM	2107
3252	Wednesday	$6 Craft Selection; $6 Mixed Drinks; $7 Wines; $5 Tater Tots; $5 Fried Pickles; $6 Mozzarella Sticks; $6 Shrimp Puppies; $8 Margherita Flatbread	11AM-7PM	2107
3253	Thursday	$6 Craft Selection; $6 Mixed Drinks; $7 Wines; $5 Tater Tots; $5 Fried Pickles; $6 Mozzarella Sticks; $6 Shrimp Puppies; $8 Margherita Flatbread	11AM-7PM	2107
3254	Friday	$6 Craft Selection; $6 Mixed Drinks; $7 Wines; $5 Tater Tots; $5 Fried Pickles; $6 Mozzarella Sticks; $6 Shrimp Puppies; $8 Margherita Flatbread	11AM-7PM	2107
3255	Saturday	Boozy Brunch, Buy An Entree Plus $25 for 2 Hrs of Brunch Cocktails and  Taproom House Lager	All Day	2107
3256	Sunday	Bottomless Brunch	11AM-3PM	2117
3257	Monday	$5 Select Beer, Cocktail, and Wine	12PM-5PM	2117
3258	Tuesday	$5 Select Beer, Cocktail, and Wine	12PM-5PM	2117
3259	Wednesday	$5 Select Beer, Cocktail, and Wine	12PM-5PM	2117
3260	Thursday	$5 Select Beer, Cocktail, and Wine	12PM-5PM	2117
3261	Friday	$5 Select Beer, Cocktail, and Wine	12PM-5PM	2117
3262	Saturday	Bottomless Brunch	11AM-3PM	2117
3263	Sunday	None		2119
3264	Monday	$3 Tecate & Yuengling Draft; $5 Well Drinks, Wine & Margarita	9PM-10PM	2119
3265	Tuesday	None		2119
3266	Wednesday	$3 Tecate & Yuengling Draft; $5 Well Drinks, Wine & Margarita	6PM-9PM	2119
3267	Thursday	$3 Tecate & Yuengling Draft; $5 Well Drinks, Wine & Margarita	6PM-9PM	2119
3268	Friday	None		2119
3269	Saturday	None		2119
3270	Sunday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3271	Monday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3272	Tuesday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3273	Wednesday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3274	Thursday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3275	Friday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3276	Saturday	$7 Sangria; $7 Margarita; $7 Mountain Breeze; $7 Skippy Special; $7 Wine; $4 Select Beer; $4 Onion Rings; $8 Bison Nachos; $4 Chips; $5 Fried Green Beans; $5 BBQ Chicken Sliders; $5 Empire Sliders	3PM-7PM	2123
3277	Sunday	$1 Oysters; $15 Wine Carafes	3PM-7PM	2127
3278	Monday	$1 Oysters; $15 Wine Carafes	5PM-7PM	2127
3279	Tuesday	$1 Oysters; $15 Wine Carafes	5PM-7PM	2127
3280	Wednesday	$1 Oysters; $15 Wine Carafes	5PM-7PM	2127
3281	Thursday	$1 Oysters; $15 Wine Carafes	5PM-7PM	2127
3282	Friday	$1 Oysters; $15 Wine Carafes	5PM-7PM	2127
3283	Saturday	$1 Oysters; $15 Wine Carafes	3PM-7PM	2127
3284	Sunday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3285	Monday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3286	Tuesday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3287	Wednesday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3288	Thursday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3289	Friday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3290	Saturday	2-for-1 Per Person on ANY Beer, Wine, Cocktail, or Scotch	Noon-8PM	2128
3291	Sunday	None		2132
3292	Monday	$6 Glasses of Wine	5PM-6PM	2132
3293	Tuesday	$6 Glasses of Wine	5PM-6PM	2132
3294	Wednesday	$6 Glasses of Wine	5PM-6PM	2132
3295	Thursday	$6 Glasses of Wine	5PM-6PM	2132
3296	Friday	$6 Glasses of Wine	5PM-6PM	2132
3297	Saturday	None		2132
3298	Sunday	Half-Off Drinks	4PM-7PM	2141
3299	Monday	Half-Off Drinks	4PM-7PM	2141
3300	Tuesday	Half-Off Drinks	4PM-7PM	2141
3301	Wednesday	Half-Off Drinks	4PM-7PM	2141
3302	Thursday	Half-Off Drinks	4PM-7PM	2141
3303	Friday	Half-Off Drinks	4PM-7PM	2141
3304	Saturday	Half-Off Drinks	4PM-7PM	2141
3305	Sunday	$4 Select Domestic Drafts; $5 Well Drinks; $5 Shots	1PM-Close	2145
3306	Monday	$4 Select Domestic Drafts; $5 Well Drinks; $5 Shots; 25 Cent Wings (starting at 8pm) and $10 Bud Light/coors Light Pitchers	3PM-8PM	2145
3307	Tuesday	$4 Select Domestic Drafts; $5 Well Drinks; $5 Shots; $2 Tacos; $5 Margaritas	3PM-8PM;5PM-Close	2145
3308	Wednesday	Ladies Night: Half Price Appetizers; $4 Glasses of Wine; $4 Margaritas	5PM-Close	2145
3309	Thursday	$4 Drafts; $4 Mixed Drinks; $15 Sangria Pitchers	5PM-Close	2145
3310	Friday	$4 Select Domestic Drafts; $5 Well Drinks; $5 Shots (4pm-Close); Half Price Appetizers (5pm-8pm)	4PM-Close	2145
3311	Saturday	$4 Select Domestic Drafts; $5 Well Drinks; $5 Shots	1PM-Close	2145
3312	Sunday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3313	Monday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3314	Tuesday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3315	Wednesday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3316	Thursday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3317	Friday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3318	Saturday	$3-$4 Beers; $5 Martinis; $4 Cosmos and Frozen Drinks	5PM-8PM	2146
3319	Sunday	None		2159
3320	Monday	None		2159
3321	Tuesday	$1 Off Drinks	6PM-8PM	2159
3322	Wednesday	$1 Off Drinks	6PM-8PM	2159
3323	Thursday	None		2159
3324	Friday	None		2159
3325	Saturday	None		2159
3326	Sunday	$5 Drinks Specials - NFL Football Food and Drink Specials	4PM-7PM;11PM-1AM	2162
3327	Monday	$5 Drinks Specials - $10 Burgers	4PM-7PM;11PM-1AM	2162
3328	Tuesday	$5 Drinks Specials - $5 Margaritas and $6 Quesadillas	4PM-7PM;11PM-1AM	2162
3329	Wednesday	$5 Drinks Specials	4PM-7PM;11PM-1AM	2162
3330	Thursday	$5 Drinks Specials	4PM-7PM;11PM-1AM	2162
3331	Friday	$5 Drinks Specials	4PM-7PM;11PM-1AM	2162
3332	Saturday	$5 Drinks Specials	4PM-7PM;11PM-1AM	2162
3333	Sunday	None		2168
3334	Monday	$5 Drafts; $5 Red or White Sangria; $5 Wells	5PM-7PM	2168
3335	Tuesday	$5 Drafts; $5 Red or White Sangria; $5 Wells	5PM-7PM	2168
3336	Wednesday	$5 Drafts; $5 Red or White Sangria; $5 Wells	5PM-7PM	2168
3337	Thursday	$5 Drafts; $5 Red or White Sangria; $5 Wells	5PM-7PM	2168
3338	Friday	$5 Drafts; $5 Red or White Sangria; $5 Wells	5PM-7PM	2168
3339	Saturday	None		2168
3340	Sunday	None		2170
3341	Monday	$2 Off All Beers; $2 Off Selected Cocktails; $1 Off Everything Else; Complementary Bar Apps; 50% Off Select Apps	4PM-7PM	2170
3342	Tuesday	$2 Off All Beers; $2 Off Selected Cocktails; $1 Off Everything Else; Complementary Bar Apps; 50% Off Select Apps	4PM-7PM	2170
3343	Wednesday	$2 Off All Beers; $2 Off Selected Cocktails; $1 Off Everything Else; Complementary Bar Apps; 50% Off Select Apps	4PM-7PM	2170
3344	Thursday	$2 Off All Beers; $2 Off Selected Cocktails; $1 Off Everything Else; Complementary Bar Apps; 50% Off Select Apps	4PM-7PM	2170
3345	Friday	$2 Off All Beers; $2 Off Selected Cocktails; $1 Off Everything Else; Complementary Bar Apps; 50% Off Select Apps	4PM-7PM	2170
3346	Saturday	None		2170
3347	Sunday	None		2172
3348	Monday	$5 Drinks	4PM-8PM	2172
3349	Tuesday	$5 Drinks (4pm-8pm); 2-for-1 (8pm-12am)	4PM-8PM;8PM-12AM	2172
3350	Wednesday	$5 Drinks	4PM-8PM	2172
3351	Thursday	$5 Drinks	4PM-8PM	2172
3352	Friday	$5 Drinks	4PM-8PM	2172
3353	Saturday	None		2172
3354	Sunday	None		2173
3355	Monday	$7 Champagne Cocktails; $6 Cocktails; $5 Beer; $6 WInes; $6 Well Drinks (11am-5pm); $5 ALL  DRINKS (5pm-4am)	11AM-4AM	2173
3356	Tuesday	$7 Champagne Cocktails; $6 Cocktails; $5 Beer; $6 WInes; $6 Well Drinks	11AM-10PM	2173
3357	Wednesday	$7 Champagne Cocktails; $6 Cocktails; $5 Beer; $6 WInes; $6 Well Drinks	11AM-10PM	2173
3358	Thursday	$7 Champagne Cocktails; $6 Cocktails; $5 Beer; $6 WInes; $6 Well Drinks	11AM-8PM	2173
3359	Friday	$7 Champagne Cocktails; $6 Cocktails; $5 Beer; $6 WInes; $6 Well Drinks	11AM-10PM	2173
3360	Saturday	None		2173
3361	Sunday	None		2181
3362	Monday	$4 Beers; $5 Cocktails	3PM-6PM	2181
3363	Tuesday	$4 Beers; $5 Cocktails	3PM-6PM	2181
3364	Wednesday	$4 Beers; $5 Cocktails	3PM-6PM	2181
3365	Thursday	$4 Beers; $5 Cocktails	3PM-6PM	2181
3366	Friday	$4 Beers; $5 Cocktails	3PM-6PM	2181
3367	Saturday	None		2181
3368	Sunday	None		2182
3369	Monday	2 for 1 House Beer, Wine and Well Drinks - Bar Only, Not Tables	5PM-7PM	2182
3370	Tuesday	2 for 1 House Beer, Wine and Well Drinks - Bar Only, Not Tables	5PM-7PM	2182
3371	Wednesday	2 for 1 House Beer, Wine and Well Drinks - Bar Only, Not Tables	5PM-7PM	2182
3372	Thursday	2 for 1 House Beer, Wine and Well Drinks - Bar Only, Not Tables	5PM-7PM	2182
3373	Friday	2 for 1 House Beer, Wine and Well Drinks - Bar Only, Not Tables	5PM-7PM	2182
3374	Saturday	2 for 1 House Beer, Wine and Well Drinks - Bar Only, Not Tables	6PM-8PM	2182
3375	Sunday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	12PM-9PM	2186
3376	Monday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	5PM-9PM	2186
3377	Tuesday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	5PM-9PM	2186
3378	Wednesday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	5PM-9PM	2186
3379	Thursday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	5PM-9PM	2186
3380	Friday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	2PM-9PM	2186
3381	Saturday	All Drafts are $4; All Well Drinks are $5; $6 Special Cocktails	12PM-9PM	2186
3382	Sunday	None		2187
3383	Monday	$5 Drafts; $7 Wines; $8 Cosmos	4PM-7PM	2187
3384	Tuesday	$5 Drafts; $7 Wines; $8 Cosmos	4PM-7PM	2187
3385	Wednesday	$5 Drafts; $7 Wines; $8 Cosmos	4PM-7PM	2187
3386	Thursday	$5 Drafts; $7 Wines; $8 Cosmos	4PM-7PM	2187
3387	Friday	$5 Drafts; $7 Wines; $8 Cosmos	4PM-7PM	2187
3388	Saturday	None		2187
3389	Sunday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3448	Wednesday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	4PM-7PM	2207
3390	Monday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3391	Tuesday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3392	Wednesday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3393	Thursday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3394	Friday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3395	Saturday	$4 Sangria, Featured Red and White Wines, Beer and House Champagne; $4 Sfizi (Ricotta Crostini, Arancini, Polpette, Ravioli Fritti, Carciofi); $7 tre Favorites (Calamari, tre Burger)	5PM-7PM	2190
3396	Sunday	None		2194
3397	Monday	$10 Champagne; $5 Beers; $5 Wines; $7 Stoli Vodka; $5 Food - Vegetable Spring Rolls, Guacamole and Chips, Beef Sliders, Chicken Sliders and Veggie Sliders; $1.50 Oysters and a Half Shell	4PM-7PM	2194
3398	Tuesday	$10 Champagne; $5 Beers; $5 Wines; $7 Stoli Vodka; $5 Food - Vegetable Spring Rolls, Guacamole and Chips, Beef Sliders, Chicken Sliders and Veggie Sliders; $1.50 Oysters and a Half Shell	4PM-7PM	2194
3399	Wednesday	$10 Champagne; $5 Beers; $5 Wines; $7 Stoli Vodka; $5 Food - Vegetable Spring Rolls, Guacamole and Chips, Beef Sliders, Chicken Sliders and Veggie Sliders; $1.50 Oysters and a Half Shell	4PM-7PM	2194
3400	Thursday	$10 Champagne; $5 Beers; $5 Wines; $7 Stoli Vodka; $5 Food - Vegetable Spring Rolls, Guacamole and Chips, Beef Sliders, Chicken Sliders and Veggie Sliders; $1.50 Oysters and a Half Shell	4PM-7PM	2194
3401	Friday	$10 Champagne; $5 Beers; $5 Wines; $7 Stoli Vodka; $5 Food - Vegetable Spring Rolls, Guacamole and Chips, Beef Sliders, Chicken Sliders and Veggie Sliders; $1.50 Oysters and a Half Shell	4PM-7PM	2194
3402	Saturday	None		2194
3403	Sunday	None		2195
3404	Monday	50% Off Bar Menu; $6 Wines; $8 Specialty Cocktails; $5 Beers	5PM-7PM	2195
3405	Tuesday	50% Off Bar Menu; $6 Wines; $8 Specialty Cocktails; $5 Beers	5PM-7PM	2195
3406	Wednesday	50% Off Bar Menu; $6 Wines; $8 Specialty Cocktails; $5 Beers	5PM-7PM	2195
3407	Thursday	50% Off Bar Menu; $6 Wines; $8 Specialty Cocktails; $5 Beers	5PM-7PM	2195
3408	Friday	50% Off Bar Menu; $6 Wines; $8 Specialty Cocktails; $5 Beers	5PM-7PM	2195
3409	Saturday	None		2195
3410	Sunday	None		2196
3411	Monday	$4 Drafts	4PM-6PM	2196
3412	Tuesday	$4 Drafts	4PM-6PM	2196
3413	Wednesday	$4 Drafts	4PM-6PM	2196
3414	Thursday	$6 Stoli O-Bombs	3PM-11PM	2196
3415	Friday	$4 Drafts	4PM-6PM	2196
3416	Saturday	None		2196
3417	Sunday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3418	Monday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3419	Tuesday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3420	Wednesday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3421	Thursday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3422	Friday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3423	Saturday	$4 Bud Lite Tap; $5 Well Drinks; $4.50 White or Red Wine	4PM-8PM	2197
3424	Sunday	None		2200
3425	Monday	$4 Domestic Draft Beer; $6 Mixed Drinks	4PM-8PM	2200
3426	Tuesday	$4 Domestic Draft Beer; $6 Mixed Drinks	4PM-8PM	2200
3427	Wednesday	$4 Domestic Draft Beer; $6 Mixed Drinks; $6 Cosmos & Martinis (for the Ladies)	4PM-8PM	2200
3428	Thursday	$4 Domestic Draft Beer; $6 Mixed Drinks	4PM-8PM	2200
3429	Friday	$4 Domestic Draft Beer; $6 Mixed Drinks	4PM-8PM	2200
3430	Saturday	None		2200
3431	Sunday	$4 Draft Beers; $8 Quartinos of Wine	All Day	2201
3432	Monday	$4 Draft Beers; $8 Quartinos of Wine	4PM-8PM	2201
3433	Tuesday	$4 Draft Beers; $8 Quartinos of Wine	4PM-8PM	2201
3434	Wednesday	$4 Draft Beers; $8 Quartinos of Wine	4PM-8PM	2201
3435	Thursday	$4 Draft Beers; $8 Quartinos of Wine	4PM-8PM	2201
3436	Friday	$4 Draft Beers; $8 Quartinos of Wine	4PM-8PM	2201
3437	Saturday	$4 Draft Beers; $8 Quartinos of Wine	All Day	2201
3438	Sunday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	2PM-8PM	2202
3439	Monday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	4PM-8PM	2202
3440	Tuesday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	4PM-8PM	2202
3441	Wednesday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	4PM-8PM	2202
3442	Thursday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	4PM-8PM	2202
3443	Friday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	4PM-8PM	2202
3444	Saturday	$4 Wells, Drafts, and Wine; $5 Grilled Cheese, Cheese Burgers or Veggie Burgers; $5 Margaritas, Bloody Marys, and Sangria	2PM-8PM	2202
3445	Sunday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	12:30PM-7PM	2207
3446	Monday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	4PM-7PM	2207
3447	Tuesday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	4PM-7PM	2207
3527	Friday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3449	Thursday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	12PM-7PM	2207
3450	Friday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	12PM-7PM	2207
3451	Saturday	$4 Domestic Bottles; $5 Domestic Drafts; $6 Mixed Drinks; $6 Wine; $6 Premium Draft & Premium Bottles; Can & Shot Specials	12:30PM-7PM	2207
3452	Sunday	$20 All You Can Eat Wings; All You Can Drink Domestic Drafts (During EAGLES Season)	All Day	2209
3453	Monday	$3 Bud and Bud Light Drafts; $3 Well Mixed Drinks	5PM-Close	2209
3454	Tuesday	$2 PBR Cans;$3 Bud Cans;$4 American Bourbon Drinks; $4 Jack Honey Shots Specialty Drink Menu Served In Our Signature Mason Jars Live Music Starts at 9pm.	5PM-Close	2209
3455	Wednesday	$1 Beers; 50 Cent Wings; $1 Sliders; $10 Pitchers; $5 Patron and Jager Shots Till 1am!	5PM-1AM	2209
3456	Thursday	$5 at the Door Gets You 1/2 Price Drinks, Shots and Appetizers	6PM-9PM	2209
3457	Friday	$5 at the Door Gets You1/2 Price Top Shelf Mixed Drinks, Beer, Wine and Appetizers	6PM-9PM	2209
3458	Saturday	$20 Basic Open Bar	8PM-11PM	2209
3459	Sunday	$3 Select Pints	All Day	2211
3460	Monday	$3 Select Pints	All Day	2211
3461	Tuesday	$3 Select Pints	All Day	2211
3462	Wednesday	$3 Select Pints	All Day	2211
3463	Thursday	$3 Select Pints	All Day	2211
3464	Friday	$3 Select Pints	All Day	2211
3465	Saturday	$3 Select Pints	All Day	2211
3466	Sunday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-7PM	2214
3467	Monday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-8PM	2214
3468	Tuesday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-8PM	2214
3469	Wednesday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-8PM	2214
3470	Thursday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-8PM	2214
3471	Friday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-7PM	2214
3472	Saturday	Classic Margarita, Red or White Sangria, All Beers, Chardonnay or Merlot Wines	12PM-7PM	2214
3473	Sunday	None		2218
3474	Monday	$5 Glasses of Wine; $4 Beers; $6 Cocktails	5PM-9PM	2218
3475	Tuesday	$5 Glasses of Wine; $4 Beers; $6 Cocktails	5PM-9PM	2218
3476	Wednesday	$5 Glasses of Wine; $4 Beers; $6 Cocktails	5PM-9PM	2218
3477	Thursday	$5 Glasses of Wine; $4 Beers; $6 Cocktails	5PM-9PM	2218
3478	Friday	$5 Glasses of Wine; $4 Beers; $6 Cocktails	5PM-9PM	2218
3479	Saturday	None		2218
3480	Sunday	$25 Unlimited Feast Brunch (Includes Guinness, Bloody Mary or Mimosa)	11AM-3PM	2220
3481	Monday	Every Lobster $18.95	4PM-?	2220
3482	Tuesday	Tuesday Brewery Night - Try Selected Brew of the Month	5PM-7PM	2220
3483	Wednesday	Pint of Guinness and Half Dozen Oysters for $12	All Night	2220
3484	Thursday	None		2220
3485	Friday	None		2220
3486	Saturday	$5 Cocktails	11AM-5PM	2220
3487	Sunday	$1 Shots; $2 Coors Light Drafts; $3 Bloody Marys	All Day	2223
3488	Monday	2 for 1 Well Drinks and Wine; $2 Coors Light Drafts; $3 Stella, Blue Moon & Sam Adams Drafts	4PM-8PM	2223
3489	Tuesday	2 for 1 Well Drinks and Wine; $2 Coors Light Drafts; $3 Stella, Blue Moon & Sam Adams Drafts	4PM-8PM	2223
3490	Wednesday	2 for 1 Well Drinks and Wine; $2 Coors Light Drafts; $3 Stella, Blue Moon & Sam Adams Drafts	4PM-8PM	2223
3491	Thursday	2 for 1 Well Drinks and Wine; $2 Coors Light Drafts; $3 Stella, Blue Moon & Sam Adams Drafts	4PM-8PM	2223
3492	Friday	2 for 1 Well Drinks and Wine; $2 Coors Light Drafts; $3 Stella, Blue Moon & Sam Adams Drafts	4PM-8PM	2223
3493	Saturday	None		2223
3494	Sunday	None		2224
3495	Monday	None		2224
3496	Tuesday	None		2224
3497	Wednesday	None		2224
3498	Thursday	Two-for-One Cocktails	3PM-8PM	2224
3499	Friday	None		2224
3500	Saturday	None		2224
3501	Sunday	None		2226
3502	Monday	Various Specials	4PM-7PM	2226
3503	Tuesday	Various Specials	4PM-7PM	2226
3504	Wednesday	Various Specials	4PM-7PM	2226
3505	Thursday	Various Specials	4PM-7PM	2226
3506	Friday	Various Specials	4PM-7PM	2226
3507	Saturday	None		2226
3508	Sunday	None		2230
3509	Monday	$1 Off All Draft & Bottled Beer; $1 Off Wine; $1 Off Well Drinks	4PM-7PM	2230
3510	Tuesday	$1 Off All Draft & Bottled Beer; $1 Off Wine; $1 Off Well Drinks	4PM-7PM	2230
3511	Wednesday	$1 Off All Draft & Bottled Beer; $1 Off Wine; $1 Off Well Drinks	4PM-7PM	2230
3512	Thursday	$1 Off All Draft & Bottled Beer; $1 Off Wine; $1 Off Well Drinks	4PM-7PM	2230
3513	Friday	$1 Off All Draft & Bottled Beer; $1 Off Wine; $1 Off Well Drinks	4PM-7PM	2230
3514	Saturday	None		2230
3515	Sunday	$2 Off All Draft Beers, Wine and Appetizers	4PM-7PM	2238
3516	Monday	$2 Off All Draft Beers, Wine and Appetizers	2PM-7PM	2238
3517	Tuesday	$2 Off All Draft Beers, Wine and Appetizers	2PM-7PM	2238
3518	Wednesday	$2 Off All Draft Beers, Wine and Appetizers	2PM-7PM	2238
3519	Thursday	$2 Off All Draft Beers, Wine and Appetizers	2PM-7PM	2238
3520	Friday	$2 Off All Draft Beers, Wine and Appetizers	2PM-7PM	2238
3521	Saturday	$2 Off All Draft Beers, Wine and Appetizers	4PM-7PM	2238
3522	Sunday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3523	Monday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3524	Tuesday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3525	Wednesday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3526	Thursday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3528	Saturday	$3 Draft Beers; $3 Shots; $5 House Wines	All Night	2241
3529	Sunday	$3 Select Drafts; $6 Mixed Drinks; $6 House Wine	12PM-8PM	2249
3530	Monday	$5 Margaritas & Frozen Margaritas; $7 Patron & Don Julio Margaritas; 1/2 Price Nachos; 2-for-1 Apps	5PM-Close	2249
3531	Tuesday	2-for-1 Select Beers; 2-for-1 Mixed Drinks; $7 Patron Shots and Margaritas; 2-for-1 Burgers	5PM-Close	2249
3532	Wednesday	1/2 Price Drinks for Ladies; $4 Select Drafts; $10 Burger & Selected Beer	5PM-Close	2249
3533	Thursday	$4 Select Drafts; $5 Mixed Drinks; $6 Premium & Top Shelf Mixed Drinks	12PM-8PM	2249
3534	Friday	$4 Select Drafts; $5 Mixed Drinks; $6 Premium & Top Shelf Mixed Drinks	12PM-8PM	2249
3535	Saturday	$4 Select Drafts; $6 Mixed Drinks; $12 Pitchers	11AM-8PM	2249
3536	Sunday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM	2257
3537	Monday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM	2257
3538	Tuesday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM	2257
3539	Wednesday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM	2257
3540	Thursday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM	2257
3541	Friday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM;10PM-2AM	2257
3542	Saturday	Selected White and Red Wine $7; Oysters $1.50 Each at the Bar Only	4PM-7PM	2257
3543	Sunday	None		2258
3544	Monday	None		2258
3545	Tuesday	None		2258
3546	Wednesday	Ladies Half-Price Drinks	6PM-12AM	2258
3547	Thursday	None		2258
3548	Friday	None		2258
3549	Saturday	None		2258
3550	Sunday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3551	Monday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3552	Tuesday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3553	Wednesday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3554	Thursday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3555	Friday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3556	Saturday	$5 Hanoi Lychee Martinis, Sangrias, Vietnamese Bloody Marys; $5 House Red & White Wines; $5 Basic Cocktails; $3 Yuengling	5PM-10PM	2260
3557	Sunday	None		2261
3558	Monday	Free Panini with Purchase of a Glass of Wine or Drink	All Night	2261
3559	Tuesday	$5 Sangria	4PM-7PM	2261
3560	Wednesday	$5 Sangria	4PM-7PM	2261
3561	Thursday	$5 Sangria	4PM-7PM	2261
3562	Friday	$5 Sangria	4PM-7PM	2261
3563	Saturday	None		2261
3564	Sunday	1/2 Priced Drinks	4:30PM-8PM	2267
3565	Monday	1/2 Priced Drinks	4:30PM-8PM	2267
3566	Tuesday	1/2 Priced Drinks	4:30PM-8PM	2267
3567	Wednesday	1/2 Priced Drinks	4:30PM-8PM	2267
3568	Thursday	1/2 Priced Drinks	4:30PM-8PM	2267
3569	Friday	1/2 Priced Drinks	4:30PM-8PM	2267
3570	Saturday	1/2 Priced Drinks	4:30PM-8PM	2267
3571	Sunday	$4 Tap Beer; $5 Tap Wine	3PM-5PM	2288
3572	Monday	$4 Tap Beer; $5 Tap Wine	4PM-7PM	2288
3573	Tuesday	$4 Tap Beer; $5 Tap Wine	4PM-7PM	2288
3574	Wednesday	$4 Tap Beer; $5 Tap Wine	4PM-7PM	2288
3575	Thursday	$4 Tap Beer; $5 Tap Wine	4PM-7PM	2288
3576	Friday	$4 Tap Beer; $5 Tap Wine	4PM-7PM	2288
3577	Saturday	$4 Tap Beer; $5 Tap Wine	3PM-5PM	2288
3578	Sunday	$19 Chicken & Unlimited Beer (Selected Draft)	5PM-9PM	2293
3579	Monday	$19 Chicken & Unlimited Beer (Selected Draft)	5PM-9PM	2293
3580	Tuesday	$19 Chicken & Unlimited Beer (Selected Draft)	5PM-9PM	2293
3581	Wednesday	$19 Chicken & Unlimited Beer (Selected Draft)	5PM-9PM	2293
3582	Thursday	$0.25 Cent Korean Chicken Wings Special	5PM-Midnight	2293
3583	Friday	None		2293
3584	Saturday	None		2293
3585	Sunday	None		2307
3586	Monday	$7 Cocktails; $7 Margaritas; $4 Beers; $6 Wines; $1 Oysters; $5 Oyster Shooters	5PM-7PM	2307
3587	Tuesday	$7 Cocktails; $7 Margaritas; $4 Beers; $6 Wines; $1 Oysters; $5 Oyster Shooters	5PM-7PM	2307
3588	Wednesday	$7 Cocktails; $7 Margaritas; $4 Beers; $6 Wines; $1 Oysters; $5 Oyster Shooters	5PM-7PM	2307
3589	Thursday	$7 Cocktails; $7 Margaritas; $4 Beers; $6 Wines; $1 Oysters; $5 Oyster Shooters	5PM-7PM	2307
3590	Friday	$7 Cocktails; $7 Margaritas; $4 Beers; $6 Wines; $1 Oysters; $5 Oyster Shooters	5PM-7PM	2307
3591	Saturday	None		2307
3592	Sunday	None		2309
3593	Monday	$2 Buds; $2 Well Drinks; Free Snacks	3PM-9PM	2309
3594	Tuesday	$2 Buds; $2 Well Drinks; Free Snacks	3PM-9PM	2309
3595	Wednesday	$2 Buds; $2 Well Drinks; Free Snacks	3PM-9PM	2309
3596	Thursday	$2 Buds; $2 Well Drinks; Free Snacks	3PM-9PM	2309
3597	Friday	$2 Buds; $2 Well Drinks; Free Snacks	1PM-9PM	2309
3598	Saturday	$2 Buds; $2 Well Drinks; Free Snacks	1PM-9PM	2309
3599	Sunday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3600	Monday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3601	Tuesday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3602	Wednesday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3603	Thursday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3604	Friday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3605	Saturday	$3 Draft Beers; $4 Well Drinks; $4 Wines; $5 Cosmos and Apple Martinis	4PM-8PM	2311
3606	Sunday	None		2312
3607	Monday	$2 Off All Drinks	4PM-7PM	2312
3608	Tuesday	$2 Off All Drinks	4PM-7PM	2312
3609	Wednesday	$2 Off All Drinks	4PM-7PM	2312
3610	Thursday	$2 Off All Drinks	4PM-7PM	2312
3611	Friday	$2 Off All Drinks	4PM-7PM	2312
3612	Saturday	None		2312
3613	Sunday	None		2314
3614	Monday	$5 Bud Light, Sam Adams Boston Lager; $6 Pinot Grigio, Pinot Noir; $7 Seasonal Specialty Cocktails	4PM-7PM	2314
3615	Tuesday	$5 Bud Light, Sam Adams Boston Lager; $6 Pinot Grigio, Pinot Noir; $7 Seasonal Specialty Cocktails	4PM-7PM	2314
3616	Wednesday	$5 Bud Light, Sam Adams Boston Lager; $6 Pinot Grigio, Pinot Noir; $7 Seasonal Specialty Cocktails	4PM-7PM	2314
3617	Thursday	$5 Bud Light, Sam Adams Boston Lager; $6 Pinot Grigio, Pinot Noir; $7 Seasonal Specialty Cocktails	4PM-7PM	2314
3618	Friday	$5 Bud Light, Sam Adams Boston Lager; $6 Pinot Grigio, Pinot Noir; $7 Seasonal Specialty Cocktails	4PM-7PM	2314
3619	Saturday	None		2314
3620	Sunday	None		2316
3621	Monday	2-for-1 Drinks	4PM-7PM	2316
3622	Tuesday	2-for-1 Drinks	4PM-7PM	2316
3623	Wednesday	2-for-1 Drinks	4PM-7PM	2316
3624	Thursday	2-for-1 Drinks	4PM-7PM	2316
3625	Friday	2-for-1 Drinks	4PM-7PM	2316
3626	Saturday	None		2316
3627	Sunday	None		2318
3628	Monday	Happy Hour Specials	5PM-9PM	2318
3629	Tuesday	Happy Hour Specials	5PM-9PM	2318
3630	Wednesday	Happy Hour Specials	5PM-9PM	2318
3631	Thursday	Happy Hour Specials	5PM-9PM	2318
3632	Friday	Happy Hour Specials	5PM-9PM	2318
3633	Saturday	None		2318
3634	Sunday	None		2321
3635	Monday	Various Specials	4PM-8PM	2321
3636	Tuesday	Various Specials	4PM-8PM	2321
3637	Wednesday	None		2321
3638	Thursday	None		2321
3639	Friday	None		2321
3640	Saturday	None		2321
3641	Sunday	None		2324
3642	Monday	$1 Off Everything; $4 Off Pitchers	12PM-7PM	2324
3643	Tuesday	$1 Off Everything; $4 Off Pitchers	12PM-7PM	2324
3644	Wednesday	$1 Off Everything; $4 Off Pitchers	12PM-7PM	2324
3645	Thursday	$1 Off Everything; $4 Off Pitchers	12PM-7PM	2324
3646	Friday	$1 Off Everything; $4 Off Pitchers	12PM-7PM	2324
3647	Saturday	None		2324
3648	Sunday	None		2327
3649	Monday	$1 Off Domestic Beers; $6 Cosmos; $6 Apple Martinis; $12 Pitchers of Miller Lite	4PM-7PM	2327
3650	Tuesday	$1 Off Domestic Beers; $6 Cosmos; $6 Apple Martinis; $12 Pitchers of Miller Lite	4PM-7PM	2327
3651	Wednesday	$1 Off Domestic Beers; $6 Cosmos; $6 Apple Martinis; $12 Pitchers of Miller Lite	4PM-7PM	2327
3652	Thursday	$1 Off Domestic Beers; $6 Cosmos; $6 Apple Martinis; $12 Pitchers of Miller Lite	4PM-7PM	2327
3653	Friday	$1 Off Domestic Beers; $6 Cosmos; $6 Apple Martinis; $12 Pitchers of Miller Lite	4PM-7PM	2327
3654	Saturday	None		2327
3655	Sunday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-7PM	2328
3656	Monday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-5PM	2328
3657	Tuesday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-5PM	2328
3658	Wednesday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-5PM	2328
3659	Thursday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-5PM	2328
3660	Friday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-5PM	2328
3661	Saturday	$3 Bud Light Pints; $5 Shots: Jameson Picklebacks, Jager, & Fireball; $8 Patron Silver Shots; $8 Prosecco by the Glass; $10 Fresh Margaritas; $10 Sangria; $10 Moscow Mules	4PM-7PM	2328
3662	Sunday	$5 Sauza Margaritas; $5 Manhattans; $15 Pitchers of Sangria; $1 Off All Bottled Beer	All Night	2329
3663	Monday	$4.00 Well Drinks and Draughts; $15 Sangria Pitchers (60 Oz) Red or Rose	5PM-8PM	2329
3664	Tuesday	$4.00 Well Drinks and Draughts; $15 Sangria Pitchers (60 Oz) Red or Rose	5PM-8PM	2329
3665	Wednesday	$4.00 Well Drinks and Draughts; $15 Sangria Pitchers (60 Oz) Red or Rose	5PM-8PM	2329
3666	Thursday	$4.00 Well Drinks and Draughts; $15 Sangria Pitchers (60 Oz) Red or Rose	5PM-8PM	2329
3667	Friday	$4.00 Well Drinks and Draughts; $15 Sangria Pitchers (60 Oz) Red or Rose	5PM-8PM	2329
3668	Saturday	$4.00 Well Drinks and Draughts; $15 Sangria Pitchers (60 Oz) Red or Rose	5PM-8PM	2329
3669	Sunday	None		2333
3670	Monday	None		2333
3671	Tuesday	None		2333
3672	Wednesday	$6 Cheap Date Night	All NIght	2333
3673	Thursday	None		2333
3674	Friday	$4 Import & Craft Drafts; $5 Mixed Stoli Drinks	All Night	2333
3675	Saturday	None		2333
3676	Sunday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	12PM-4AM	2335
3677	Monday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	4PM-8PM	2335
3678	Tuesday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	4PM-8PM	2335
3679	Wednesday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	4PM-8PM	2335
3680	Thursday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	4PM-8PM	2335
3681	Friday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	4PM-8PM	2335
3682	Saturday	$5 Craft Beers; $6 Wines & Prosecco; $7 Artisanal Cocktails	12PM-6PM	2335
3683	Sunday	$9 Miller Light and Michelob Ultra Pitchers	12PM-9PM	2338
3684	Monday	$1 Miller Light Bottles; $3 Vodka & Cranberry; $3 Rum & Coke; $3 Tequila Shots; $7 Miller Light Pitchers; $7 Michelob Ultra Pitchers	All Day	2338
3685	Tuesday	$3 Vodka & Cranberry; $3 Rum & Coke; $3 Tequila Shots; $4 Frozen Margaritas; $7 Miller Light Pitchers; $7 Michelob Ultra Pitchers	3PM-9PM	2338
3686	Wednesday	$3 Vodka & Cranberry; $3 Rum & Coke; $3 Tequila Shots; $7 Miller Light and Michelob Ultra Pitchers	3PM-9PM	2338
3687	Thursday	$3 Vodka & Cranberry; $3 Rum & Coke; $3 Tequila Shots; $4 Frozen Margaritas; $7 Miller Light Pitchers; $7 Michelob Ultra Pitchers	3PM-9PM	2338
3688	Friday	$3 Vodka & Cranberry; $3 Rum & Coke; $3 Tequila Shots; $4 Frozen Margaritas; $7 Miller Light Pitchers; $7 Michelob Ultra Pitchers	3PM-9PM	2338
3689	Saturday	$3 Vodka & Cranberry; $3 Rum & Coke; $3 Tequila Shots; $4 Frozen Margaritas; $9 Miller Light and Michelob Ultra Pitchers	1PM-9PM	2338
3690	Sunday	All Brunch Cocktails $5 with Brunch	Noon-4PM	2340
3691	Monday	None		2340
3692	Tuesday	None		2340
3693	Wednesday	None		2340
3694	Thursday	None		2340
3695	Friday	None		2340
3696	Saturday	All Brunch Cocktails $5 with Brunch	Noon-4PM	2340
3697	Sunday	None		2341
3698	Monday	$2 Off Select Drafts & Wines - $5 Pours Of Whiskey	Open-7PM	2341
3699	Tuesday	$2 Off Select Drafts & Wines - $5 Pours Of Whiskey	Open-7PM	2341
3700	Wednesday	$2 Off Select Drafts & Wines - $5 Pours Of Whiskey	Open-7PM	2341
3701	Thursday	$2 Off Select Drafts & Wines - $5 Pours Of Whiskey	Open-7PM	2341
3702	Friday	$2 Off Select Drafts & Wines - $5 Pours Of Whiskey	Open-7PM	2341
3703	Saturday	None		2341
3704	Sunday	None		2342
3705	Monday	$5 Drinks	4PM-7PM	2342
3706	Tuesday	$5 Drinks	4PM-7PM	2342
3707	Wednesday	$5 Drinks	4PM-7PM	2342
3708	Thursday	$5 Drinks	4PM-7PM	2342
3709	Friday	$5 Drinks	4PM-7PM	2342
3710	Saturday	None		2342
3711	Sunday	None		2344
3712	Monday	$4 Pints of Molson & Bud Light; $5 Well Drinks; $7 Select Wine	3PM-7PM	2344
3713	Tuesday	$4 Pints of Molson & Bud Light; $5 Well Drinks; $7 Select Wine	3PM-7PM	2344
3714	Wednesday	$4 Pints of Molson & Bud Light; $5 Well Drinks; $7 Select Wine	3PM-7PM	2344
3715	Thursday	$4 Pints of Molson & Bud Light; $5 Well Drinks; $7 Select Wine	3PM-7PM	2344
3716	Friday	$4 Pints of Molson & Bud Light; $5 Well Drinks; $7 Select Wine	3PM-7PM	2344
3717	Saturday	None		2344
3718	Sunday	$20 Bottomless Brunch Cocktails 2hour Max; $20 Domestic Pitchers; $7 Well Drinks; $7 White and Red Wine	12PM-8PM	2346
3719	Monday	$4 Domestic Drafts; $5 Well, Wine, Prosecco, & Imported Drafts; $7 Select Speciality Cocktails	5PM-8PM	2346
3720	Tuesday	$4 Domestic Drafts; $5 Well, Wine, Prosecco, & Imported Drafts; $7 Select Speciality Cocktails	5PM-8PM	2346
3721	Wednesday	$4 Domestic Drafts; $5 Well, Wine, Prosecco, & Imported Drafts; $7 Select Speciality Cocktails	5PM-8PM	2346
3722	Thursday	$4 Domestic Drafts; $5 Well, Wine, Prosecco, & Imported Drafts; $7 Select Speciality Cocktails	5PM-8PM	2346
3723	Friday	$4 Domestic Drafts; $5 Well, Wine, Prosecco, & Imported Drafts; $7 Select Speciality Cocktails	5PM-8PM	2346
3724	Saturday	$20 Bottomless Brunch Cocktails 2hour Max; $20 Domestic Pitchers; $7 Well Drinks; $7 White and Red Wine	12PM-8PM	2346
3725	Sunday	None	4PM-7PM	2352
3726	Monday	$6 Beers; $7 Wines; $6 Cocktails	Noon-7PM	2352
3727	Tuesday	$6 Beers; $7 Wines; $6 Cocktails	Noon-7PM	2352
3728	Wednesday	$6 Beers; $7 Wines; $6 Cocktails	Noon-7PM	2352
3729	Thursday	$6 Beers; $7 Wines; $6 Cocktails	Noon-7PM	2352
3730	Friday	$6 Beers; $7 Wines; $6 Cocktails	Noon-7PM	2352
3731	Saturday	$6 Beers; $7 Wines; $6 Cocktails	Noon-7PM	2352
3732	Sunday	None		2354
3733	Monday	$5 Drafts (Except Guinness and Duvel); $5 Chardonnay; $7 Specialty Gin and Tonic; $7 Specialty Cocktail	12PM-7PM	2354
3734	Tuesday	$5 Drafts (Except Guinness and Duvel); $5 Chardonnay; $7 Specialty Gin and Tonic; $7 Specialty Cocktail	12PM-7PM	2354
3735	Wednesday	$5 Drafts (Except Guinness and Duvel); $5 Chardonnay; $7 Specialty Gin and Tonic; $7 Specialty Cocktail	12PM-7PM	2354
3736	Thursday	$5 Drafts (Except Guinness and Duvel); $5 Chardonnay; $7 Specialty Gin and Tonic; $7 Specialty Cocktail	12PM-7PM	2354
3737	Friday	$5 Drafts (Except Guinness and Duvel); $5 Chardonnay; $7 Specialty Gin and Tonic; $7 Specialty Cocktail	12PM-7PM	2354
3738	Saturday	None		2354
3739	Sunday	Various Specials	6PM-8PM	2355
3740	Monday	Various Specials	6PM-8PM	2355
3741	Tuesday	Various Specials	6PM-8PM	2355
3742	Wednesday	Various Specials	6PM-8PM	2355
3743	Thursday	Various Specials	6PM-8PM	2355
3744	Friday	Various Specials	6PM-8PM	2355
3745	Saturday	Various Specials	6PM-8PM	2355
3746	Sunday	None		2356
3747	Monday	$3 Bud Light & Yuengling	All Day	2356
3748	Tuesday	$3 Bud Light & Yuengling	All Day	2356
3749	Wednesday	$3 Bud Light & Yuengling	All Day	2356
3750	Thursday	$3 Bud Light & Yuengling	All Day	2356
3751	Friday	$3 Bud Light & Yuengling	All Day	2356
3752	Saturday	None		2356
3753	Sunday	$5 Well Drinks, House Wines, Select Draft Beers	11PM-Close	2359
3754	Monday	$5 Well Drinks, House Wines, Select Draft Beers	4PM-8PM;11PM-Close	2359
3755	Tuesday	$5 Well Drinks, House Wines, Select Draft Beers	4PM-8PM;11PM-Close	2359
3756	Wednesday	$5 Well Drinks, House Wines, Select Draft Beers	4PM-8PM;11PM-Close	2359
3757	Thursday	$5 Well Drinks, House Wines, Select Draft Beers	4PM-8PM;11PM-Close	2359
3758	Friday	$5 Well Drinks, House Wines, Select Draft Beers	4PM-8PM;11PM-Close	2359
3759	Saturday	$5 Well Drinks, House Wines, Select Draft Beers	11PM-Close	2359
3760	Sunday	None		2361
3761	Monday	$4 Wells; $4 Drafts	4PM-7PM	2361
3762	Tuesday	$4 Wells; $4 Drafts	4PM-7PM	2361
3763	Wednesday	$4 Wells; $4 Drafts	4PM-7PM	2361
3764	Thursday	$4 Wells; $4 Drafts	4PM-7PM	2361
3765	Friday	$4 Wells; $4 Drafts	4PM-7PM	2361
3766	Saturday	None		2361
3767	Sunday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	Noon-9PM	2362
3768	Monday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	1PM-7PM	2362
3769	Tuesday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	1PM-7PM	2362
3770	Wednesday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	1PM-7PM	2362
3771	Thursday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	1PM-7PM	2362
3772	Friday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	1PM-7PM	2362
3773	Saturday	$3.75 Domestic Bottled Beer; $4.50 Well Drinks; $12.50 Bucket of Yuengling	Noon-9PM	2362
3774	Sunday	$5 Wells; $5 Beers	6PM-8PM	2367
3775	Monday	$5 Wells; $5 Beers	6PM-8PM	2367
3776	Tuesday	$5 Wells; $5 Beers	6PM-8PM	2367
3777	Wednesday	$5 Wells; $5 Beers	6PM-8PM	2367
3778	Thursday	$5 Wells; $5 Beers	6PM-8PM	2367
3779	Friday	$5 Wells; $5 Beers	6PM-8PM	2367
3780	Saturday	$5 Wells; $5 Beers	6PM-8PM	2367
3781	Sunday	None		2387
3782	Monday	Various Specials	5PM-7PM	2387
3783	Tuesday	Various Specials	5PM-7PM	2387
3784	Wednesday	Various Specials	5PM-7PM	2387
3785	Thursday	Various Specials	5PM-7PM	2387
3786	Friday	Various Specials	5PM-7PM	2387
3787	Saturday	None		2387
\.


--
-- Data for Name: venues; Type: TABLE DATA; Schema: public; Owner: flatironschool
--

COPY venues (id, venue_name, rating, address, state, city, zipcode, phone_number, neighborhood, latitude, longitude) FROM stdin;
1	1020 Bar	\N	1020 Amsterdam Ave.	NY	New York	10025	(212) 531-3468	Manhattan Valley	40.803264200000001	-73.9639641999999924
2	11th Street Bar	\N	510 E 11th St.	NY	New York	10009	(212) 982-3929	East Village	40.7280395000000013	-73.9812577000000005
3	121 Fulton Street	\N	121 Fulton St.	NY	New York	10038	(646) 545-6647	Financial District	40.7101431999999974	-74.0070012999999989
4	123 Burger Shot Beer	\N	738 10th Ave.	NY	New York	10019	(212) 315-0123	Hell's Kitchen	40.7647931000000128	-73.9914270000000016
5	124 Old Rabbit Club	\N	124  MacDougal St.	NY	New York	10012	(212) 254-0575	Greenwich Village	40.7299197000000035	-74.0002676999999949
6	The 13th Step	\N	149 2nd Ave.	NY	New York	10003	(212) 228-8020	East Village	40.7295362999999995	-73.9874138999999929
7	169 Bar	\N	169 East Broadway	NY	New York	10002	(646) 833-7199	Lower East Side	40.7138380000000026	-73.9897599999999898
8	1742 Wine Bar	\N	1742 2nd Ave.	NY	New York	10128	(212) 427-1010	Upper East Side	40.7807308000000006	-73.9493252999999982
9	181 Cabrini	\N	854 W 181st St.	NY	New York	10033	(212) 923-2233	Washington Heights	40.8511133000000015	-73.940035899999998
10	200 Fifth	\N	200 5th Ave.	NY	Brooklyn	11217	(718) 638-2925	Park Slope	40.6768114999999995	-73.9804620000000028
11	21 Club	\N	21 W 52nd St.	NY	New York	10019	(212) 582-7200	Midtown West	40.7604522000000031	-73.9774393999999944
12	212 Hisae's	\N	212 E 9th St.	NY	New York	10003	(212) 614-3226	East Village	40.729659599999998	-73.9887681000000015
13	230 Fifth	\N	230 Fifth Ave.	NY	New York	10001	(212) 725-4300	Flatiron	40.7441381999999876	-73.9884258999999957
14	280 Cafe & Lounge	\N	280 Knickerbocker Ave.	NY	Brooklyn	11237	(718) 366-2002	Bushwick	40.7018780000000007	-73.9242629999999963
15	2A	\N	25 Ave. A	NY	New York	10009	(212) 505-2466	East Village	40.7230068000000074	-73.986056099999999
16	3 Sheets Saloon	\N	134 W 3rd St.	NY	New York	10012	(212) 777-1733	Greenwich Village	40.7306716000000009	-74.0010379
17	40/40 Club	\N	6 W 25th St.	NY	New York	10010	(212) 832-4040	Flatiron	40.7430506999999977	-73.9896940000000001
18	42nd Street Pizza	\N	647 W 42nd St.	NY	New York	10036	(212) 594-4312	Midtown West	40.7619012999999981	-74.0001592999999929
19	43 Bar & Grill	\N	4306 43rd St.	NY	Sunnyside	11104	(718) 361-3090	Sunnyside	40.7449065000000132	-73.9213840999999974
20	44 & X	\N	622 10th Ave.	NY	New York	10036	(212) 977-1170	Hell's Kitchen	40.7609890000000021	-73.9942259999999976
21	48 Lounge	\N	1221 Ave. Of The Americas	NY	New York	10020	(212) 554-4848	Theater District	40.7594247999999979	-73.9822223999999977
22	49 Grove	\N	49 Grove St.	NY	New York	10014	(212) 727-1100	West Village	40.7330978999999971	-74.0037691999999936
23	4th Avenue Pub	\N	76 4th Ave.	NY	Brooklyn	11217	(718) 643-2273	Park Slope	40.682302	-73.9800719999999927
24	4th Down	\N	750 Grand St.	NY	Brooklyn	11211	(917) 744-6522	Williamsburg	40.7114785999999995	-73.9431311000000022
25	5 Bar Karaoke Lounge	\N	38 W 32nd St.	NY	New York	10016	(212) 594-6644	Koreatown	40.7477712000000025	-73.9874152000000009
26	5 Burro Cafe	\N	72-05 Austin St.	NY	Forest Hills	11375	(718) 544-2984	Forest Hills	40.7193534000000028	-73.8423707000000036
27	5 Napkin Burger	\N	630 9th Ave.	NY	New York	10036	(212) 757-2277	Hell's Kitchen	40.7599158000000017	-73.9911491000000012
28	The 55 Bar	\N	55 Christopher St.	NY	New York	10001	(212) 929-9883	West Village	40.7338340000000017	-74.0022551999999934
29	5th & Mad	\N	7 E 36th St.	NY	New York	10016	(212) 725-2353	Midtown East	40.7496050000000025	-73.983013200000002
30	668 The Gigshack	\N	782 Main St.	NY	Montauk	11954	(631) 668-2727	Montauk	41.0352949999999979	-71.9426740000000109
31	67 Orange Street	\N	2082 Frederick Douglas Blvd.	NY	New York	10026	(212) 662-2030	Harlem	40.8022180999999975	-73.9566251999999906
32	68 Jay St Bar	\N	68 Jay St.	NY	Brooklyn	11201	(718) 260-8207	DUMBO	40.7027216999999979	-73.986887799999991
33	8th Street Wine Cellar	\N	28 W 8th St.	NY	New York	10011	(212) 260-9463	Greenwich Village	40.7327220999999966	-73.9979098000000022
34	99 Rogers	\N	99 Rogers Ave.	NY	Crown Heights	11216	(718) 708-4933	Crown Heights	40.674282599999998	-73.9527239000000094
35	9th Avenue Saloon	\N	656 9th Ave.	NY	New York	10036	(212) 307-1503	Theater District	40.7607393999999985	-73.9906318000000027
36	A La Turka	\N	1417 2nd Ave.	NY	New York	10021	(212) 744-2424	Yorkville	40.7701307999999969	-73.9577149999999932
37	A.O.C.	\N	314 Bleecker St.	NY	New York	10014	(212) 675-9463	West Village	40.7327534000000071	-74.0041140999999953
38	Añejo	\N	668 10th Ave.	NY	New York	10036	(212) 920-4770	Midtown West	40.7626131000000029	-73.9929992999999939
39	ABA Turkish Restaurant	\N	325 W 57th St.	NY	New York	10019	(212) 655-9368	Hell's Kitchen	40.7674650000000014	-73.9840270999999916
40	Abbey Pub	\N	237 W 105th St.	NY	New York	10025	(212) 222-8713	Manhattan Valley	40.8005424999999988	-73.967471500000002
41	Abbey Tavern	\N	354 3rd Ave.	NY	New York	10010	(212) 696-1011	Kips Bay	40.7407064000000005	-73.9820093000000014
42	Abby Chinese Cuisine	\N	536 3rd Ave.	NY	New York	10016	(212) 725-8748	Murray Hill	40.7468949999999879	-73.9775903000000028
43	ABC Cocina	\N	38 E 19th St.	NY	New York	10003	(212) 677-2233	Flatiron	40.7379802999999967	-73.9892840999999919
44	ABC Kitchen	\N	35 E 18th St.	NY	New York	10003	(212) 475-5829	Flatiron	40.7379058000000001	-73.989493699999997
45	ABV	\N	1504 Lexington Ave.	NY	New York	10029	(212) 722-8959	East Harlem	40.786763999999998	-73.9506459999999919
46	Ace Bar	\N	531 E 5th St.	NY	New York	10009	(212) 979-8476	East Village	40.7243867999999978	-73.9828783000000101
47	Acme	\N	9 Great Jones St.	NY	New York	10012	(212) 203-2121	NoHo	40.7272210000000001	-73.9940689999999961
48	Acqua At Peck Slip	\N	21 Peck Slip, Water St.	NY	New York	10038	(212) 349-4433	Financial District	40.7082428999999877	-74.0017165000000006
49	Adelina's	\N	159 Greenpoint Ave.	NY	Brooklyn	11222	(347) 763-0152	Greenpoint	40.730445600000003	-73.9533873000000028
50	Adella	\N	410 W 43rd St.	NY	New York	10036	(212) 273-0737	Midtown West	40.7593176999999969	-73.9930094999999994
51	Adrienne's Pizzabar	\N	54 Stone St.	NY	New York	10004	(212) 248-3838	Financial District	40.7042849999999987	-74.0101207999999957
52	Agave	\N	140 7th Ave. S	NY	New York	10014	(212) 989-2100	West Village	40.7348112000000029	-74.0024250999999964
53	Aged Restaurant and Bar	\N	107-02 70th Rd.	NY	Forest Hills	11375	(718) 544-2433	Forest Hills	40.7207117999999966	-73.845592400000001
54	Agozar	\N	324 Bowery	NY	New York	10012	(212) 677-6773	East Village	40.7254801999999998	-73.9924353999999909
55	Ai Fiori	\N	400 5th Ave.	NY	New York	10018	(212) 613-8660	Midtown West	40.7501160999999996	-73.9838112999999993
56	Ainsworth Midtown	\N	45 E 33rd St.	NY	New York	10016	(212) 201-1228	Murray Hill	40.7468631999999999	-73.9822970999999967
57	Ainsworth Park	\N	111 E 18th St.	NY	New York	10003	(212) 673-2467	Gramercy	40.737133	-73.9879502000000002
58	The Ainsworth	\N	122 W 26th St.	NY	New York	10001	(212) 741-0646	Chelsea	40.7450696000000008	-73.9926287999999914
59	Alameda	\N	195 Franklin St.	NY	Brooklyn	11222		Greenpoint	40.7335101999999978	-73.9584595999999976
60	Albion	\N	575 2nd Ave.	NY	New York	10016	(212) 679-6716	Murray Hill	40.7433517999999992	-73.9773144999999914
61	Alchemy	\N	56 5th Ave.	NY	Brooklyn	11217	(718) 636-4385	Park Slope	40.6813578000000007	-73.9773318000000017
62	The Alcove	\N	41-11 49th St.	NY	Sunnyside	11104	(347) 813-4159	Woodside	40.7458889999999982	-73.9151262000000031
63	Alewife NYC	\N	5-14 51st Ave.	NY	Long Island City	11101	(718) 937-7494	Hunters Point	40.7421539999999993	-73.9561107999999905
64	Alfie's	\N	800 9th Ave.	NY	New York	10019	(212) 757-2390	Hell's Kitchen	40.7653826000000024	-73.9872991000000013
65	The Allie Way	\N	413 E 70th St.	NY	Manhattan	10021	(917) 512-0397	Upper East Side	40.7661370000000005	-73.9558440999999931
66	Alligator Lounge	\N	600 Metropolitan Ave.	NY	Brooklyn	11211	(718) 599-4440	Williamsburg - North Side	40.7139104999999972	-73.9489222999999924
67	Allswell	\N	124 Bedford Ave.	NY	Brooklyn	11211	(347) 799-2743	Williamsburg - North Side	40.7195881999999969	-73.9558535000000035
68	Almond	\N	12 E 22nd St.	NY	New York	10010	(212) 228-7557	Flatiron	40.7400780999999981	-73.9887488999999903
69	Alobar	\N	42-42 Vernon Blvd.	NY	Long Island City	11101	(718) 752-6000	Hunters Point	40.7538126000000034	-73.9502682999999905
70	Alpha Fusion	\N	365 W 34th St.	NY	New York	10001	(212) 279-8887	Hell's Kitchen	40.7533850000000015	-73.9957378999999946
71	Alphabet City Beer Company	\N	96 Ave. C	NY	New York	10009	(646) 422-7103	East Village	40.7236546999999973	-73.9788635000000028
72	Alta	\N	64 W 10th St.	NY	New York	10011	(212) 505-7777	Greenwich Village	40.7344107999999991	-73.9982000999999912
73	Althouse 1848	\N	101 Althouse Ave.	NY	East Rockaway	11518	(516) 341-0020	East Rockaway	40.6386162000000013	-73.660349999999994
74	Altus Cafe	\N	4325 Broadway	NY	Manhattan	10033	(212) 928-1367	Washington Heights	40.8523789999999991	-73.93486639999999
75	Amarachi	\N	189 Bridge St.	NY	Brooklyn	11201	(718) 222-1010	Downtown Brooklyn	40.6980805000000032	-73.9846833000000004
76	Amaze	\N	694 3rd Ave.	NY	New York	10017	(212) 986-5555	Midtown East	40.7519247999999976	-73.9739660999999984
77	Amber West Village	\N	135 Christopher St.	NY	New York	10014	(212) 477-5880	West Village	40.733156000000001	-74.0069584999999961
78	Ambiance Wine & Hookah Lounge	\N	1949 Richmond Ave.	NY	Bulls Head	10314	(718) 698-6769	Bulls Head	40.6005282000000065	-74.162464099999994
79	Amelie	\N	22 W 8th St.	NY	New York	10011	(212) 533-2962	Greenwich Village	40.7326286999999994	-73.9976675999999998
80	American Retro	\N	714 11th Ave.	NY	New York	10019	(212) 245-2203	Hell's Kitchen	40.7661897999999994	-73.9941103999999967
81	American Table Cafe & Bar	\N	1941 Broadway	NY	New York	10023	(212) 671-4200	Upper West Side	40.7738279999999875	-73.9830907999999994
82	American Trash	\N	1471 First Ave.	NY	New York	10075	(212) 988-9008	Upper East Side	40.7709034000000017	-73.9540669000000008
83	American Whiskey	\N	247 W 30th St.	NY	New York	10001	(212) 967-1070	Midtown West	40.7494184999999973	-73.9940648999999979
84	Amigos	\N	2888 Broadway	NY	New York	10025	(212) 864-1143	Morningside Heights	40.8055357000000001	-73.9653136000000018
85	Amity Hall	\N	80 W 3rd St.	NY	New York	10012	(212) 677-2290	Greenwich Village	40.7296358999999981	-73.9989147000000003
86	Amor y Amargo	\N	443 E 6th St.	NY	New York	10009	(212) 614-6818	East Village	40.7257279999999966	-73.9842723999999947
87	Ampersand	\N	294 3rd Ave.	NY	New York	10010	(212) 477-8100	Gramercy	40.7387226000000027	-73.9835710999999918
88	Amsterdam Ale House	\N	340 Amsterdam Ave.	NY	New York	10024	(212) 362-7260	Upper West Side	40.781414599999998	-73.9799668999999938
89	Amsterdam Billiards	\N	110 E 11th St.	NY	New York	10003	(212) 995-0333	East Village	40.7317087999999998	-73.9899423999999897
90	An Beal Bocht Cafe	\N	445 W 238th St.	NY	Bronx	10463	(718) 884-7127	Kingsbridge	40.8874508999999975	-73.904979400000002
91	Analogue	\N	19 W 8th St.	NY	New York	10011	(212) 432-0200	Greenwich Village	40.7328834999999998	-73.997417200000001
92	Anassa Taverna	\N	200 E 60th St.	NY	New York	10022	(212) 371-5200	Upper East Side	40.7619090999999969	-73.9658823999999981
93	The Anchored Inn	\N	57 Waterbury St.	NY	Brooklyn	11206	(718) 576-3297	East Williamsburg	40.7091372999999876	-73.9372766999999982
94	Anejo	\N	668 10th Ave.	NY	New York	10036	(212) 920-4770	Hell's Kitchen	40.7626131000000029	-73.9929992999999939
95	Anfora	\N	34 8th Ave.	NY	New York	10014	(212) 518-2722	West Village	40.7379259000000005	-74.0041011999999938
96	Angel's Share	\N	8 Stuyvesant St.	NY	New York	10003	(212) 777-5415	East Village	40.729771300000003	-73.9891611999999981
97	Angelo's Coal Oven Pizzeria	\N	117 W 57th St.	NY	New York	10019	(212) 333-4333	Midtown West	40.7649161000000007	-73.9779503999999974
98	Ann & Tony's Restaurant	\N	2407 Arthur Ave.	NY	Bronx	10458	(718) 933-1469	Belmont	40.8558441999999999	-73.8875667000000078
99	Annabel	\N	809 9th Ave.	NY	New York	10019	(212) 245-2215	Theater District	40.7657967999999968	-73.9875562000000002
100	Annie Moore's Bar & Restaurant	\N	22 East 41st St.	NY	New York	10017	(212) 986-7826	Midtown East	40.7521369000000035	-73.9803706999999946
101	Annisa	\N	13 Barrow St.	NY	New York	10014	(212) 741-6699	West Village	40.7324970000000022	-74.0023972999999984
102	Anotheroom	\N	249 W Broadway	NY	New York	10013	(212) 226-1418	TriBeCa	40.7198451999999875	-74.0055057000000005
103	Antique Garage	\N	41 Mercer St.	NY	New York	10013	(212) 219-1019	SoHo	40.7215205999999981	-74.0014297000000028
104	Antler Beer And Wine Dispensary	\N	123 Allen St.	NY	New York	10002	(212) 432-5000	Lower East Side	40.7198501000000022	-73.9904150999999928
105	Anyway Cafe	\N	1602 Gravesend Neck Rd.	NY	Brooklyn	11229	(718) 934-5988	Sheepshead Bay	40.5949215999999993	-73.954418099999998
106	AOA Bar & Grill	\N	35 Ave. of the Americas	NY	New York	10013	(212) 925-1600	TriBeCa	40.7208186000000012	-74.0055682999999931
107	AOC East	\N	1590 First Ave.	NY	New York	10028	(646) 998-5749	Upper East Side	40.7746369999999985	-73.9506360000000029
108	Applebee's	\N	3801 35th Ave.	NY	Long Island City	11101	(718) 943-7404	Astoria	40.7556299000000024	-73.9224499999999978
109	Aquagrill	\N	210 Spring St.	NY	New York	10012	(212) 274-0505	South Village	40.7253089000000017	-74.0038432999999998
110	AquaMarina	\N	4060 Broadway	NY	New York	10032	(212) 928-0070	Washington Heights	40.8433196000000009	-73.9388947999999999
111	Arabesque Restaurant	\N	4 E 36th St.	NY	New York	10016	(212) 532-2210	Midtown East	40.7493303999999981	-73.9831537000000026
112	The Archive	\N	12 E 36th St.	NY	New York	10016	(212) 213-0093	Midtown East	40.7492512999999974	-73.9828414999999922
113	Ardesia	\N	510 W 52nd St.	NY	New York	10019	(212) 247-9191	Hell's Kitchen	40.766038199999997	-73.9918273999999911
114	Aretsky's Patroon	\N	160 E 46th St.	NY	New York	10017	(212) 883-7373	Midtown East	40.7533598999999995	-73.9732415999999944
115	Aria West Village	\N	117 Perry St.	NY	New York	10014	(212) 242-4233	West Village	40.7351601000000016	-74.0067226999999974
116	Arirang Hibachi Steakhouse	\N	8814 4th Ave.	NY	Brooklyn	11209	(718) 238-9880	Bay Ridge	40.6210546000000008	-74.0292721999999941
117	Arlene's Grocery	\N	95 Stanton St.	NY	New York	10002	(212) 358-1633	Lower East Side	40.7212397999999993	-73.9883638000000019
118	Arno Ristorante	\N	141 W 38th St.	NY	New York	10018	(212) 944-7420	Midtown West	40.7533125000000069	-73.987978499999997
119	Arriba Arriba	\N	762 9th Ave.	NY	New York	10019	(212) 489-0810	Hell's Kitchen	40.7641429000000031	-73.9881980999999911
120	Art Bar	\N	52 8th Ave.	NY	New York	10014	(212) 727-0244	West Village	40.7384401999999994	-74.0034447000000029
121	Arte Cafe	\N	106 W 73rd St.	NY	New York	10023	(212) 501-7014	Upper West Side	40.7781074000000032	-73.9788317000000006
122	Artichoke Basille's Pizza	\N	328 E 14th St.	NY	New York	10003	(212) 228-2004	Gramercy	40.7316186999999985	-73.9838937999999899
123	Artifakt Bar & Lounge	\N	54 Watts St.	NY	New York	10013	(212) 226-6288	SoHo	40.7238862999999967	-74.0052534000000009
124	Arts and Crafts Beer Parlor	\N	26 W 8th St.	NY	New York	10011	(646) 678-5263	Greenwich Village	40.7327311000000023	-73.9978069999999946
125	Arturo's	\N	106 W Houston St.	NY	New York	10012	(212) 677-3820	Greenwich Village	40.7274874000000011	-74.0003315000000015
126	Asellina Ristorante	\N	420 Park Ave. South	NY	New York	10014	(212) 317-2908	Midtown East	40.743898999999999	-73.9841241000000025
127	Ashton's Alley	\N	825 3rd Ave.	NY	New York	10022	(212) 688-8625	Midtown East	40.7557923999999971	-73.9702489000000014
128	Asia de Cuba	\N	415 Lafayette St.	NY	New York	10003	(212) 726-7755	NoHo	40.7284465999999981	-73.9921183000000013
129	Asia Kan	\N	710 Amsterdam Ave.	NY	New York	10025	(212) 280-8878	Upper West Side	40.7931852000000035	-73.9713716999999917
130	Asia Roma	\N	40 Mulberry St.	NY	New York	10013	(212) 385-1133	Chinatown	40.7148447000000004	-73.9994331000000045
131	The Astor Room	\N	34-12 36th St.	NY	Astoria	11106	(718) 255-1947	Astoria	40.7571978000000001	-73.9243015000000128
132	Astoria Craft	\N	1801 26th Rd.	NY	Astoria	11102	(718) 278-4300	Astoria	40.7732738999999995	-73.9272520999999898
133	At nine Restaurant & Bar	\N	592 9th Ave.	NY	New York	10036	(212) 265-4499	Theater District	40.7586938999999973	-73.9920560999999992
134	At the Wallace	\N	3612 Broadway	NY	New York	10031	(212) 234-6896	Harlem	40.8287570000000031	-73.9483512999999988
135	The Atlantic ChipShop	\N	129 Atlantic Ave.	NY	Brooklyn	11201	(718) 855-7775	Brooklyn Heights	40.6908699000000027	-73.9957424999999915
136	Atlantic Grill	\N	1341 3rd Ave.	NY	New York	10021	(212) 988-9200	Upper East Side	40.7724587000000014	-73.9583305000000024
137	Atlas Social Club	\N	753 9th Ave.	NY	New York	10019	(212) 262-8527	Theater District	40.7640734999999879	-73.9889009999999985
138	Atrium DUMBO	\N	15 Main St.	NY	Brooklyn	11201	(718) 858-1095	DUMBO	40.7035915000000017	-73.9903283999999957
139	Attaboy	\N	134 Eldridge St.	NY	New York	10002		Lower East Side	40.7188820999999876	-73.9913799999999924
140	The Attic	\N	251 W 48th St.	NY	New York	10036	(212) 956-1300	Hell's Kitchen	40.7610062999999982	-73.9865870000000001
141	Atwood, Kitchen & Bar Room	\N	986 2nd Ave.	NY	New York	10022	(212) 371-2233	Midtown East	40.7561737000000122	-73.9672666000000021
142	The Auction House	\N	300 E 89th St.	NY	New York	10128	(212) 427-4458	Upper East Side	40.7795619999999985	-73.9500204999999937
143	Augurs Well	\N	115 St. Marks Pl	NY	New York	10009		East Village	40.7270733000000007	-73.9835789999999918
144	Aureole	\N	135 W 42nd St.	NY	New York	10036	(212) 319-1660	Theater District	40.7555892000000028	-73.9852848000000023
145	Austin Public	\N	70-28 Austin St.	NY	Forest Hills	11375	(718) 575-0070	Forest Hills	40.7203785999999965	-73.8460394000000093
146	Austin's Ale House	\N	8270 Austin St.	NY	Kew Gardens	11415	(718) 849-3939	Kew Gardens	40.7093750000000014	-73.8300720000000013
147	Austin's Steak & Ale House	\N	82-70 Austin St.	NY	Kew Gardens	11415	(718) 849-3939	Kew Gardens	40.7093750000000014	-73.8300720000000013
148	The Australian	\N	20 West 38 St.	NY	New York	10017	(212) 869-8601	Midtown West	40.7512240000000006	-73.9839048999999989
149	Automatic Slims	\N	733 Washington St.	NY	New York	10014	(212) 645-8660	West Village	40.7362825000000015	-74.0081708999999961
150	Ayza Wine & Chocolate Bar	\N	11 W 31st St.	NY	New York	10001	(212) 714-2992	Midtown West	40.7471281999999988	-73.986904299999992
151	Aziza Cafe & Lounge	\N	45 1st Ave.	NY	New York	10003	(212) 777-3778	East Village	40.7244628999999989	-73.9879244999999912
152	B Bar & Grill	\N	40 E 4th St.	NY	New York	10003	(212) 475-2220	NoHo	40.7270277999999877	-73.9918976999999956
153	B Flat	\N	277 Church St.	NY	New York	10013	(212) 219-2970	TriBeCa	40.7185438000000133	-74.0047654999999907
154	B Side	\N	204 Ave. B	NY	New York	10009	(212) 475-4600	East Village	40.7284543000000028	-73.9789933999999931
155	B. Cafe	\N	240 E 75th St.	NY	New York	10021	(212) 249-3300	Upper East Side	40.7708796000000078	-73.9577252999999928
156	Baby Bo's Cantina	\N	627 2nd Ave.	NY	New York	10016	(212) 779-2656	Murray Hill	40.7451336999999967	-73.9759803999999974
157	The Back Room	\N	102 Norfolk St.	NY	New York	10002	(212) 228-5098	Lower East Side	40.7187348	-73.9869430999999906
158	Bagatelle	\N	1 Little W 12th St.	NY	New York	10014	(212) 488-2110	Meatpacking District	40.7396608000000029	-74.0059281999999996
159	Bahama Breeze	\N	1600 Bergen Town Ctr	NJ	Paramus	7652	(201) 368-5860	Paramus	40.9166299999999978	-74.0586282999999952
160	The Bailey Pub & Brasserie	\N	52 William And Wall St.	NY	New York	10005	(212) 859-2200	Financial District	40.7063848000000021	-74.0095197999999925
161	Bailey's Corner Pub	\N	1607 York Ave.	NY	New York	10028	(212) 650-1341	Upper East Side	40.7752570000000034	-73.9479639999999989
162	Bait & Hook	\N	231 2nd Ave.	NY	New York	10003	(212) 260-8015	Gramercy	40.7325994999999992	-73.985006999999996
163	Baker & Co	\N	259 Bleecker St.	NY	New York	10014	(212) 255-1234	West Village	40.7313643999999968	-74.0028463999999957
164	Balboa Restaurant	\N	1655 Bedford Ave.	NY	Brooklyn	11225	(718) 467-3765	Crown Heights	40.6660778999999977	-73.956520900000001
165	Balon	\N	245 E 81st St.	NY	New York	10028	(646) 641-2282	Upper East Side	40.7749489999999994	-73.9543743999999919
166	Balthazar Restaurant	\N	80 Spring St.	NY	New York	10012	(212) 965-1414	SoHo	40.7226040999999981	-73.9982234999999946
167	Balzem	\N	202 Mott St.	NY	New York	10012	(646) 837-7033	Nolita	40.7213842999999969	-73.9953921999999977
168	Bamboo Bar and Grill	\N	153 Woodcleft Ave.	NY	Freeport	11520	(516) 379-7777	Freeport	40.6356753000000026	-73.5822098000000011
169	Banc Cafe	\N	431 3rd Ave.	NY	New York	10016	(212) 252-0146	Kips Bay	40.7432560000000024	-73.9795029
170	Bangia	\N	11 E 32nd St.	NY	New York	10016	(212) 679-6790	Midtown East	40.7469505999999981	-73.9845117999999928
171	Bann Restaurant	\N	350 W 50th St.	NY	New York	10019	(212) 582-4446	Theater District	40.762894799999998	-73.9880747000000127
172	Bar 13	\N	35 E 13th St.	NY	New York	10003	(212) 979-6677	Greenwich Village	40.7345808999999974	-73.9920185000000004
173	Bar 43	\N	4306 43rd St.	NY	Sunnyside	11104	(718) 361-3090	Sunnyside	40.7449065000000132	-73.9213840999999974
174	Bar 515	\N	515 3rd Ave.	NY	New York	10016	(212) 532-3300	Murray Hill	40.7459828000000002	-73.9775281000000007
175	Bar 718	\N	718 5th Ave.	NY	Brooklyn	11232	(718) 499-2661	South Slope	40.6605530000000002	-73.9945840000000032
176	Bar 9	\N	807 9th Ave	NY	New York	10019	(212) 399-9336	Hell's Kitchen	40.7657871999999983	-73.9876801999999998
177	Bar Bacon	\N	836 9th Ave.	NY	New York	10019	(646) 362-0622	Midtown West	40.7662663999999992	-73.9863771999999926
178	Bar Basso	\N	235 W 56 St.	NY	New York	10019	(212) 510-8356	Midtown West	40.7659767000000031	-73.9826426999999995
179	Bar Belly	\N	14B Orchard St.	NY	New York	10002	(646) 596-9142	Chinatown	40.715003099999997	-73.9916597999999937
180	Bar BQ	\N	15 Clark St.	CT	Stamford	6901	(203) 316-0278	Stamford	41.0524245999999877	-73.5404306000000076
181	Bar Bruno	\N	520 Henry St.	NY	Brooklyn	11231	(347) 763-0850	Carroll Gardens	40.6833625000000012	-73.9997783000000027
182	Bar Cyrk	\N	88 Thomas St.	NY	New York	10013	(212) 321-2975	TriBeCa	40.7173050000000032	-74.0085662999999983
183	Bar Goto	\N	245 Eldridge St.	NY	New York	10002	(212) 475-4411	Lower East Side	40.722757399999999	-73.9898699000000022
184	Bar Great Harry	\N	280 Smith St.	NY	Brooklyn	11226	(718) 222-1103	Carroll Gardens	40.6823673999999968	-73.9934169999999938
185	Bar Jamon	\N	125 E 17th St.	NY	New York	10003	(212) 253-2773	Gramercy	40.7358702000000008	-73.9870317999999969
186	Bar Lunatico	\N	486 Halsey St.	NY	Brooklyn	11233	(718) 513-0339	Bedford Stuyvesant	40.6833943000000033	-73.9346788999999944
187	Bar Matchless	\N	557 Manhattan Ave.	NY	Brooklyn	11222	(718) 383-5333	Greenpoint	40.7222349999999977	-73.950105899999997
188	Bar None	\N	98 3rd Ave.	NY	New York	10003	(212) 777-6663	East Village	40.7324432999999999	-73.9882106999999962
189	Bar Paulette	\N	136 Dekalb Ave.	NY	Brooklyn	11217	(718) 852-8582	Fort Greene	40.6895931999999974	-73.9759126000000009
190	Bar Pleiades	\N	20 E. 76th St.	NY	Manhattan	10021	(212) 772-2600	Upper East Side	40.7742865000000023	-73.9639674000000014
191	Bar Prima	\N	331 E 81st St.	NY	New York	10028	(646) 918-6917	Upper East Side	40.7743654999999876	-73.9529112000000026
192	The Bar Room	\N	117 E 60th St.	NY	New York	10022	(212) 561-5523	Upper East Side	40.7634090000000029	-73.9684489999999926
193	Bar San Miguel	\N	307 Smith St.	NY	New York	11231	(718) 855-2490	Gowanus	40.6813586000000029	-73.993893099999994
194	Bar Sardine	\N	183 W 10th St.	NY	New York	10014	(646) 360-3705	West Village	40.734391500000001	-74.0027084999999971
195	Bar Veloce	\N	175 2nd Ave.	NY	New York	10003	(212) 260-3200	East Village	40.7307062000000002	-73.986566400000001
196	Bar Virage	\N	118 2nd Ave.	NY	New York	10003	(212) 253-0425	East Village	40.7279801999999975	-73.9877910999999955
197	Bar'Lees Wine & Whisky Bar	\N	157 Mamaroneck Ave.	NY	Mamaroneck	10543	(914) 630-7512	Mamaroneck	40.9498966000000024	-73.7331006999999943
198	Bar-Coastal	\N	1495 1st Ave.	NY	New York	10075	(212) 288-6635	Upper East Side	40.7718899999999991	-73.9534220000000033
199	BarBacon	\N	836 9th Ave.	NY	New York	10019	(646) 362-0622	Hell's Kitchen	40.7662663999999992	-73.9863771999999926
200	Barboncino	\N	781 Franklin Ave.	NY	Brooklyn	11238	(718) 483-8834	Crown Heights	40.6720680999999971	-73.9572766000000001
201	Barbounia	\N	250 Park Ave. S	NY	New York	10003	(212) 995-0242	Gramercy	40.7382512000000006	-73.9881589000000019
202	Barcade	\N	388 Union Ave.	NY	Brooklyn	11224	(718) 302-6464	Williamsburg - North Side	40.7120528000000022	-73.9510427000000021
203	Barcelona Bar	\N	923 8th Ave.	NY	New York	10019	(212) 245-3212	Hell's Kitchen	40.7653462999999974	-73.9841919999999931
204	Barcelona Bites	\N	220 W 242nd St.	NY	Bronx	10471	(844) 737-2483	Kingsbridge	40.8895211000000032	-73.8987170999999989
205	Barcibo Enoteca	\N	2020 Broadway	NY	New York	10023	(212) 595-2805	Upper West Side	40.7763868999999985	-73.9817383000000035
206	Barfly NY	\N	244 3rd Ave.	NY	New York	10010	(212) 473-9660	Gramercy	40.7371803999999997	-73.9847137000000004
207	Barking Dog	\N	1678 3rd Ave.	NY	New York	10129	(212) 831-1800	Upper East Side	40.7841149999999999	-73.9505130000000008
208	BarKogi	\N	957 2nd Ave.	NY	New York	10022	(212) 308-8810	Midtown East	40.7554221999999982	-73.96845789999999
209	Barley	\N	1025 Manhattan Ave.	NY	Brooklyn	11222	(718) 349-0022	Greenpoint	40.7339719000000002	-73.9551431000000008
210	Barley and Grain	\N	421 Amsterdam Ave.	NY	New York	10024	(646) 360-3231	Upper West Side	40.7838392000000027	-73.9775697000000036
211	Barleycorn	\N	23 Park Pl	NY	New York	10007	(212) 933-0039	TriBeCa	40.7133249000000035	-74.008663999999996
212	Barn Joo	\N	893 Broadway	NY	New York	10003	(646) 398-9663	Flatiron	40.7389119999999991	-73.9902230000000003
213	Baron's	\N	564 Dekalb Ave.	NY	Brooklyn	11205	(718) 230-7100	Bedford Stuyvesant	40.6908116000000035	-73.9539150000000092
214	The Baroness Bar	\N	41-26 Crescent St.	NY	Long Island City	11101	(718) 784-5065	Long Island City	40.7517005999999995	-73.9399368999999922
215	Barraca	\N	81 Greenwich Ave.	NY	New York	10014	(212) 462-0080	West Village	40.7370026999999979	-74.0015436999999991
216	Barracuda	\N	275 W 22nd St.	NY	New York	10011	(212) 645-8613	Chelsea	40.7445939999999993	-73.998305000000002
217	Barrage	\N	401 W 47th St.	NY	New York	10036	(212) 586-9390	Midtown West	40.7619072000000031	-73.9905610999999936
218	Barrio 47	\N	47 8th Ave.	NY	New York	10014	(212) 255-3900	West Village	40.7385273000000012	-74.0040836000000013
219	Barrio Chino	\N	253 Broome St.	NY	New York	10002	(212) 228-6710	Lower East Side	40.7179754000000003	-73.9900969999999916
220	Barrique Kitchen & Wine Bar	\N	69 Deer Park Ave.	NY	Babylon	11702	(631) 321-1175	Babylon	40.6976139000000003	-73.322490700000003
221	Barrow Street Ale House	\N	15 Barrow St.	NY	New York	10014	(212) 691-6127	West Village	40.7325202999999973	-74.0025148000000002
222	Barrow's Pub	\N	463 Hudson St.	NY	New York	10014	(212) 741-9349	West Village	40.731577999999999	-74.00689899999999
223	Bartaco	\N	1 Willett Ave.	NY	Port Chester	10573	(914) 937-8226	Port Chester	41.0020880000000005	-73.6602869000000027
224	Barzola Queens	\N	9212 37th Ave.	NY	Jackson Heights	11372	(718) 205-6900	Jackson Heights	40.750493800000001	-73.8744659999999982
225	Basik	\N	323 Graham Ave.	NY	Brooklyn	11211	(347) 889-7597	Williamsburg - North Side	40.713967199999999	-73.9445242999999977
226	Bathtub Gin	\N	132 9th Ave.	NY	New York	10011	(646) 559-1671	Chelsea	40.7435660000000013	-74.0031841999999926
227	Battersby	\N	255 Smith St.	NY	Brooklyn	11231	(718) 852-8321	Cobble Hill	40.6831377999999972	-73.9926968999999985
228	Battery Harris	\N	64 Frost St.	NY	Williamsburg	11211	(718) 384-8900	Williamsburg - North Side	40.717483399999999	-73.9493468000000007
229	Bavaria Bier Haus	\N	19 S William St.	NY	New York	10004	(212) 480-8142	Financial District	40.7044308999999984	-74.0105580000000032
230	Bayard's Ale House	\N	533 Hudson St.	NY	New York	10014	(212) 989-0313	West Village	40.7342999999999975	-74.0064869999999928
231	The Bayou Restaurant	\N	580 Gramatan Ave.	NY	Mt. Vernon	10552	(914) 668-2634	Fleetwood	40.9261330000000001	-73.8359030999999959
232	Bayridge Sushi	\N	6914 3rd Ave.	NY	Brooklyn	11219	(718) 491-0662	Bay Ridge	40.6354595999999972	-74.0263916999999907
233	BayVue	\N	854 S Wellwood Ave.	NY	Lindenhurst	11757	(631) 991-3370	Lindenhurst	40.6697988000000024	-73.3568776999999983
234	Bea	\N	403 W 43rd St.	NY	New York	10036	(212) 602-1910	Theater District	40.7594101999999978	-73.9924549999999925
235	Beans and Vines	\N	4842 Broadway	NY	New York	10034	(718) 544-2326	Inwood	40.8662652999999878	-73.9246294999999947
236	Beauty & Essex	\N	146 Essex St.	NY	New York	10002	(212) 614-0146	Lower East Side	40.7204063000000005	-73.9868860999999924
237	Beauty Bar	\N	231 E 14th St.	NY	New York	10003	(212) 539-1389	Gramercy	40.7329713999999967	-73.9857121999999947
238	Beckett's Bar & Grill	\N	81 Pearl St.	NY	New York	10004	(212) 269-1001	Financial District	40.7041285999999971	-74.0103354999999965
239	Beco	\N	45 Richardson St.	NY	Brooklyn	11211	(718) 599-1645	Williamsburg	40.7182652999999988	-73.9504518000000104
240	Bedford Falls	\N	206 E 67th St.	NY	Manhattan	10065	(212) 717-8181	Upper East Side	40.7661502999999996	-73.9625242999999983
241	The Beekman Pub	\N	15 Beekman St.	NY	New York	10038	(212) 732-7333	Financial District	40.7108616000000012	-74.0063552000000016
242	Beer Authority	\N	300 W 40th St.	NY	New York	10018	(212) 510-8415	Hell's Kitchen	40.7559338000000011	-73.9911821999999972
243	The Beer Bar	\N	200 Park Ave.	NY	New York	10166	(212) 818-1222	Midtown East	40.7533487999999977	-73.9766668000000038
244	Beer Culture	\N	328 W 45th St.	NY	New York	10036	(646) 590-2139	Hell's Kitchen	40.7595331999999999	-73.9897052000000031
245	The Beer Spot and Grill	\N	2027 Lemoine Ave.	NJ	Fort Lee	7024	(201) 461-9740	Fort Lee	40.8521456000000001	-73.9698131999999902
246	Beija Flor	\N	38-02 29th St.	NY	Long Island City	11101	(718) 606-2468	Long Island City	40.7545900000000074	-73.933897000000016
247	The Belfry	\N	222 E 14th St.	NY	New York	10003	(212) 473-6590	East Village	40.7326315999999977	-73.9863790999999935
248	Belgian Beer Cafe	\N	220 5th Ave.	NY	New York	10001	(212) 575-2337	Flatiron	40.7437266000000022	-73.9884397999999948
249	Bell Book & Candle	\N	141 W 10th St.	NY	New York	10014	(212) 414-2355	West Village	40.7347335999999984	-74.0008941999999905
250	The Bell House	\N	149 7th St.	NY	Brooklyn	11215	(718) 643-6510	Gowanus	40.6737382000000025	-73.9916918999999922
251	Belle Reve	\N	305 Church St.	NY	New York	10013	(212) 680-0101	TriBeCa	40.7195735999999968	-74.0039771000000002
252	Bemelmans Bar	\N	35 E 76th St.	NY	New York	10021	(212) 744-1600	Upper East Side	40.7742971999999995	-73.9629930999999914
253	Benash Delicatessen	\N	857 7th Ave.	NY	New York	10019	(212) 265-1818	Midtown West	40.7640239999999991	-73.9808467999999948
254	Bengal Tiger Indian Food	\N	58 W 56th St.	NY	New York	10019	(212) 265-2703	Midtown West	40.7633128000000013	-73.9771710999999925
255	Benny's Burritos	\N	113 Greenwich Ave.	NY	New York	10014	(212) 633-9210	West Village	40.7380269000000013	-74.0021646000000004
256	Benson's NYC	\N	181 Essex St.	NY	New York	10002	(646) 791-5765	Lower East Side	40.7219684000000015	-73.9866612999999944
257	Berg'n	\N	899 Bergen St.	NY	Brooklyn	11238	(718) 857-2337	Crown Heights	40.6774223000000035	-73.9575998999999911
258	Bergen Hill	\N	387 Ct. St.	NY	Brooklyn	11231	(718) 858-5483	Carroll Gardens	40.6658720000000002	-73.9451562999999936
259	Bergen Hill	\N	64 Cooper Sq	NY	New York	10003	(212) 260-2182	NoHo	40.7294860000000014	-73.9911479999999955
260	Berimbau Do Brasil	\N	43 Carmine St.	NY	New York	10014	(212) 242-2606	West Village	40.7300863999999976	-74.0036515999999978
261	Berry Park	\N	4 Berry St.	NY	Brooklyn	11211	(718) 782-2829	Williamsburg - North Side	40.7224373000000028	-73.9551737000000031
262	Besito Mexican Restaurant	\N	1516 Old Northern Blvd.	NY	Roslyn	11576	(516) 484-3001	Roslyn	40.8034917000000021	-73.6452483999999998
263	Beso	\N	11 Schuyler St.	NY	Staten Island	10301	(718) 816-8162	St. George	40.6433685000000011	-74.0764999999999958
264	Bettibar	\N	373 W 46th St.	NY	New York	10036	(212) 265-2060	Theater District	40.7609507000000022	-73.9903379999999942
265	Bevacco	\N	60 Henry St.	NY	Brooklyn	11201	(718) 624-1444	Brooklyn Heights	40.6992832999999976	-73.9923409000000021
266	Beyond Sushi Midtown West	\N	62 W 56th St.	NY	New York	10019	(646) 964-5097	Midtown West	40.7632892000000027	-73.9771942999999936
267	bibi	\N	211 E 4th St.	NY	New York	10009	(212) 673-2424	East Village	40.7238915000000006	-73.983561899999998
268	Biddy's Pub	\N	301 E 91st St.	NY	New York	10128	(212) 534-4785	Upper East Side	40.7810143999999966	-73.9489780999999908
269	The Biergarten at The Standard, High Line	\N	848 Washington St.	NY	New York	10014	(212) 645-4646	Meatpacking District	40.7408539999999988	-74.0079522999999995
270	Bierhaus	\N	712 3rd Ave.	NY	New York	10017	(212) 867-2337	Midtown East	40.7525860999999878	-73.9733871999999906
271	Bierocracy	\N	12-23 Jackson Ave.	NY	Long Island City	11101	(718) 361-9333	Hunters Point	40.7440241999999984	-73.9502860999999996
272	Big Bar	\N	75 E 7th St.	NY	New York	10003	(212) 777-6969	East Village	40.727515099999998	-73.9864050999999989
273	Bijan's	\N	81 Hoyt St.	NY	Brooklyn	11201	(718) 855-5574	Downtown Brooklyn	40.6879714000000021	-73.9867095000000035
274	Bill's Bar & Burger	\N	16 W 51st St.	NY	New York	10019	(212) 705-8510	Midtown West	40.7592909999999975	-73.9775877999999949
275	Billymark's West	\N	332 9th Ave.	NY	New York	10001	(212) 629-0118	Midtown West	40.7502356999999975	-73.998253300000016
276	Bin 14	\N	1314 Washington St.	NJ	Hoboken	7030	(201) 963-9463	Hoboken	40.7530207000000004	-74.0264659000000051
277	Bin 5	\N	1233 Bay St.	NY	Staten Island	10305	(718) 448-7275	Shore Acres	40.6133195000000029	-74.0653119999999916
278	Bin 71	\N	237 Columbus Ave.	NY	New York	10023	(212) 362-5446	Upper West Side	40.7764592999999991	-73.9792518999999942
279	BIN No. 220	\N	220 Front St.	NY	New York	10038	(212) 374-9463	South Street Seaport	40.707571999999999	-74.0024277999999924
280	Birdsall House	\N	970 Main St.	NY	Peekskill	10566	(914) 930-1880	Peekskill	41.2918082999999996	-73.9204929999999933
281	Bisou Bisou	\N	264 Carlton Ave.	NY	Brooklyn	11205	(718) 624-4075	Fort Greene	40.6897653999999989	-73.9725573999999995
282	Bistro Chat Noir	\N	22 E 66th St.	NY	New York	10065	(212) 794-2428	Upper East Side	40.7679532000000009	-73.9687752999999901
283	Bistro Milano	\N	1350 Ave. of the Americas	NY	New York	10019	(212) 757-2600	Midtown West	40.7625170000000026	-73.9777612999999974
284	The Bitter End	\N	147 Bleecker St.	NY	New York	10012	(212) 673-7030	Greenwich Village	40.7283690000000007	-73.999176300000002
285	BKW by Brooklyn Winery	\N	747 Franklin Ave.	NY	Brooklyn 	11238	(718) 399-1700	Crown Heights	40.6730269999999976	-73.9568280000000016
286	Black & White	\N	86 E 10th St.	NY	New York	10003	(212) 253-0246	East Village	40.7308467999999877	-73.989873099999997
287	The Black Ant	\N	60 2nd Ave.	NY	New York	10003	(212) 598-0300	East Village	40.7257346000000027	-73.9893206999999933
288	Black Cat LES	\N	172 Rivington St.	NY	New York	10002	(646) 918-7711	Lower East Side	40.7191112000000004	-73.9845198000000011
289	Black Forest Brooklyn	\N	733 Fulton St.	NY	Brooklyn	11217	(718) 935-0300	Fort Greene	40.6866140999999999	-73.9751906999999989
290	Black Horse Pub	\N	568 5th Ave.	NY	Brooklyn	11215	(718) 788-1975	South Slope	40.6651640999999984	-73.9899628000000007
291	Black Iron Burger Shop	\N	540 E 5th St.	NY	New York	10009	(212) 677-6067	East Village	40.7239593999999983	-73.9827726999999982
292	Black Market	\N	110 Ave. A	NY	New York	10009	(212) 614-9798	East Village	40.725839299999997	-73.98348510000001
293	Black Mountain Wine House	\N	415 Union St.	NY	Brooklyn	11231	(718) 522-4340	Gowanus	40.6808862000000033	-73.991519199999999
294	Black Rabbit	\N	91 Greenpoint Ave.	NY	Brooklyn	11222	(718) 349-1595	Greenpoint	40.7299678999999983	-73.9565867999999966
295	The Black Sheep Ale House	\N	78 2nd St.	NY	Mineola	11501	(516) 307-1280	Mineola	40.7430833000000021	-73.6344160000000016
296	The Black Sheep	\N	583 3rd Ave.	NY	New York	10016	(212) 599-3476	Murray Hill	40.7483130000000031	-73.9758719999999954
297	Black Swan	\N	1048 Bedford Ave.	NY	Brooklyn	11205	(718) 783-4744	Bedford Stuyvesant	40.689082599999999	-73.9552879000000019
298	Blackjack Mulligans Secaucus	\N	146 Front St.	NJ	Secaucus	7094	(201) 864-5544	Secaucus	40.7908696000000006	-74.0586963000000083
299	Blackwells Pub And Restaurant	\N	150 E 47th St.	NY	New York	10017	(212) 661-7890	Midtown East	40.7540623000000011	-73.9727391000000125
300	Blaggards Pub	\N	8 W 38th St.	NY	New York	10018	(212) 382-2611	Midtown West	40.7510922000000022	-73.9835867000000036
301	Blake Lane	\N	1429 Third Ave.	NY	New York	10028	(212) 988-4700	Upper East Side	40.7753317999999965	-73.9562241
302	Blank Slate	\N	121 Madison Ave.	NY	New York	10016	(212) 683-7800	NoMad	40.745300499999999	-73.9843761999999998
303	The Blarney Rock Pub	\N	137 W 33rd St.	NY	New York	10001	(212) 947-0825	Midtown West	40.7500761000000011	-73.9898967999999968
304	Blarney Station	\N	258 Park Ave.	NJ	East Rutherford	7073	(201) 531-0001	East Rutherford	40.8289291999999975	-74.1005164000000036
305	Blaue Gans	\N	139 Duane St.	NY	New York	10013	(212) 571-8880	TriBeCa	40.716507600000007	-74.0076277000000005
306	The Blazer Pub	\N	440 Rt 22	NY	Purdys	10578	(914) 277-4424	Purdys	41.3766462999999973	-73.6343473000000017
307	Bleecker Street Bar	\N	56 Bleecker St.	NY	New York	10012	(212) 334-0244	NoHo	40.7259485000000012	-73.9950537999999938
308	Blend	\N	4704 Vernon Blvd.	NY	Long Island City	11101	(718) 729-2800	Long Island City	40.7453860000000034	-73.9535120000000035
309	Blend on the Water	\N	4540 Center Blvd.	NY	Long Island City	11109	(718) 606-9851	Hunters Point	40.7479834999999966	-73.9569048999999978
310	Blind Barber	\N	339 E 10th St.	NY	New York	10009	(212) 228-2123	East Village	40.7271545999999987	-73.9801495999999901
311	Blind Pig Bar	\N	233 E 14th St.	NY	New York	10003	(212) 209-1573	Gramercy	40.7329337999999979	-73.9856484999999964
312	Blind Tiger	\N	281 Bleecker St.	NY	New York	10014	(212) 462-4682	West Village	40.7318882000000073	-74.0031839999999903
313	Blockheads	\N	350 W 50th St.	NY	New York	10019	(212) 307-7029	Hell's Kitchen	40.762894799999998	-73.9880747000000127
314	Blockheads	\N	499 3rd Ave.	NY	New York	10016	(212) 213-3332	Murray Hill	40.7453428999999971	-73.9780303000000004
315	Blondies	\N	212 W 79th St.	NY	New York	10024	(212) 362-4360	Upper West Side	40.783223900000003	-73.9791522000000015
316	Bloom's Tavern	\N	208 E 58th St.	NY	New York	10022	(212) 308-9400	Midtown East	40.7605120999999997	-73.966571799999997
317	BLT Prime	\N	111 E 22nd St.	NY	New York	10022	(212) 995-8500	Flatiron	40.7394135999999989	-73.9860704000000027
318	Blue Bar	\N	59 W 44th St.	NY	New York	10036	(212) 840-6800	Midtown West	40.7560179000000034	-73.9822973999999931
319	Blue Dog Kitchen Bar	\N	308 West 50th St.	NY	New York	10019	(212) 459-0700	Hell's Kitchen	40.762443900000001	-73.9869678999999962
320	Blue Fin	\N	1567 Broadway	NY	New York	10036	(212) 918-1400	Midtown West	40.759325699999998	-73.9855994999999922
321	Blue Haven	\N	108 W Houston St.	NY	New York	10012	(212) 505-3400	Greenwich Village	40.7275670000000005	-74.0005505999999968
322	Blue Hill	\N	75 Washington Pl.	NY	New York	10011	(212) 539-1776	Greenwich Village	40.7320494000000011	-73.9996826999999939
323	Blue Ribbon Brasserie	\N	97 Sullivan St.	NY	New York	10012	(212) 274-0404	South Village	40.7254316000000074	-74.0029631999999964
324	Blue Ruin	\N	538 9th Ave.	NY	New York	10018	(917) 945-3497	Hell's Kitchen	40.7568579	-73.9934061999999955
325	Blue Seafood Bar	\N	856 9th Ave.	NY	New York	10019	(212) 757-7511	Hell's Kitchen	40.7668613000000022	-73.9861657000000008
326	Blue Smoke	\N	116 E 27th St.	NY	New York	10016	(212) 447-7733	Flatiron	40.7421742999999879	-73.9838007000000033
327	Blueprint	\N	196 5th Ave.	NY	Brooklyn	11217	(718) 622-6644	Park Slope	40.6768843999999987	-73.9803770999999983
328	BLVD Wine Bar	\N	4720 Ctr Blvd.	NY	Long Island City	11109	(718) 440-8520	Hunters Point	40.7459178999999878	-73.9571873000000011
329	bOb Bar	\N	235 Eldridge St.	NY	New York	10002	(212) 529-1807	Lower East Side	40.722444099999997	-73.9899847000000079
330	Bobo	\N	181 W 10th St.	NY	New York	10014	(212) 488-2626	West Village	40.734480099999999	-74.0026179999999982
331	Bocado Cafe	\N	1293 Lexington Ave.	NY	New York	10128	(212) 289-9004	Upper East Side	40.7802324999999968	-73.9548379999999952
332	Bocaito Wine Bar	\N	81-15 Northern Blvd.	NY	Jackson Heights	11372	(347) 617-1606	Jackson Heights	40.7557501000000002	-73.8856856000000022
333	Bocca Di Bacco	\N	828 9th Ave.	NY	New York	10019	(212) 265-8838	Hell's Kitchen	40.7660712000000132	-73.9866786999999988
334	The Bodega	\N	24 St. Nicholas Ave.	NY	Brooklyn	11237	(347) 305-3344	Bushwick	40.7073992999999987	-73.9218160000000069
335	Bogota Latin Bistro	\N	141 5th Ave.	NY	Brooklyn	11217	(718) 230-3805	Park Slope	40.6782480999999976	-73.9792137000000025
336	Bohemian Hall and Beer Garden	\N	2919 24th Ave.	NY	Astoria	11102	(718) 274-4925	Astoria	40.7727983999999992	-73.9156423000000018
337	Bohemian Restaurant	\N	57 Great Jones St.	NY	New York	10012		NoHo	40.7264079999999993	-73.9923615000000012
338	The Boiler Room	\N	86 E 4th St.	NY	New York	10003	(212) 254-7536	East Village	40.7259478000000001	-73.9892330999999928
339	Boilermaker	\N	13 First Ave.	NY	New York	10003	(212) 995-5400	East Village	40.7234472999999966	-73.9885737000000034
340	Bondurants	\N	303 E 85th St.	NY	New York	10028	(212) 249-1509	Upper East Side	40.7771611999999877	-73.9518501000000015
341	Bonnie Vee	\N	17 Stanton St.	NY	New York	10002	(917) 639-3352	Lower East Side	40.7224024	-73.992147899999992
342	Bonnie's Grill	\N	278 5th Ave.	NY	Brooklyn	11215	(718) 369-9527	Park Slope	40.674281299999997	-73.9823519999999917
343	The Bonnie	\N	29-12 23rd Ave.	NY	Astoria	11105	(718) 274-2105	Astoria	40.774673700000001	-73.9136002999999988
344	Bono Trattoria	\N	3658 Broadway	NY	New York	10031	(646) 682-9249	Harlem	40.8302239	-73.9473285999999916
345	Boobie Trap	\N	308 Bleecker St.	NY	Brooklyn	11237	(347) 240-9105	Bushwick	40.7002992000000035	-73.9161421999999959
346	Boots & Saddle	\N	100A 7th Ave. S	NY	New York	10014	(646) 892-4800	West Village	40.7329800999999989	-74.0034275000000008
347	Boqueria	\N	53 W 19th St.	NY	New York	10011	(212) 255-4160	Flatiron	40.7402297000000004	-73.9937565000000035
348	Bornholm	\N	138 Smith St.	NY	Brooklyn	11201	(917) 909-0850	Cobble Hill	40.6871215999999976	-73.9904214000000024
349	Borough Restaurant and Bar	\N	338 Franklin Ave.	NY	Brooklyn	11238	(718) 230-4728	Clinton Hill	40.6875201000000004	-73.9572410999999903
350	Boss Tweed's Saloon	\N	115 Essex St.	NY	New York	10002	(212) 475-9997	Lower East Side	40.719528099999998	-73.9879983999999951
351	Botanica Bar	\N	47 E Houston St.	NY	New York	10012	(212) 343-7251	Nolita	40.7246698000000009	-73.9947463999999968
352	Bottino	\N	246 10th Ave.	NY	New York	10001	(212) 206-6766	Chelsea	40.7484845999999976	-74.0033126999999951
353	Bottle and Bine	\N	1085 2nd Ave.	NY	New York	10022	(212) 888-7405	Midtown East	40.759605999999998	-73.965401
354	Bouley	\N	163 Duane St.	NY	New York	10013	(212) 964-2525	TriBeCa	40.7169618	-74.0088671999999974
355	Boulton & Watt	\N	5 Ave. A	NY	New York	10009	(646) 490-6004	Alphabet City	40.722520099999997	-73.9863607999999999
356	Boulud Sud	\N	20 West 64th St.	NY	New York	10023	(212) 595-1313	Upper West Side	40.7715807000000012	-73.9811806999999959
357	Bounce Sporting Club	\N	55 W 21st St.	NY	New York	10010	(212) 675-8007	Flatiron	40.7415352000000013	-73.9930068999999975
358	Bourbon Street	\N	407 Amsterdam Ave.	NY	New York	10024	(212) 721-1332	Upper West Side	40.7833725999999999	-73.9778158000000019
359	Bourbon Street Bar & Grille	\N	346 West 46th St.	NY	New York	10036	(212) 245-2030	Hell's Kitchen	40.760310699999998	-73.9897823999999957
360	The Bowery Ballroom	\N	6 Delancey St.	NY	New York	10002	(212) 533-2111	Lower East Side	40.7204392000000013	-73.9933376999999979
361	Bowery Bay	\N	19-33 Ditmars Blvd.	NY	Astoria	11105	(718) 721-1933	Astoria	40.7807178999999991	-73.9167607999999916
362	The Bowery Electric	\N	327 Bowery St.	NY	New York	10003	(347) 724-1874	East Village	40.7256939000000031	-73.9916800999999964
363	The Bowery Hotel	\N	335 Bowery	NY	New York	10003	(212) 505-9100	East Village	40.7260338000000033	-73.9914734999999979
364	Bowery Meat Company	\N	9 E 1st St.	NY	New York	10003	(212) 460-5255	East Village	40.7245665000000017	-73.9918408999999997
365	Bowlmor Times Square	\N	222 W. 44Th St.	NY	New York	10036	(212) 680-0012	Theater District	40.7576666000000074	-73.9872028999999998
366	Boxers NYC	\N	37 W 20th St.	NY	New York	10011	(212) 255-5082	Flatiron	40.7408052999999981	-73.9931114000000036
367	Branded Saloon	\N	603 Vanderbilt Ave.	NY	Brooklyn	11238	(718) 484-8704	Prospect Heights	40.6792488000000034	-73.9679780000000022
368	Brandy Library	\N	25 N Moore St.	NY	New York	10013	(212) 226-5545	TriBeCa	40.7199572999999972	-74.00720179999999
369	Brandy's Piano Bar	\N	235 E 84th St.	NY	New York	10028	(212) 744-4949	Upper East Side	40.7771325000000004	-73.9534501999999918
370	Brass Monkey	\N	55 Little W 12th St.	NY	New York	10014	(212) 675-6686	West Village	40.7407660000000007	-74.0084429999999998
371	The Brass Rail	\N	135 Washington St.	NJ	Hoboken	7030	(201) 659-7074	Hoboken	40.7385851000000017	-74.0303134999999912
372	Brasserie Cognac	\N	1740 Broadway	NY	New York	10019	(212) 757-3600	Midtown West	40.7649643000000026	-73.9818606999999986
373	Brasserie Magritte	\N	1463 3rd Ave.	NY	New York	10028	(646) 449-0606	Upper East Side	40.7765035999999981	-73.9553063999999978
374	Bravest	\N	700 2nd Ave.	NY	New York	10016	(212) 683-3766	Midtown East	40.7470933999999971	-73.9738921999999945
375	The Brazen Fox Kitchen & Craft Beer	\N	106 3rd Ave.	NY	New York	10003	(212) 353-1063	East Village	40.7328100000000006	-73.9878470000000021
376	The Brazen Head	\N	228 Atlantic Ave.	NY	Brooklyn	11201	(718) 488-0430	Cobble Hill	40.689238600000003	-73.9916482999999943
377	The Brazen Tavern	\N	356 W 44th St.	NY	New York	10036	(646) 678-5989	Midtown West	40.7593251999999993	-73.9913098999999903
378	Bread & Tulips	\N	365 Park Ave. S	NY	New York	10016	(212) 532-9100	Flatiron	40.7421106999999978	-73.9846539999999919
379	Break Bar & Billiards	\N	32-04b Broadway	NY	Queens	11106	(718) 777-5400	Astoria	40.7612947000000005	-73.9245251999999908
380	Breakroom Burgers & Tacos	\N	83 Baxter St.	NY	New York	10013	(212) 227-2802	Chinatown	40.7166159999999877	-73.9995880000000028
381	Brendan's Bar & Grill	\N	42 W 35th St.	NY	New York	10001	(212) 564-5405	Midtown West	40.7497852999999992	-73.986203500000002
382	The Breslin	\N	20 W 29th St.	NY	New York	10001	(212) 679-1939	Midtown West	40.7457431999999997	-73.9882602999999932
383	The Breukelen	\N	710 Nostrand Ave.	NY	Brooklyn	11216	(347) 404-7006	Crown Heights	40.674456499999998	-73.9500689999999992
384	Brew Cheese	\N	127 Main St.	NY	Stony Brook	11790	(631) 675-6060	Stony Brook	40.9176768999999965	-73.1463739999999945
385	Brew House	\N	924 Hillside Ave.	NY	New Hyde Park	11040	(516) 502-6740	New Hyde Park	40.7434066000000001	-73.6926476000000008
386	The Brew Inn	\N	924 Manhattan Ave.	NY	Brooklyn	11222	(718) 564-7155	Greenpoint	40.7310429999999997	-73.9541668999999899
387	The Brewery	\N	49-18 30th Ave.	NY	Woodside	11377	(718) 777-8007	Astoria	40.7601354000000029	-73.9073154000000017
388	Brewology - Port Jeff	\N	201 Main St.	NY	Port Jefferson	11777	(631) 509-1700	Port Jefferson	40.9458142000000009	-73.0681438000000014
389	Bricco	\N	304 W 56th St.	NY	New York	10019	(212) 245-7160	Theater District	40.7660954999999987	-73.9839937999999933
390	Briciola	\N	370 W 51 St.	NY	New York	10019	(646) 678-5763	Theater District	40.7638918999999973	-73.9882472000000035
391	Brickyard Gastropub	\N	985 9th Ave.	NY	New York	10019	(212) 767-0077	Midtown West	40.7693597999999966	-73.9851787999999999
392	Brickyard Gastropub	\N	785 9th Ave.	NY	New York	10019	(212) 767-0077	Theater District	40.7650801999999999	-73.9881594000000007
393	Bricolage	\N	162 5th Ave.	NY	Brooklyn	11217	(718) 230-1835	Park Slope	40.6779162999999997	-73.9797240999999985
394	Brindle Room	\N	277 E 10th St.	NY	New York	10009	(212) 529-9702	East Village	40.7282870000000017	-73.9826989999999967
395	Brinkley's Broome Street	\N	406 Broome St.	NY	New York	10003	(212) 680-5600	SoHo	40.7210382000000024	-73.9977803999999963
396	Broadstone Bar & Kitchen	\N	88 Broad St.	NY	New York	10304	(646) 951-3044	Financial District	40.6248509999999996	-74.0781628999999953
397	Broadway Joe Steakhouse	\N	315 W 46th St.	NY	New York	10036	(212) 246-6513	Theater District	40.7603300000000033	-73.988630999999998
398	Broadway Restaurant	\N	2664 Broadway	NY	New York	10025	(212) 865-7074	Manhattan Valley	40.7979162000000031	-73.968938399999999
399	Broadway Station	\N	30-09 Broadway	NY	Astoria	11106	(718) 545-5869	Astoria	40.762340199999997	-73.9256720999999999
400	Broken Land	\N	105 Franklin St.	NY	Brooklyn	11222	(718) 349-2901	Greenpoint	40.7295170000000013	-73.9577879999999936
401	Bronx Ale House	\N	216 W 238th St.	NY	Bronx	10463	(718) 601-0204	Kingsbridge	40.8846486999999996	-73.8996766000000065
402	The Bronx Beer Hall	\N	2344 Arthur Ave.	NY	Bronx	10458	(347) 396-0555	Belmont	40.8541474000000022	-73.8881875000000008
403	Brooklyn Bazaar	\N	150 Greenpoint Ave.	NY	Brooklyn	11222		Greenpoint	40.7299191999999977	-73.9546346999999997
404	Brooklyn Bowl	\N	61 Wythe Ave.	NY	Brooklyn	11249	(718) 963-3369	Williamsburg - North Side	40.7218812999999997	-73.9573946000000007
405	The Brooklyn Brewery	\N	79 N 11th St.	NY	Brooklyn	11211	(718) 486-7422	Williamsburg - North Side	40.7216450000000023	-73.9572579999999959
406	Brooklyn Ice House	\N	318 Van Brunt St.	NY	Brooklyn	11231	(718) 222-1865	Red Hook	40.6791663999999997	-74.0110732999999925
407	Brooklyn Tap House	\N	590 Myrtle Ave.	NY	Brooklyn	11205	(347) 750-7557	Bedford Stuyvesant	40.693942100000001	-73.9607879999999938
408	Brooklyn Winery	\N	213 N 8th St.	NY	Brooklyn	11211	(347) 763-1506	Williamsburg - North Side	40.7172855999999967	-73.9551160999999979
409	The Brooklyneer	\N	220 W Houston St.	NY	New York	10014	(646) 692-4911	South Village	40.7287152999999975	-74.0045779999999951
410	Brookvin	\N	381 7th Ave.	NY	Brooklyn	11215	(718) 768-9463	Park Slope	40.6652845999999997	-73.9826163000000037
411	Broome Street Bar	\N	363 W Broadway	NY	New York	10013	(212) 925-2086	SoHo	40.7230976999999967	-74.002953699999992
412	Brother Jimmy's BBQ	\N	116 E 16th St.	NY	New York	10003	(212) 673-6465	Flatiron	40.7353276999999991	-73.988472399999992
413	Brownstone Brewing Company	\N	200 Portion Rd.	NY	Ronkonkoma	11779	(631) 588-1135	Ronkonkoma	40.826467000000001	-73.1054977999999949
414	Bryant Park Grill	\N	25 W 40th St.	NY	New York	10018	(212) 840-6500	Midtown West	40.7531997999999973	-73.9829572999999954
415	Bua	\N	122 St. Mark's Pl.	NY	New York	10009	(212) 979-6276	East Village	40.7267573999999968	-73.9839455999999984
416	Bubba Gump Shrimp Co.	\N	1501 Broadway	NY	New York	10036	(212) 391-7100	Theater District	40.7572528999999975	-73.9867677999999955
417	Bubby's	\N	120 Hudson St.	NY	New York	10013	(212) 219-0666	TriBeCa	40.7198118000000022	-74.0083091999999994
418	Buceo 95	\N	201 W 95th St.	NY	New York	10025	(212) 662-7010	Upper West Side	40.7936043000000126	-73.9710680999999965
419	Buddakan	\N	75 9th Ave.	NY	New York	10011	(212) 989-6699	Meatpacking District	40.741963400000003	-74.0049147999999946
420	Buddha Beer Bar	\N	4476 Broadway	NY	New York	10040	(646) 861-2595	Washington Heights	40.8572822000000002	-73.931942399999997
421	Buddha Bodai	\N	5 Mott St.	NY	New York	10013	(212) 566-8388	Chinatown	40.7138543000000013	-73.9989484000000033
422	BUDIN	\N	114 Greenpoint Ave.	NY	Brooklyn	11222	(347) 844-9639	Greenpoint	40.7298061999999987	-73.9562156000000073
423	Buffalo Wild Wings	\N	358 B Broadway Mall	NY	Hicksville	11801	(516) 937-9453	Hicksville	40.7730517999999975	-73.5294724000000031
424	Buffalo Wild Wings	\N	253 West 47th Street	NY	New York	10036	(212) 265-9453	Midtown West	40.7602074999999999	-73.9863850999999926
425	Building on Bond	\N	112 Bond St.	NY	Brooklyn	11217	(347) 853-8687	Boerum Hill	40.6864689000000013	-73.9853111999999982
426	Bull & Bear Steakhouse	\N	540 Lexington Ave.	NY	New York	10022	(212) 872-4606	Midtown East	40.7562262000000004	-73.9728566000000001
427	Bull McCabe's	\N	29 St. Marks Pl	NY	New York	10003	(212) 982-9895	East Village	40.7290660000000031	-73.9883035000000007
428	Bungalow Bar & Restaurant	\N	377 Beach 92nd St.	NY	Rockaway Beach	11693	(718) 945-2100	Seaside	40.5889163000000011	-73.8171620999999902
429	Bunny's Sports Bar	\N	12-14 W South Orange Ave.	NJ	South Orange	7079	(973) 763-1377	South Orange	40.7464469000000022	-74.260788699999992
430	Burger & Barrel	\N	25 W Houston St.	NY	New York	10012	(212) 334-7320	SoHo	40.7257159999999985	-73.998069000000001
431	Burger & Lobster	\N	39 W 19th St.	NY	New York	10011	(646) 833-7532	Flatiron	40.7401559999999989	-73.9933659999999946
432	burger joint	\N	119 W 56th St.	NY	New York	10019	(212) 708-7414	Midtown West	40.7641848999999965	-73.9784051000000034
433	Burke & Wills	\N	226 W 79th St.	NY	New York	10024	(646) 823-9251	Upper West Side	40.7833583999999973	-73.9795857999999953
434	Burkes Bar and Restaurant	\N	645 Bronx River Rd.	NY	Yonkers	10704	(914) 237-5137	Yonkers	40.9218831000000023	-73.8473712999999918
435	Burnside	\N	506 Grand St.	NY	Brooklyn	11211	(347) 889-7793	East Williamsburg	40.7107641999999998	-73.9508076999999986
436	Burp Castle	\N	41 E 7th St.	NY	New York	10003	(212) 982-4576	East Village	40.728355999999998	-73.9885644999999954
437	Burrito Bar	\N	307 Flatbush Ave.	NY	Brooklyn	11238	(718) 230-8646	Prospect Heights	40.6783785999999878	-73.9730088000000023
438	Bushwick Country Club	\N	618 Grand St.	NY	Brooklyn	11211	(718) 388-2114	East Williamsburg	40.7110922999999971	-73.9474498999999952
439	Butter Restaurant	\N	70 W 45th St.	NY	New York	10003	(212) 253-2828	Midtown	40.756307900000003	-73.982219299999997
440	Buvette	\N	42 Grove St.	NY	New York	10014	(212) 255-3590	West Village	40.7326167000000012	-74.0043177999999955
441	BXL Belgian Cafe	\N	125 W 43rd St.	NY	New York	10036	(212) 768-0200	Theater District	40.7561117999999993	-73.9846094999999906
442	BXL East	\N	210 E 51st St.	NY	New York	10022	(212) 888-7782	Midtown East	40.7560558999999998	-73.9698285999999996
443	BXL Zoute	\N	50 W 22nd St.	NY	New York	10010	(646) 692-9282	Flatiron	40.7417554000000024	-73.9926202999999987
444	The Cabanas at the Maritime Hotel	\N	88 9th Ave.	NY	New York	10011	(212) 835-5537	Chelsea	40.742457899999998	-74.0038199999999904
445	Cabo	\N	3764 E Tremont Ave.	NY	Throggs Neck	10465	(718) 863-0091	Edgewater Park	40.8257698999999974	-73.8215730999999948
446	Cacio E Pepe	\N	182 2nd Ave.	NY	New York	10003	(212) 505-5931	East Village	40.7306378999999978	-73.9859072999999938
447	Cafe China	\N	13 E 37th St.	NY	New York	10016	(212) 213-2810	Midtown East	40.750110399999997	-73.9820735999999926
448	Cafe Cluny	\N	284 W 12th St.	NY	New York	10011	(212) 255-6900	West Village	40.7373969000000002	-74.0039977999999934
449	Cafe De La Esquina	\N	225 Wythe Ave.	NY	Brooklyn	11249	(718) 393-5500	Williamsburg - North Side	40.7170541999999998	-73.9628086000000025
450	Cafe du Soleil	\N	2723 Broadway	NY	New York	10025	(212) 316-5000	Upper West Side	40.800081800000001	-73.9684417999999937
451	Cafe Habana	\N	17 Prince St.	NY	New York	10012	(212) 625-2001	Nolita	40.7229329999999976	-73.9941929999999957
452	Cafe Katja	\N	79 Orchard St.	NY	New York	10002	(212) 219-9545	Lower East Side	40.7177239000000029	-73.9905955999999918
453	Cafe Lalo	\N	201 W 83rd St.	NY	New York	10024	(212) 496-6031	Upper West Side	40.7859811999999877	-73.9767265999999921
454	Cafe Loup	\N	105 W 13th St.	NY	New York	10011	(212) 255-4746	West Village	40.7369605000000021	-73.9976575000000025
455	Cafe Mocha	\N	116 2nd Ave.	NY	New York	10003	(212) 253-1046	East Village	40.7277859000000007	-73.9879511999999977
456	Cafe Mogador	\N	101 St. Marks Pl	NY	New York	10009	(212) 677-2226	East Village	40.7274409999999989	-73.9843169999999901
457	Cafe Nunez	\N	240 W 35th St.	NY	New York	10001	(212) 564-7444	Midtown West	40.7520798999999982	-73.9918473999999975
458	Cafe Orlin	\N	41 St. Marks Pl	NY	New York	10003	(212) 777-1447	East Village	40.7285103999999976	-73.9870736999999963
459	Cafe Select	\N	212 Lafayette St.	NY	New York	10012	(212) 925-9322	SoHo	40.7218170000000015	-73.9979359999999957
460	Cafe Steinhof	\N	422 7th Ave.	NY	Brooklyn	11215	(718) 369-7776	South Slope	40.6640828000000027	-73.9842079000000012
461	Cafe Tallulah	\N	240 Columbus Ave.	NY	New York	10023	(212) 209-1055	Upper West Side	40.776974899999999	-73.9793585000000036
462	Cafe Un Deux Trois	\N	123 W 44th St.	NY	New York	10036	(212) 354-4148	Theater District	40.7567949000000027	-73.9841260000000034
463	Cafeteria	\N	119 7th Ave.	NY	New York	10011	(212) 414-1717	Chelsea	40.7404854999999984	-73.9979323000000022
464	Caledonia Bar	\N	1609 2nd Ave.	NY	New York	10028	(212) 734-4300	Upper East Side	40.7763120999999984	-73.9532033999999925
465	Calico Jack's	\N	800 2nd Ave.	NY	New York	10017	(212) 557-4300	Midtown East	40.7500617000000034	-73.9716549999999984
466	Caliente Cab Co	\N	61 7th Ave. S	NY	New York	10014	(212) 243-8517	West Village	40.7318202000000014	-74.003547999999995
467	California Pizza Kitchen	\N	440 Park Ave. S	NY	New York	10016	(212) 685-6700	Flatiron	40.7445173000000125	-73.9836042999999961
468	Calle 25	\N	160 W 25th St.	NY	New York	10001	(212) 627-1888	Chelsea	40.7449165000000022	-73.9942350999999974
469	Calle Dao	\N	38 W 39th St.	NY	New York	10018	(212) 221-9002	Midtown West	40.7521591000000001	-73.984221699999992
470	Calle Ocho	\N	45 W 81st St.	NY	New York	10024	(212) 873-5025	Upper West Side	40.7830648999999994	-73.9736711999999983
471	Calogero's	\N	919 Franklin Ave.	NY	Garden City	11530	(516) 294-2922	Garden City	40.7285968000000125	-73.6349443000000008
472	Camaradas El Barrio	\N	2241 1st Ave.	NY	New York	10029	(212) 348-2703	East Harlem	40.7955882999999986	-73.9360705999999936
473	The Campbell Apartment	\N	15 Vanderbilt Ave.	NY	New York	10017	(212) 953-0409	Midtown East	40.7526347000000015	-73.9774642999999941
474	Campeon	\N	9 E 16th St.	NY	New York	10003	(212) 675-4700	Flatiron	40.7371460999999968	-73.9916858999999931
475	Canal Bar	\N	270 3rd Ave.	NY	Brooklyn	11215	(718) 246-0011	Gowanus	40.6779313999999985	-73.9859505000000155
476	Candle 79	\N	154 E 79th St.	NY	New York	10075	(212) 537-7179	Upper East Side	40.7746520999999973	-73.9587231000000003
477	Candle Cafe West	\N	2427 Broadway	NY	New York	10024	(212) 769-8900	Upper West Side	40.7905976999999993	-73.9752696999999984
478	The Cannibal Liquor House	\N	111 E 29th St	NY	New York	10016	(212) 685-5585	Murray Hill	40.7437802999999974	-73.9827379000000036
479	The Cannibal	\N	113 E 29th St.	NY	New York	10016	(212) 686-5480	Flatiron	40.7437541999999979	-73.9826750999999945
480	Canterbury's Oyster Bar & Grill	\N	46 Audrey Ave.	NY	Oyster Bay	11771	(516) 922-3614	Oyster Bay	40.8732542999999993	-73.5314850000000035
481	Cantina 1838	\N	1838 Adam Clayton Powell Jr Blvd.	NY	New York	10026	(646) 755-8864	Harlem	40.8003827000000001	-73.9550991999999923
482	Cantina Rooftop Restaurant & Lounge	\N	605 W 48th St.	NY	New York	10036	(212) 957-1700	Midtown West	40.7650760000000005	-73.995986000000002
483	Cantina Tequila Bar & Southwest Grill	\N	135 Bedford St.	CT	Stamford	6901	(203) 674-5652	Stamford	41.0561758999999995	-73.5381880999999993
484	Canyon Road Grill	\N	1470 First Ave.	NY	New York	10021	(212) 734-1600	Upper East Side	40.7705841000000007	-73.9536118999999985
485	Cape House	\N	2 Knickerbocker Ave.	NY	Brooklyn	11237	(718) 821-2580	East Williamsburg	40.7074138999999988	-73.931956900000003
486	The Capital Grille	\N	155 E 42nd St.	NY	New York	10017	(212) 953-2000	Midtown East	40.751165499999999	-73.9748855999999932
487	Capizzi	\N	547 9th Ave.	NY	New York	10018	(212) 695-6900	Theater District	40.7574882999999986	-73.9936831999999924
488	Caracas Arepa Bar	\N	93 1/2 E 7th St.	NY	New York	10009	(212) 529-2314	East Village	40.7269447999999983	-73.9852698999999916
489	Carbone	\N	181 Thompson St.	NY	New York	10012	(212) 254-3000	Greenwich Village	40.7279890999999878	-74.0002310999999935
490	Carlow East	\N	1254 Lexington Ave.	NY	New York	10028	(212) 744-6397	Upper East Side	40.7786561000000134	-73.9564712999999898
491	Carmine's	\N	200 W 44th St.	NY	New York	10036	(212) 221-3800	Theater District	40.7574972999999972	-73.9867787999999962
492	Carmine's Pizzeria	\N	358 Graham Ave.	NY	Brooklyn	11211	(718) 782-9659	East Williamsburg	40.7149867999999984	-73.9441705999999925
493	Carolines	\N	1626 Broadway	NY	New York	10019	(212) 757-4100	Midtown West	40.7610604999999993	-73.9840109999999953
494	Carpe Diem Pub & Restaurant	\N	1405 Grand St.	NJ	Hoboken	7030	(201) 792-0050	Hoboken	40.7544566999999986	-74.0313105999999976
495	Carragher's Pub	\N	228 West 39th St.	NY	New York	10018	(646) 370-1545	Midtown West	40.7543999999999969	-73.9895413999999931
496	Carroll Place	\N	157 Bleecker St.	NY	New York	10012	(212) 260-1700	Greenwich Village	40.7287018000000032	-73.9997100000000074
497	Casa La Femme	\N	140 Charles St.	NY	New York	10014	(212) 505-0005	West Village	40.7339444999999998	-74.0081122999999934
498	Casa Lever	\N	390 Park Ave.	NY	New York	10022	(212) 888-2700	Midtown East	40.759597399999997	-73.9728451999999947
499	Casa Mezcal	\N	86 Orchard St.	NY	New York	10002	(212) 777-2661	Lower East Side	40.7179201999999876	-73.9901253000000025
500	Casa Mono	\N	52 Irving Pl	NY	New York	10003	(212) 253-2773	Union Square	40.7358935999999972	-73.9871361000000007
501	Casa Nonna	\N	310 W 38th St.	NY	New York	10018	(212) 736-3000	Midtown West	40.7549994999999967	-73.9927852999999942
502	Casa Pepe	\N	114 Bay Ridge Ave.	NY	Brooklyn	11220	(718) 833-8865	Bay Ridge	40.6373022999999876	-74.0317673999999926
503	Casablanca Cocktail Lounge	\N	300 Malcolm X Blvd.	NY	Brooklyn	11233		Bedford Stuyvesant	40.682570400000003	-73.9292222999999922
504	Cascabel Taqueria	\N	1556 2nd Ave.	NY	New York	10028	(212) 717-8226	Upper East Side	40.7743636000000009	-73.9539915999999948
505	Casellula	\N	401 W 52nd St.	NY	New York	10019	(212) 247-8137	Hell's Kitchen	40.7649674999999974	-73.9882477000000023
506	Cask Bar + Kitchen	\N	167 E 33rd St.	NY	New York	10016	(212) 300-4924	Midtown East	40.745371200000001	-73.9790138999999982
507	Cassidy's	\N	65 W 55th St.	NY	New York	10019	(212) 397-0814	Midtown West	40.7628464000000008	-73.9771994999999976
508	The Castello Plan	\N	1213 Cortelyou Rd.	NY	Brooklyn	11218	(718) 856-8888	Flatbush	40.6403401000000031	-73.9666758999999985
509	Casual Habana	\N	125 Main St.	NJ	Hackensack	7601	(201) 880-9844	Hackensack	40.8821972000000002	-74.0438639999999992
510	Catch	\N	21 Ninth Ave.	NY	New York	10014	(212) 392-5978	Meatpacking District	40.7401270000000011	-74.0062020000000018
511	Catfish	\N	1433 Bedford Ave.	NY	Brooklyn	11216	(347) 305-3233	Crown Heights	40.6741284000000007	-73.9536020000000036
512	Caviarteria	\N	75 Murray St.	NY	New York	10007	(212) 759-7410	TriBeCa	40.7148260000000022	-74.0105369999999994
513	Cebu Bar & Bistro	\N	8801 3rd Ave.	NY	Brooklyn	11209	(718) 492-5095	Bay Ridge	40.6218994999999978	-74.0314415999999937
514	Ceci Italian Cuisine	\N	46 W 46th St.	NY	Manhattan	10036	(212) 307-5484	Midtown	40.7567064999999999	-73.9811730999999924
515	Cedar Local	\N	25 Cedar St.	NY	New York	10005	(212) 344-3467	Financial District	40.7070857000000075	-74.0080806999999936
516	Cedars	\N	5 Main Ave.	NJ	Wallington	7057	(973) 470-8880	Wallington	40.8548509000000024	-74.1190899999999999
517	Cellar 335	\N	335 Newark Ave.	NJ	Jersey City	7302	(201) 222-1422	Jersey City	40.7249282999999878	-74.0515951000000001
518	Cellar 58	\N	58 2nd Ave.	NY	New York	10003	(212) 420-1300	East Village	40.7256536000000011	-73.9893980000000084
519	The Cellar at Beecher's Handmade Cheese	\N	900 Broadway	NY	New York	10003	(212) 466-3340	Flatiron	40.7388487999999995	-73.9895118000000025
520	Cello Wine Bar	\N	229 E 53rd St.	NY	New York	10022	(917) 475-1131	Midtown East	40.7573762000000031	-73.9681027999999969
521	Cent'Anni	\N	742 Franklin Ave.	NY	Brooklyn	11238	(718) 942-5201	Crown Heights	40.6731120999999973	-73.9573544999999939
522	The Central Bar	\N	109 E 9th St.	NY	New York	10003	(212) 529-5333	East Village	40.7305173000000025	-73.989910100000003
523	Chai	\N	930 8th Ave.	NY	New York	10019	(212) 707-8778	Midtown West	40.7654187999999991	-73.9835088999999897
524	Chalk Point Kitchen	\N	527 Broome St.	NY	New York	10013	(212) 390-0327	South Village	40.7237174999999993	-74.0041483999999912
525	Chance Asian Bistro & Bar	\N	223 Smith St.	NY	Brooklyn	11201	(718) 242-1515	Cobble Hill	40.6842074999999994	-73.9919541000000009
526	Changing Times Ale House	\N	526B Larkfield Rd.	NY	East Northport	11731	(631) 368-3255	East Northport	40.8615283000000034	-73.3209208999999902
527	Characters NYC	\N	245 W 54th St.	NY	New York	10019	(212) 459-8904	Theater District	40.7646905000000004	-73.9835441999999972
528	Charlie Bullfrogs	\N	316 Jericho Tpke.	NY	Floral Park	11001	(516) 352-2384	Floral Park	40.7294274999999999	-73.6988642999999968
529	Charlie Meaney's Bar & Grill	\N	52 Central Ct.	NY	Valley Stream	11580	(516) 596-2337	Valley Stream	40.6815749000000011	-73.711583399999995
530	Charlie's Bar & Kitchen	\N	112 Lincoln Ave.	NY	Bronx	10454	(718) 684-2338	Bronx	40.8079693999999975	-73.9290876000000168
531	Chateau Haveli	\N	11633 Queens Blvd.	NY	Forest Hills	11375	(718) 261-8880	Forest Hills	40.7159258000000008	-73.8326115999999928
532	Chavela's	\N	736 Franklin Ave.	NY	Brooklyn	11238	(718) 622-3100	Crown Heights	40.6734763999999984	-73.9572251000000165
533	Chef Yu	\N	520 8th Ave.	NY	New York	10018	(212) 736-6150	Midtown West	40.7536449999999988	-73.9919341000000088
534	The Chelsea Bell	\N	316 8th Ave.	NY	New York	10001	(212) 242-2425	Chelsea	40.7468312000000026	-73.9967577000000034
535	Cherche Midi	\N	282 Bowery	NY	New York	10012	(212) 226-3055	Nolita	40.7239623999999978	-73.9929991999999999
536	Cherry Tree	\N	65 4th Ave.	NY	Brooklyn	11217	(718) 399-1353	Park Slope	40.6821332999999967	-73.9794905999999912
537	Cheryl's Global Soul	\N	236 Underhill Ave.	NY	Brooklyn	11238	(347) 529-2855	Prospect Heights	40.6735951000000071	-73.9674936999999915
538	Chevys Fresh Mex	\N	259 W 42nd St.	NY	New York	10036	(212) 302-4010	Theater District	40.7572094999999877	-73.9893309999999929
539	Chez Josephine	\N	414 W 42nd St.	NY	New York	10036	(212) 594-1925	Hell's Kitchen	40.7585254000000035	-73.9935399000000018
540	Chez Lucienne	\N	308 Malcolm X Blvd.	NY	New York	10027	(212) 289-5555	Harlem	40.8079466000000011	-73.9448776999999922
541	Chez Moi	\N	135 Atlantic Ave.	NY	Brooklyn	11201	(347) 227-8337	Cobble Hill	40.6907883000000012	-73.9956379999999996
542	Chili's Grill & Bar	\N	425 Washington Blvd.	NJ	Jersey City	7310	(201) 239-1064	Jersey City	40.722479100000001	-74.0367138000000011
543	China Grill	\N	60 W 53rd St.	NY	New York	10019	(212) 333-7788	Midtown West	40.761254000000001	-73.9787649999999957
544	Chirping Chicken	\N	355 Amsterdam Ave.	NY	New York	10024	(212) 787-6631	Upper West Side	40.7815859999999972	-73.9790459999999968
545	Chocolat Restaurant Lounge	\N	2217-23 Frederick Douglas Blvd.	NY	New York	10026	(212) 222-4545	Harlem	40.8069256000000067	-73.9539472000000018
546	Chorus Karaoke	\N	25 W 32nd St.	NY	New York	10001	(212) 967-2244	Midtown West	40.7479292000000015	-73.986775900000012
547	Chuko	\N	552 Vanderbilt Ave.	NY	Brooklyn	11238	(718) 576-6701	Prospect Heights	40.6801335999999978	-73.968232300000011
548	The Churchill Tavern	\N	45 E 28th St.	NY	New York	10016	(646) 476-8419	Flatiron	40.7436304000000007	-73.9844174999999922
549	Cibar	\N	56 Irving Pl	NY	New York	10003	(212) 460-5656	Gramercy	40.7359318999999971	-73.9870190999999977
550	Cienfuegos	\N	95 Ave. A	NY	New York	10009	(212) 614-6818	East Village	40.7256616000000022	-73.9841138000000029
551	Cilantro	\N	485 Columbus Ave.	NY	New York	10024	(212) 712-9090	Upper West Side	40.7846430000000026	-73.9731452999999988
552	Cinco de Mayo Restaurant	\N	1202 Cortelyou Rd.	NY	Brooklyn	11218	(718) 693-1022	Flatbush	40.6398889000000025	-73.9668209000000019
553	City Bistro	\N	56-58 14th St.	NJ	Hoboken	7030	(201) 963-8200	Hoboken	40.7533701999999991	-74.0256138999999962
554	City Crab Shack	\N	10 E 16th St.	NY	New York	10003	(212) 529-3800	Flatiron	40.7368256000000031	-73.9920489999999944
555	City Swiggers	\N	320 East 86th St.	NY	New York	10028	(212) 570-2000	Upper East Side	40.7772713000000024	-73.9509626999999909
556	City Winery	\N	155 Varick St.	NY	New York	10013	(212) 608-0555	South Village	40.7262757000000022	-74.0060002000000026
557	CJ's Bar and Lounge	\N	137-09 Crossbay Blvd.	NY	Ozone Park	11417	(718) 848-2498	Ozone Park	40.6718669999999989	-73.8426610000000068
558	CK14 - The Crooked Knife	\N	232 W 14th St.	NY	New York	10011	(212) 929-4534	West Village	40.7390109999999979	-74.001458999999997
559	The Clam	\N	420 Hudson St.	NY	New York	10014	(212) 242-7420	West Village	40.7303198999999978	-74.0065673999999944
560	Claudette	\N	24 5th Ave.	NY	New York	10011	(212) 868-2424	Greenwich Village	40.7331928999999988	-73.9959671999999955
561	Claw Daddy's	\N	185 Orchard St.	NY	New York	10002	(646) 590-6816	Lower East Side	40.7220709999999997	-73.9884699999999924
562	Clem's	\N	264 Grand St.	NY	Brooklyn	11211	(718) 387-9617	Williamsburg	40.7132014999999967	-73.958631799999992
563	Clinton Hall	\N	90 Washington St.	NY	New York	10006	(212) 363-6000	Financial District	40.7080300000000008	-74.0148689999999903
564	The Clocktower	\N	5 Madison Ave.	NY	New York	10010	(212) 413-4300	Flatiron	40.7412743000000006	-73.9873663999999991
565	Clockwork Bar	\N	21 Essex St.	NY	New York	10002	(212) 677-4545	Lower East Side	40.7153867999999974	-73.9900751999999926
566	Cloud Social Rooftop Bar	\N	6 W 32nd St.	NY	New York	10001	(212) 904-1092	Midtown West	40.747296200000001	-73.9863411999999983
567	Clover Club	\N	210 Smith St.	NY	Brooklyn	11201	(718) 855-7939	Cobble Hill	40.6845902000000024	-73.9921480000000003
568	Clyde Frazier's Wine and Dine	\N	485 10th Ave.	NY	New York	10018	(212) 842-1110	Midtown West	40.7567888999999965	-73.9979591999999968
569	Coal Yard Bar	\N	102 1st Ave.	NY	New York	10009	(212) 677-4595	East Village	40.7264229999999969	-73.9858085999999986
570	Cobblestone's Pub	\N	11718 Queens Blvd.	NY	Forest Hills	11375	(718) 263-9754	Forest Hills	40.714973999999998	-73.8327409999999986
571	Cock & Bull	\N	23 W 45th St.	NY	New York	10036	(212) 819-1900	Midtown	40.756059999999998	-73.9804943000000037
572	Cocoa Bar	\N	21 Clinton St.	NY	New York	10002	(212) 677-7417	Lower East Side	40.7206708999999876	-73.9844566999999955
573	Coda Kitchen & Bar	\N	177 Maplewood Ave.	NJ	Maplewood	7040	(973) 327-2247	Maplewood	40.7307372000000001	-74.2785762000000034
574	Code Lounge	\N	197-15 Jamaica Ave.	NY	Hollis	11423	(917) 468-7437	Hollis	40.7135887999999966	-73.7622665999999896
575	Coffee Shop	\N	29 Union Sq W	NY	New York	10003	(212) 243-7969	Flatiron	40.7365123000000011	-73.9910285999999928
576	Colibri	\N	132 1st Ave.	NY	New York	10009	(212) 473-7200	East Village	40.7274071000000006	-73.9851407999999964
577	The Coliseum	\N	312 W 58th St.	NY	New York	10019	(212) 977-3523	Hell's Kitchen	40.7675444000000127	-73.9832992999999988
578	Colombia In Park Slope	\N	376 5th Ave.	NY	Brooklyn	11215	(718) 369-2020	Park Slope	40.6712890000000016	-73.9848360999999954
579	Colonie	\N	127 Atlantic Ave.	NY	Brooklyn	11201	(718) 855-7500	Brooklyn Heights	40.6908463999999981	-73.9958421999999985
580	Colors	\N	178 Stanton St.	NY	New York	10002	(212) 777-8443	Lower East Side	40.7202021000000016	-73.9839685999999972
581	The Commodore	\N	366 Metropolitan Ave.	NY	Brooklyn	11211	(718) 218-7632	Williamsburg - North Side	40.7139371000000025	-73.955863100000002
582	Community Food & Juice	\N	2893 Broadway	NY	New York	10025	(212) 665-2800	Morningside Heights	40.8059632999999877	-73.9657625999999908
583	Compagnie des Vins Surnaturels	\N	249 Centre St.	NY	New York	10013	(212) 343-3660	Little Italy	40.7205188000000007	-73.9981319000000042
584	Connolly's Corner	\N	71-15 Grand Ave.	NY	Maspeth	11378	(718) 565-7383	Maspeth	40.7282749000000024	-73.8918839999999904
585	Connolly's Pub & Restaurant	\N	14 E 47th St.	NY	New York	10017	(212) 867-3767	Midtown East	40.7561728000000016	-73.9778117999999978
586	Connolly's Pub & Restaurant	\N	121 W 45th St.	NY	New York	10036	(212) 597-5126	Theater District	40.7573628000000028	-73.9835781999999966
587	Continental	\N	25 3rd Ave.	NY	New York	10003	(212) 529-6924	East Village	40.7295682000000028	-73.9894889999999918
588	Cookshop	\N	156 10th Ave.	NY	New York	10011	(212) 924-4440	Chelsea	40.7455190000000016	-74.0054832999999945
589	Cooper's Craft & Kitchen	\N	87 2nd Ave.	NY	New York	10003	(646) 606-2384	East Village	40.7270499999999984	-73.9892019999999917
590	Copacabana Nightclub	\N	268 W 47th St.	NY	New York	10036	(212) 221-2672	Theater District	40.7601659999999981	-73.9872589000000005
591	Coppelia	\N	207 W 14th St.	NY	New York	10011	(212) 858-5001	Chelsea	40.7389413000000005	-73.9999672000000146
592	Copper Kettle Bar & Restaurant	\N	5024 Skillman Ave.	NY	Woodside	11377	(718) 335-7596	Woodside	40.7458865999999986	-73.9135599000000099
593	The Copper Still	\N	151 2nd Ave.	NY	New York	10003	(212) 510-8469	East Village	40.7295431999999877	-73.9872385000000037
594	Coquito	\N	31 Forester Ave.	NY	Warwick	10990	(845) 544-2790	Warwick	41.2578806	-74.3549117999999964
595	Corcho Wine Room	\N	231 Dykman St.	NY	New York	10034	(212) 203-3371	Inwood	40.8660513000000023	-73.9276237999999921
596	Cork 'n Fork	\N	186 Ave. A	NY	New York	10009	(646) 707-0707	East Village	40.7288217999999986	-73.9812515999999931
597	Corkbuzz Wine Studio	\N	13 E 13 St.	NY	New York	10003	(646) 873-6071	Union Square	40.7350747999999996	-73.9931412999999907
598	Corkscrew Bar	\N	61 Congress St.	NJ	Jersey City	7307	(201) 239-0087	Jersey City	40.7495836000000011	-74.0431167999999928
599	Corner Bistro	\N	331 W 4th St.	NY	New York	10014	(212) 242-9502	West Village	40.7380122	-74.0037822999999975
600	Corner Social	\N	321 Lenox Ave.	NY	New York	10027	(212) 510-8552	Harlem	40.8087271999999999	-73.9452828000000011
601	Cornerstone Tavern	\N	961 2nd Ave.	NY	New York	10022	(212) 888-7403	Midtown East	40.755502700000001	-73.9683794000000177
602	Corona Restaurant	\N	5421 5th Ave.	NY	Brooklyn	11220	(718) 567-2816	Sunset Park	40.642341100000003	-74.0129093999999981
603	The Counting Room	\N	44 Berry St.	NY	Brooklyn	11211	(718) 599-1860	Williamsburg - North Side	40.7212096000000017	-73.9565601999999984
604	Cove Lounge	\N	325 Lenox Ave.	NY	New York	10027	(212) 665-3455	Harlem	40.8088164999999989	-73.9452136000000024
605	Cowgirl Hall of Fame	\N	519 Hudson St.	NY	New York	10014	(212) 633-1133	West Village	40.7339320000000029	-74.0066059999999908
606	Cowgirl Sea Horse	\N	259 Front St.	NY	New York	10038	(212) 608-7873	Financial District	40.7081018000000086	-74.0004591999999946
607	Cozy Cafe	\N	43 E 1st St.	NY	New York	10003	(212) 475-0177	East Village	40.7237592999999976	-73.9900232999999901
608	Crabtree's Restaurant	\N	226 Jericho Tpke	NY	Floral Park	11001	(516) 326-7769	Floral Park	40.7286801999999994	-73.7024803999999989
609	Craft House	\N	60 Vanduzer St.	NY	Tompkinsville	10301	(718) 442-3433	Tompkinsville	40.6364141999999973	-74.077540500000012
610	Craftbar	\N	900 Broadway	NY	New York	10003	(212) 461-4300	Flatiron	40.7388487999999995	-73.9895118000000025
611	The Craftsman Ale House	\N	235 Harrison Ave.	NY	Harrison	10528	(914) 630-7484	Harrison	40.9682219000000032	-73.7123176999999998
612	Crave Fishbar	\N	945 2nd Ave.	NY	New York	10022	(646) 895-9585	Midtown East	40.7551289000000025	-73.9686887000000013
613	Crazy Annie's	\N	3910 Broadway	NY	New York	10032	(212) 740-5700	Washington Heights	40.8381597999999997	-73.9414518999999899
614	The Creek & The Cave	\N	10-93 Jackson Ave.	NY	Long Island City	11101	(718) 706-8783	Hunters Point	40.7432457000000028	-73.9517041000000006
615	Crew Kitchen & Bar	\N	134 New York Ave.	NY	Huntington	11743	(631) 549-3338	Huntington	40.8853310000000008	-73.417821399999994
616	Crimson & Rye	\N	198 E 54th St.	NY	New York	10022	(212) 687-6692	Midtown East	40.7580868000000009	-73.9687428000000011
617	Crispo	\N	240 W 14th St.	NY	New York	10011	(212) 229-1818	West Village	40.7391368999999983	-74.001806000000002
618	Crocodile Lounge	\N	325 E 14th St.	NY	New York	10003	(212) 477-7747	Gramercy	40.7320729999999998	-73.9837289999999967
619	Crompton Ale House	\N	159 W 26th St.	NY	New York	10001	(212) 658-0089	Chelsea	40.7458602000000027	-73.993376799999993
620	Cronin & Phelan's	\N	38-14 Broadway	NY	Astoria	11102	(718) 545-8999	Astoria	40.7589414999999988	-73.9194008999999994
621	The Crooked Knife	\N	29 E 30th St.	NY	New York	10016	(212) 696-2593	Midtown East	40.7451763999999983	-73.9841558000000106
622	Crostini Pizza	\N	947 N Broadway	NY	North Massapequa	11758	(516) 799-6189	North Massapequa	40.7025142999999971	-73.4623426999999936
623	Croton Reservoir Tavern	\N	108 W 40th St.	NY	New York	10018	(212) 997-6835	Midtown West	40.7536661999999978	-73.9858342999999934
624	The Crown Inn	\N	724 Franklin Ave.	NY	Brooklyn	11238	(347) 915-1131	Crown Heights	40.6738430999999991	-73.956820399999998
625	Crownside	\N	791 Washington Ave.	NY	Brooklyn	11238	(718) 230-0940	Prospect Heights	40.6729150000000033	-73.9625525999999951
626	Croxley Ales	\N	28 Ave B	NY	New York	10009	(212) 253-6140	East Village	40.7224801999999997	-73.9833861999999982
627	Cuba	\N	222 Thompson St.	NY	New York	10012	(212) 420-7878	Greenwich Village	40.7290915999999967	-73.9988445999999982
628	Cubbyhole	\N	281 W 12th St.	NY	New York	10014	(212) 243-9041	West Village	40.7376793999999975	-74.0037708999999921
629	Cucina Di Pesce	\N	87 E 4th St.	NY	New York	10003	(212) 260-6800	East Village	40.7265054999999876	-73.9897648000000032
630	Cucina E Vino Petrarca	\N	34 White St.	NY	New York	10013	(212) 625-2800	TriBeCa	40.7188978999999875	-74.004583199999999
631	Cuckoo's Nest	\N	6104 Woodside Ave.	NY	Woodside	11377	(718) 426-5684	Woodside	40.7446685000000031	-73.9035574999999909
632	Cue Bar	\N	45-18 Bell Blvd.	NY	Bayside	11360	(718) 631-2646	Bayside	40.7597200000000015	-73.7694120000000026
633	Cull & Pistol Oyster Bar	\N	75 Ninth Ave.	NY	New York	10011	(646) 568-1223	Meatpacking District	40.741963400000003	-74.0049147999999946
634	CUPER	\N	20 Pearl St.	NY	Brooklyn	11201	(646) 381-3606	DUMBO	40.7043905000000024	-73.9875016000000016
635	The Cupping Room Cafe	\N	359 W Broadway	NY	New York	10013	(212) 925-2898	SoHo	40.722999999999999	-74.0030485999999996
636	The Cutting Room	\N	44 E 32nd St.	NY	New York	10016	(212) 691-1900	Midtown East	40.7458467000000013	-73.9829265000000049
637	D & D's	\N	191 S Main St.	NY	New City	10956	(845) 639-0178	New City	41.1407862000000009	-73.9910244999999946
638	D'Amore Winebar & Ristorante	\N	118 E 116th St.	NY	New York	10029	(646) 678-3681	East Harlem	40.7986811999999972	-73.9424262999999939
639	D'Antigua Lounge	\N	84-16 Northern Blvd.	NY	Jackson Heights	11372	(718) 779-0128	Jackson Heights	40.7555860000000081	-73.8831601999999918
640	d.b.a.	\N	41 1st Ave.	NY	New York	10003	(212) 475-5097	East Village	40.7243629999999968	-73.9880600999999984
641	D.J. Reynolds	\N	351 W 57th St.	NY	New York	10019	(212) 245-2912	Hell's Kitchen	40.7678208000000026	-73.9849813000000012
642	Da Marcella	\N	142 W Houston St.	NY	New York	10012	(646) 559-9192	Greenwich Village	40.7280820999999875	-74.0016868000000017
643	Da Mikele	\N	275 Church St.	NY	New York	10013	(212) 925-8800	TriBeCa	40.7184833999999967	-74.0048124999999999
644	Daddy-O	\N	44 Bedford St.	NY	New York	10014	(212) 414-8884	West Village	40.7304193000000012	-74.0041214999999966
645	DaddyO's BBQ and Sports Bar	\N	35 Androvette St.	NY	Staten Island	10309	(718) 948-3333	Staten Island	40.535102700000003	-74.2371697999999896
646	The Daily	\N	210 Elizabeth St.	NY	New York	10012	(212) 343-7011	Nolita	40.7221979999999988	-73.9940806999999978
647	The Daisy	\N	1641 Second Ave.	NY	New York	10028	(646) 964-5756	Upper East Side	40.777390699999998	-73.952397899999994
648	The Dakota Bar	\N	53 W 72nd St.	NY	New York	10023	(212) 787-0700	Upper West Side	40.7775212000000025	-73.978352600000008
649	Dallas BBQ	\N	241 W 42nd St.	NY	New York	10036	(212) 221-9000	Theater District	40.7570673000000028	-73.9886247999999966
650	Dalton's Bar & Grill	\N	611 9th Ave.	NY	New York	10036	(212) 245-5511	Hell's Kitchen	40.7594603999999876	-73.9922907999999921
651	Daniel	\N	60 E 65th St.	NY	New York	10065	(212) 288-0033	Upper East Side	40.7666933	-73.9677688999999958
652	Dante	\N	79-81 Macdougal St.	NY	New York	10012	(212) 982-5275	Greenwich Village	40.7288433000000012	-74.0016516000000024
653	Darbar Grill	\N	157 E 55th St.	NY	New York	10022	(212) 751-4600	Midtown East	40.7592528999999999	-73.9689005999999978
654	Dardy Bar	\N	245 S 1st St.	NY	Brooklyn	11211	(718) 599-2455	Williamsburg - South Side	40.7127691000000027	-73.9579152000000022
655	Dark Horse	\N	17 Murray St.	NY	New York	10007	(212) 608-3900	TriBeCa	40.7136819999999986	-74.0080497999999949
656	Dave & Buster's	\N	234 W 42nd St.	NY	New York	10036	(646) 495-2015	Theater District	40.7563591999999986	-73.9888727999999958
657	Davey's	\N	5 Park St.	NJ	Montvale	7645	(201) 391-9356	Montvale	41.0397555999999994	-74.0296665999999988
658	DB Bistro Moderne	\N	55 W 44th St.	NY	New York	10036	(212) 391-2400	Midtown West	40.7559406000000024	-73.9821116999999902
659	DBGB Kitchen and Bar	\N	299 Bowery	NY	New York	10003	(212) 933-5300	NoHo	40.724384299999997	-73.992132600000005
660	Deacon Brodie's	\N	370 W 46th St.	NY	New York	10036	(212) 262-1452	Hell's Kitchen	40.7606718999999984	-73.9904248999999936
661	The Dead Poet	\N	450 Amsterdam Ave.	NY	New York	10024	(212) 595-5670	Upper West Side	40.7849823000000029	-73.9773368999999974
662	The Dead Rabbit	\N	30 Water St.	NY	New York	10004	(646) 422-7906	Financial District	40.7032931000000033	-74.0110308000000003
663	Dear Irving	\N	55 Irving Pl	NY	New York	10003		Flatiron	40.7362291000000027	-73.9874303999999938
664	Death & Co	\N	433 E 6th St.	NY	New York	10009	(212) 388-0882	East Village	40.7259200000000021	-73.9846452000000028
665	Death Ave Cafe	\N	317 10th Ave.	NY	New York	10001	(212) 695-8080	Chelsea	40.7511652999999967	-74.0020110999999901
666	Del Frisco's Double Eagle Steak House	\N	1221 Avenue of the Americas	NY	New York	10020	(212) 575-5129	Theater District	40.7594247999999979	-73.9822223999999977
667	Del Frisco's Grille	\N	50 Rockefeller Plz	NY	New York	10020	(212) 767-0371	Midtown West	40.7595930999999965	-73.9782142999999905
668	Del Posto	\N	85 10th Ave.	NY	New York	10011	(212) 497-8090	Chelsea	40.7432086000000027	-74.0079542000000004
669	The Delancey	\N	168 Delancey St.	NY	New York	10002	(212) 254-9920	Lower East Side	40.7180107999999876	-73.9852803999999935
670	Delilah	\N	155 Rivington St.	NY	New York	10002	(212) 777-2520	Lower East Side	40.7190720999999982	-73.9856199999999973
671	Dell' Anima	\N	38 8th Ave.	NY	New York	10014	(212) 366-6633	West Village	40.7379545000000007	-74.0040067999999991
672	Delmonico's	\N	56 Beaver St.	NY	New York	10004	(212) 509-1144	Financial District	40.7049161999999995	-74.010419799999994
673	Delmonico's Kitchen	\N	207 W 36th St.	NY	New York	10001	(212) 695-5220	Midtown West	40.7526176000000007	-73.9901605000000018
674	Denino's Greenwich Village	\N	93 Macdougal St.	NY	New York	10012	6468386987	Greenwich Village	40.7294111000000001	-74.0011690999999985
675	Denino's Pizzeria & Tavern	\N	93 MacDougal St.	NY	New York	10012	(646) 838-6987	Greenwich Village	40.7294111000000001	-74.0011690999999985
676	Desnuda	\N	221 S 1st St.	NY	New York	11211	(718) 387-0563	Williamsburg - South Side	40.7130409000000029	-73.9590072000000021
677	Desnuda	\N	122 E 7th St.	NY	New York	10009	(212) 254-3515	East Village	40.7261835999999988	-73.9842689999999976
678	Despaña	\N	408 Broome St.	NY	New York	10013	(212) 219-5050	SoHo	40.7211240000000032	-73.9979048999999947
679	DeStefano's Steakhouse	\N	89 Conselyea St.	NY	Brooklyn	11211	(718) 384-2836	Williamsburg - North Side	40.7150430000000014	-73.947690399999999
680	Desy's Clam Bar	\N	562 Grand St.	NY	Brooklyn	11211	(347) 599-0267	East Williamsburg	40.7109394000000009	-73.9492852999999997
681	Deweys Pub	\N	135 W 30th St.	NY	New York	10001	(212) 685-7781	Midtown West	40.748223000000003	-73.9911922999999945
682	Diamante's Brooklyn Cigar Lounge	\N	108 S Oxford St.	NY	Brooklyn	11217	(646) 462-3876	Fort Greene	40.686341800000001	-73.9736122999999992
683	Diamond Dogs	\N	34-04 31st Ave.	NY	Astoria	11106	(929) 522-0061	Astoria	40.7629396999999969	-73.921032000000011
684	The Diamond	\N	43 Franklin St.	NY	Brooklyn	11222	(718) 383-5030	Greenpoint	40.726753500000008	-73.9574736999999942
685	Die Koelner Bierhalle	\N	84 St. Marks Pl.	NY	Brooklyn	11217	(347) 227-7238	Park Slope	40.6814071000000013	-73.9795149999999921
686	Dillingers Pub & Grill	\N	46-19 30th Ave.	NY	Astoria	11103	(718) 956-5601	Astoria	40.7615010000000026	-73.9093500000000034
687	Dining Room Bar & Grill	\N	56 Willoughby St.	NY	Brooklyn	11201	(718) 488-8902	Downtown Brooklyn	40.6920049000000006	-73.9866310999999968
688	Dinner On Ludlow	\N	95 Delancey St.	NY	New York	10002	(212) 228-0909	Lower East Side	40.7185896000000014	-73.9893677000000025
689	Dinosaur Bar-B-Que	\N	700 W 125th St.	NY	Harlem	10027	(212) 694-1777	Harlem	40.8181075000000035	-73.9608794999999901
690	Dirty Pierre's	\N	13 Station Square	NY	Forest Hills	11375	(718) 830-9698	Forest Hills	40.7192768000000029	-73.8453482000000037
691	Disiac Lounge	\N	402 W 54th St.	NY	New York	10019	(212) 586-9880	Hell's Kitchen	40.7660578999999998	-73.9876510999999937
692	Distilled	\N	211 W Broadway	NY	New York	10013	(212) 601-9514	TriBeCa	40.7188968999999972	-74.006219999999999
693	The Distillery	\N	785 9th Ave.	NY	New York	10019	(212) 767-0077	Midtown West	40.7650801999999999	-73.9881594000000007
694	District Social	\N	252 W 37th St.	NY	New York	10018	(212) 994-9599	Midtown West	40.7535892000000004	-73.9914619000000044
695	District Tap House	\N	246 W 38th St.	NY	New York	10018	(212) 221-1822	Midtown West	40.7540394000000035	-73.9905012999999911
696	The District	\N	1679 3rd Ave.	NY	New York	10128	(212) 289-2005	Upper East Side	40.7838509999999985	-73.9498920000000055
697	Ditch Plains	\N	29 Bedford St.	NY	New York	10014	(212) 633-0202	West Village	40.7292095000000032	-74.0037947999999943
698	Dive 75	\N	101 W 75th St.	NY	New York	10023	(212) 362-7518	Upper West Side	40.7795976999999965	-73.9776006000000024
699	DiWine	\N	41-15 31st Ave.	NY	Astoria	11103	(718) 777-1355	Astoria	40.7608460000000008	-73.9155646999999902
700	The DL	\N	95 Delancy St.	NY	New York	10002	(212) 228-0909	Lower East Side	40.7185896000000014	-73.9893677000000025
701	Doc Watson's	\N	1490 2nd Ave.	NY	New York	10075	(212) 988-5300	Upper East Side	40.772279300000001	-73.9555177000000015
702	Docks Oyster Bar and Seafood and Grill	\N	633 3rd Ave.	NY	New York	10017	(212) 986-8080	Midtown East	40.749625199999997	-73.974669899999995
703	Doka Square	\N	53 Delancey St.	NY	New York	10002	(646) 918-7919	Lower East Side	40.7193176999999977	-73.9915171999999899
704	Don Coqui	\N	28-18 31st St.	NY	Astoria	11102	(718) 274-7474	Astoria	40.7680204999999987	-73.9207655999999957
705	Don Coqui on the Water	\N	565 City Island Ave.	NY	City Island	10464	(718) 412-0888	City Island	40.8534283999999985	-73.7908250999999922
706	Don't Tell Mama Piano Bar	\N	343 W 46th St.	NY	New York	10036	(212) 757-0788	Theater District	40.7606259000000009	-73.9894768999999997
707	Donna	\N	27 Broadway	NY	Brooklyn	11249	(646) 568-6622	South Williamsburg	40.7109189000000029	-73.9677080000000018
708	Donnybrook	\N	35 Clinton St.	NY	New York	10002	(212) 228-7733	Lower East Side	40.7201128999999966	-73.9846696000000037
709	Donostia	\N	155 Ave. B	NY	New York	10009	(646) 256-9773	East Village	40.726643199999998	-73.9797920000000033
710	Donovan's Grill & Tavern	\N	214-16 41st Ave.	NY	Bayside	11361	(718) 423-5353	Bayside	40.7635330999999965	-73.7703099000000009
711	Dorian Gray	\N	205 E 4th St.	NY	New York	10009	(212) 979-0900	East Village	40.7239938000000024	-73.9837818000000027
712	Dorrian's Red Hand	\N	1616 2nd Ave.	NY	New York	10021	(212) 772-6660	Upper East Side	40.7763249999999999	-73.9524490000000014
713	Dos Caminos	\N	373 Park Ave. S	NY	New York	10016	(212) 294-1000	Midtown East	40.7422180000000012	-73.9844879999999989
714	Dos Caminos	\N	475 W Broadway	NY	New York	10012	(212) 277-4300	SoHo	40.7265680000000003	-73.9998349999999903
715	Dos Caminos	\N	825 3rd Ave.	NY	New York	10022	(212) 336-5400	Midtown East	40.7557923999999971	-73.9702489000000014
716	Double Down Saloon	\N	14 Ave. A	NY	New York	10009	(212) 982-0543	East Village	40.7225159999999988	-73.9857409999999902
717	Double Wide	\N	505 E 12th St.	NY	New York	10009	(917) 261-6461	East Village	40.7290312000000014	-73.980893199999997
718	The Double Windsor	\N	210 Prospect Park W	NY	Brooklyn	11215	(347) 725-3479	Windsor Terrace	40.6606183999999971	-73.9805396999999942
719	Doug's Pretty Good Pub	\N	54 Main St.	NY	Cold Spring	10516	(845) 265-9500	Cold Spring	41.4175676999999993	-73.9588964999999945
720	The Douglass Public House	\N	149 4th Ave.	NY	Brooklyn	11217	(718) 857-4337	Park Slope	40.6793042999999983	-73.9814097000000004
721	Down The Hatch	\N	179 W 4th St.	NY	New York	10014	(212) 627-9747	West Village	40.7324659000000011	-74.0016256999999911
722	Downtown Bakery	\N	69 1st Ave.	NY	New York	10003	(212) 254-1757	East Village	40.7254661999999996	-73.9872251000000034
723	The Downtown Cafe	\N	4 School St.	NY	Glen Cove	11542	(516) 759-2233	Glen Cove	40.8643839	-73.6315123999999912
724	Downtown Galway Hooker Pub	\N	133 7th Ave. S	NY	New York	10014	(212) 675-6220	West Village	40.7345643000000024	-74.0019990999999919
725	The Draft House	\N	3473 Broadway	NY	New York	10031	(646) 590-0554	Harlem	40.8244168000000016	-73.9523121000000003
726	Dram Shop	\N	339 9th St.	NY	Brooklyn	11215	(718) 788-1444	South Slope	40.6688570999999968	-73.9850555999999955
727	Draught 55	\N	245 E 55th St.	NY	New York	10022	(212) 300-4096	Midtown East	40.7583520000000021	-73.9665835999999928
728	Dream Downtown	\N	355 W 16th St.	NY	New York	10011	(212) 229-2559	Chelsea	40.7422910000000016	-74.0034553999999929
729	The Drink	\N	228 Manhattan Ave.	NY	Brooklyn	11206	(718) 782-8463	East Williamsburg	40.7110843999999972	-73.9453426999999976
730	DROM	\N	85 Ave. A	NY	New York	10009	(212) 777-1157	East Village	40.7252904999999998	-73.9844148999999902
731	Drop Off Service	\N	211 Ave. A	NY	New York	10009	(212) 260-2914	East Village	40.7299061999999878	-73.9809367999999949
732	Drunken Munkey NYC	\N	338 E 92nd St.	NY	New York	10128	(646) 998-4600	Upper East Side	40.7808785	-73.9475908000000004
733	DTUT	\N	1744 2nd Ave.	NY	New York	10128	(212) 410-6449	Upper East Side	40.7807914999999994	-73.9492807000000028
734	The Dubliner	\N	45 Stone St.	NY	New York	10004	(212) 785-5400	Financial District	40.7043377999999976	-74.0103647999999907
735	duckduck	\N	161 Montrose Ave.	NY	Brooklyn	11206	(347) 799-1449	East Williamsburg	40.7073729999999969	-73.9427974000000034
736	Dudleys	\N	85 Orchard St.	NY	New York	10002	(212) 925-7355	Lower East Side	40.717948100000001	-73.9904772000000008
737	Duff's Brooklyn	\N	168 Marcy Ave.	NY	Brooklyn	11211	(718) 599-2092	Williamsburg	40.7088527000000013	-73.9579009999999926
738	The Dugout	\N	880 River Ave.	NY	Bronx	10452	(718) 588-6912	Bronx	40.8284560000000027	-73.9253788999999983
739	Duke's	\N	560 3rd Ave.	NY	New York	10016	(212) 949-5400	Murray Hill	40.7480838999999975	-73.9767946999999992
740	DuMont Burger	\N	314 Bedford Ave.	NY	Brooklyn	11211	(718) 384-6127	Williamsburg - South Side	40.7136830999999972	-73.962105600000001
741	Duo Tapas Bar	\N	748 Yonkers Ave.	NY	Yonkers	10704	(914) 294-0034	Yonkers	40.9231448999999969	-73.8652467999999942
742	The Duplex	\N	61 Christopher St.	NY	New York	10014	(212) 255-5438	West Village	40.7338069999999988	-74.0024921999999918
743	Durden	\N	213 2nd Ave.	NY	New York	10003	(212) 473-1155	East Village	40.7318750000000023	-73.9856419999999986
744	Dutch Freds	\N	307 W 47th St.	NY	New York	10036	(646) 918-6923	Theater District	40.7608158999999972	-73.9878465000000034
745	Dutch Kills	\N	27-24 Jackson Ave.	NY	Long Island City	11101	(718) 383-2724	Long Island City	40.7476172000000005	-73.9401445999999964
746	The Dutch	\N	131 Sullivan St.	NY	New York	10012	(212) 677-6200	South Village	40.7265835999999979	-74.0020815999999968
747	The Dutchess Biercafe	\N	1097 Main St.	NY	Fishkill	12524	(845) 440-7747	Fishkill	41.5356730000000027	-73.9028330000000011
748	Dyckman Bar	\N	221 Dyckman St.	NY	New York	10034	(646) 360-3018	Washington Heights	40.8659948000000028	-73.9274171999999936
749	Dylan Murphy's	\N	1453 3rd Ave.	NY	New York	10028	(212) 988-9434	Upper East Side	40.7762415999999988	-73.9554375000000022
750	Dynaco	\N	1112 Bedford Ave.	NY	Brooklyn	11216		Bedford Stuyvesant	40.6866483000000017	-73.9548161000000022
751	E's Bar	\N	511 Amsterdam Ave.	NY	New York	10024	(212) 877-0961	Upper West Side	40.7866279000000134	-73.9754046999999986
752	The Eagle	\N	554 W 28th St.	NY	New York	10001	(646) 473-1866	Chelsea	40.7516239999999996	-74.0043459999999982
753	Eamonn's Bar & Grill	\N	9 E 45th St.	NY	New York	10017	(212) 867-9013	Midtown East	40.7552510000000012	-73.9785200000000032
754	Ear Inn	\N	326 Spring St.	NY	New York	10013	(212) 226-9060	South Village	40.7258436999999986	-74.0094923999999992
755	Earl's Beer & Cheese	\N	1259 Park Ave.	NY	New York	10029	(212) 289-1581	East Harlem	40.7873035000000002	-73.9515581999999938
756	East End Bar & Grill	\N	1664 1st Ave.	NY	New York	10028	(212) 348-3783	Yorkville	40.7772837999999993	-73.9487507999999991
757	East River Bar	\N	97 S 6th St.	NY	Brooklyn	11211	(718) 302-0511	South Williamsburg	40.7109164000000021	-73.9646560999999991
758	Eastside Billiards	\N	163 E 86th St.	NY	New York	10028	(212) 831-7665	Upper East Side	40.7793648000000033	-73.954581300000001
759	Eat Gastropub	\N	2823 Long Beach Rd.	NY	Oceanside	11572	(516) 766-9547	Oceanside	40.6425462999999993	-73.6398664000000025
760	Eataly NYC	\N	200 5th Ave.	NY	New York	10010	(212) 229-2560	Flatiron	40.7419930999999877	-73.989935700000018
761	Eats	\N	1055 Lexington Ave.	NY	Manhattan	10021	(212) 396-3287	Upper East Side	40.7721980999999971	-73.9606478999999979
762	Eclipse Restaurant	\N	11146 Lefferts Blvd.	NY	South Ozone Park	11420	(718) 529-5580	Ozone Park	40.6791587000000021	-73.8210265999999962
763	Ed's Chowder House	\N	44 W 63rd St.	NY	New York	10023	(212) 956-1288	Upper West Side	40.7713414999999983	-73.9827135000000027
764	Edward's	\N	136 W Broadway	NY	New York	10013	(212) 233-6436	TriBeCa	40.7169655999999875	-74.008356599999999
765	Effin Gruven	\N	2562 Sunrise Hwy.	NY	Bellmore	11710	(516) 409-1415	Bellmore	40.6671619999999976	-73.5323730000000069
766	Egan & Sons	\N	118 Walnut St.	NJ	Montclair	7042	(973) 744-1413	Montclair	40.8176828	-74.2115845999999948
767	El Azteca	\N	783 9th Ave.	NY	New York	10019	(212) 307-0616	Hell's Kitchen	40.7650225000000006	-73.9882027000000022
768	El Born	\N	651 Manhattan Ave.	NY	Brooklyn	11222	(347) 844-9295	Greenpoint	40.7243214000000009	-73.9513608000000033
769	El Camion	\N	194 Ave. A	NY	New York	10009	(212) 533-5436	East Village	40.7290824000000029	-73.9810509999999937
770	El Cantinero	\N	86 University Pl	NY	New York	10003	(212) 255-9378	Greenwich Village	40.7336649000000008	-73.9932797999999963
771	El Centro	\N	824 9th Ave.	NY	New York	10019	(646) 763-6585	Hell's Kitchen	40.766001799999998	-73.9868878999999993
772	El Coyote Restaurant	\N	80-18 Northern Blvd.	NY	Jackson Heights	11372	(718) 651-4874	Jackson Heights	40.7551752999999977	-73.8868750999999975
773	El Kallejon	\N	209 E 117th St.	NY	New York	10035	(646) 649-4795	East Harlem	40.7985108999999966	-73.9388328999999942
774	El Mitote	\N	208 Columbus Ave.	NY	New York	10023	(212) 874-2929	Upper West Side	40.7758472000000012	-73.9802009999999939
775	El Parador Cafe	\N	325 E 34th St.	NY	New York	10016	(212) 679-6812	Kips Bay	40.7445056999999977	-73.9746937000000031
776	El Paso Taqueria	\N	64 E 97th St.	NY	New York	10029	(212) 996-1739	East Harlem	40.7873428999999987	-73.9528851000000031
777	El Quinto Pino	\N	401 W 24th St.	NY	New York	10011	(212) 206-6900	Chelsea	40.7474561000000008	-74.0011942000000005
778	El Rey del Sabor	\N	166 E 60th St.	NY	New York	10021	(347) 353-2939	Upper East Side	40.762342799999999	-73.9671433000000036
779	El Rio Grande	\N	160 E 38th St.	NY	New York	10016	(212) 867-0922	Midtown East	40.7480826999999977	-73.9767980000000023
780	El Toro Blanco	\N	257 Sixth Ave.	NY	New York	10014	(212) 645-0193	West Village	40.7290259000000034	-74.00280699999999
781	El Vez	\N	259 Vesey St.	NY	New York	10281	(212) 233-2500	Battery Park	40.7148113999999879	-74.0154222999999973
782	Elephant & Castle	\N	68 Greenwich Ave.	NY	New York	10011	(212) 243-1400	West Village	40.7362255999999974	-74.0006903000000023
783	Eleven Madison Park	\N	11 Madison Ave.	NY	New York	10010	(212) 889-0905	Flatiron	40.7415114000000003	-73.9869676999999939
784	Elmo	\N	156 7th Ave.	NY	New York	10011	(212) 337-8000	Chelsea	40.7419956999999968	-73.9975453999999928
785	Emerald Inn	\N	250 W 72nd St.	NY	New York	10023	(212) 874-8840	Upper West Side	40.7792387000000005	-73.983856000000003
786	Emily	\N	919 Fulton St.	NY	Brooklyn	11238	(347) 844-9588	Clinton Hill	40.6835549999999984	-73.9663927999999942
787	Emmett O'Lunney's Irish Pub	\N	210 W 50th St.	NY	New York	10019	(212) 957-5100	Theater District	40.7614518999999973	-73.9845230999999899
788	Empellon Al Pastor	\N	132 St. Marks Pl	NY	New York	10009	(646) 833-7039	East Village	40.7267105000000029	-73.9834618999999947
789	Empellon Taqueria	\N	230 W 4th St.	NY	Manhattan	10014	(212) 367-0999	West Village	40.7341333000000034	-74.0031468999999902
790	The Empire Hotel	\N	44 W 63rd St.	NY	New York	10023	(212) 265-7400	Upper West Side	40.7713414999999983	-73.9827135000000027
791	Employees Only	\N	510 Hudson St.	NY	New York	10014	(212) 242-3021	West Village	40.7334327000000016	-74.0060814999999934
792	Emporio	\N	231 Mott St.	NY	New York	10012	(212) 966-1234	Nolita	40.7225910000000013	-73.9952650999999975
793	Enid's	\N	560 Manhattan Ave.	NY	Brooklyn	11222	(718) 349-3859	Greenpoint	40.7223984999999971	-73.9497894000000002
794	Enoteca Maria	\N	27 Hyatt St.	NY	Staten Island	10301	(718) 447-2777	Staten Island	40.6420543999999992	-74.0773471999999913
795	Entwine	\N	765 Washington St.	NY	New York	10014	(212) 727-8765	West Village	40.7373970000000014	-74.0079759999999993
796	Epistrophy	\N	200 Mott St.	NY	New York	10012	(212) 966-0904	Nolita	40.72119	-73.9953924000000001
797	Erv's on Beekman	\N	2122 Beekman Pl	NY	Prospect Lefferts Gardens	11225	(916) 936-2122	Prospect Lefferts Gardens	40.6599019000000013	-73.960901100000001
798	Esca	\N	402 W 43rd St.	NY	New York	10036	(212) 564-7272	Hell's Kitchen	40.7592096999999995	-73.9927457000000004
799	Esperanto	\N	145 Ave. C	NY	New York	10009	(212) 505-6559	East Village	40.7254621000000014	-73.9780487000000022
800	Essex	\N	120 Essex St.	NY	New York	10002	(212) 533-9616	Lower East Side	40.7191941000000028	-73.9875880000000024
801	est. 1986 Wine Bar	\N	43 W 32nd St.	NY	New York	10001	(212) 563-1500	Midtown West	40.7482222000000007	-73.9874768999999901
802	The Evergreen	\N	109 Moffat St.	NY	Brooklyn	11207	(718) 484-7399	Bushwick	40.6860356999999979	-73.9082104000000015
803	Exo Cafe	\N	70-20 Austin St.	NY	Forest Hills	11375	(718) 261-6162	Forest Hills	40.7204990999999978	-73.8463416999999964
804	Extra Virgin	\N	259 W 4th St.	NY	New York	10014	(212) 691-9359	West Village	40.7354027000000016	-74.0031343999999933
805	F & J Pine Restaurant	\N	1913 Bronxdale Ave.	NY	Bronx	10462	(718) 792-5956	Van Nest	40.8490192000000008	-73.8622197000000114
806	Fabbrica Restaurant & Bar	\N	40 N. 6th Street	NY	Brooklyn	11249	(718) 218-7045	Williamsburg	40.7198291999999995	-73.9626609999999971
807	Fabbrica Restaurant & Bar	\N	44 N 6th St.	NY	Brooklyn	11249	(718) 218-7045	Williamsburg - North Side	40.7196428999999966	-73.9626643000000001
808	Faces and Names	\N	159 W 54th St.	NY	New York	10019	(212) 586-9311	Theater District	40.7635888000000008	-73.9809247999999968
809	Failte	\N	531 2nd Ave.	NY	New York	10016	(212) 725-9440	Midtown East	40.7420544000000007	-73.9782091999999949
810	Fairytail Lounge	\N	500 W 48th St.	NY	New York	10019	(646) 684-3897	Hell's Kitchen	40.7634623000000005	-73.9930808000000013
811	Falansai	\N	112 Harrison Pl.	NY	Brooklyn	11237	(347) 599-1190	Bushwick	40.7066552000000001	-73.928732999999994
812	Falucka	\N	162 Bleecker St.	NY	New York	10012	(212) 777-4555	Greenwich Village	40.7285176000000035	-74.0002544999999969
813	Farafina Cafe & Lounge Harlem	\N	1813 Amsterdam Ave.	NY	New York	10031	(212) 281-2445	Harlem	40.8281470000000013	-73.9450999999999965
814	Fat Baby	\N	112 Rivington St.	NY	New York	10002	(212) 533-1888	Lower East Side	40.7200360000000003	-73.9877204000000006
815	The Fat Black Pussycat	\N	130 W 3rd St.	NY	New York	10012	(212) 533-4790	Greenwich Village	40.7306226999999978	-74.0009273999999948
816	Fat Buddha	\N	212 Ave. A	NY	New York	10009	(212) 598-0500	East Village	40.729824200000003	-73.9805987000000016
817	Fat Cat	\N	75 Christopher St.	NY	New York	10014	(212) 675-6056	West Village	40.7337169999999986	-74.0032803999999942
818	The Fat Radish	\N	17 Orchard St.	NY	New York	10002	(212) 300-4053	Chinatown	40.7153028000000035	-73.9918687999999918
819	Fatty McGees	\N	138 Connetquot Ave.	NY	East Islip	11730	(631) 581-9868	East Islip	40.7419128000000015	-73.169566500000002
820	Favela	\N	33-18 28th Ave.	NY	Astoria	11103	(718) 545-8250	Astoria	40.7672663999999969	-73.9180217000000113
821	Favela Cubana	\N	543 LaGuardia Pl	NY	New York	10012	(212) 777-6500	Greenwich Village	40.7283929000000029	-73.9980821999999989
822	Fawkner	\N	191 Smith St.	NY	Brooklyn	11201	(718) 369-3310	Cobble Hill	40.6852096000000003	-73.9912534999999991
823	Featherweight	\N	135 Graham Ave.	NY	Brooklyn	11206	(646) 257-0946	East Williamsburg	40.706417799999997	-73.9432899999999904
824	Fedora	\N	239 W 4th St.	NY	New York	10014	(646) 449-9336	West Village	40.7345315000000028	-74.0028946999999988
825	Feile	\N	131 W 33rd St.	NY	New York	10001	(212) 695-1122	Midtown West	40.7499628999999999	-73.9896856999999954
826	Felice 15 Gold Street	\N	15 Gold St.	NY	New York	10038	(212) 785-5950	Financial District	40.7078871000000007	-74.0071030999999948
827	Fette Sau	\N	354 Metropolitan Ave.	NY	Brooklyn	11211	(718) 963-3404	Williamsburg - North Side	40.7139032999999984	-73.9564981000000046
828	The Fez	\N	227 Summer St.	CT	Stamford	6901	(203) 324-3391	Stamford	41.0548600999999991	-73.5404604000000006
829	Fiddlesticks	\N	56 Greenwich Ave.	NY	New York	10011	(212) 436-0516	West Village	40.7358963000000074	-74.0004615999999942
830	Fig 19	\N	131 1/2 Chrystie St.	NY	New York	10002		Lower East Side	40.7195084000000023	-73.9935159999999996
831	Fillmore's Tavern	\N	166-02 65th Ave.	NY	Fresh Meadows	11365	(718) 762-2727	Flushing	40.736483800000002	-73.8026974999999936
832	Finnegan's Wake	\N	1361 1st Ave.	NY	New York	10021	(212) 737-3664	Upper East Side	40.7686789999999988	-73.9556393999999955
833	Finnerty's	\N	221 2nd Ave.	NY	New York	10003	(212) 677-2655	East Village	40.7321339000000009	-73.9854916999999972
834	Fino Wine & Tapas	\N	39-13 Bell Blvd.	NY	Bayside	11361	(718) 229-1330	Bayside	40.7649609999999996	-73.771380999999991
835	Fire & Oak	\N	479 Washington Blvd.	NJ	Jersey City	7310	(201) 610-9610	Jersey City	40.7249471000000014	-74.036312499999994
836	Firehouse	\N	522 Columbus Ave.	NY	New York	10024	(212) 787-3473	Upper West Side	40.7861027999999877	-73.9726967000000002
837	Fish Bar	\N	237 E 5th St.	NY	New York	10003	(212) 475-4949	East Village	40.7271787999999972	-73.9893809999999945
838	Fisheye Bar & Grill	\N	5913 Foster Ave.	NY	Brooklyn	11234	(718) 451-3474	East Flatbrush	40.6402456000000001	-73.9201216999999957
839	FishTag	\N	222 W 79th St.	NY	New York	10024	(212) 362-7470	Upper West Side	40.7833406000000025	-73.9794519000000008
840	The Fitz	\N	687 Lexington Ave.	NY	Manhattan	10022	(212) 784-2641	Midtown East	40.7604787000000002	-73.9691078999999974
841	Fitzgerald's Pub	\N	336 3rd Ave.	NY	New York	10010	(212) 679-6931	Kips Bay	40.7401598999999877	-73.9826276999999948
842	Five Mile Stone	\N	1640 Second Ave.	NY	New York	10028	(212) 933-0913	Upper East Side	40.7772050000000021	-73.9518679999999904
843	Five Spot	\N	459 Myrtle Ave.	NY	Brooklyn	11205	(718) 852-0202	Clinton Hill	40.693449600000001	-73.9670526999999964
844	Flaming Saddles Saloon	\N	793 9th Ave.	NY	New York	10019	(212) 713-0481	Hell's Kitchen	40.7653081999999998	-73.9879399999999947
845	Flannery's Bar	\N	205 W 14th St.	NY	New York	10011	(212) 229-2122	Chelsea	40.7389085999999878	-73.9998882000000009
846	Flatbush Farm	\N	76 Saint Marks Ave.	NY	Brooklyn	11217	(718) 622-3276	Prospect Heights	40.6797175000000024	-73.9746552999999949
847	Flatiron Hall	\N	38 W 26th St.	NY	New York	10010	(646) 790-3200	Flatiron	40.7442852000000002	-73.9907407000000035
848	Flatiron Lounge	\N	37 W 19th St.	NY	New York	10011	(212) 727-7741	Flatiron	40.7400645000000026	-73.9931644999999918
849	Flex Mussels	\N	154 W 13th St.	NY	New York	10011	(212) 229-0222	West Village	40.7374000000000009	-73.9996941999999933
850	Flight 151	\N	151 8th Ave.	NY	New York	10011	(212) 229-1868	Chelsea	40.7421079999999876	-74.0012107000000015
851	Flor De Mayo	\N	484 Amsterdam Ave.	NY	New York	10024	(212) 787-3388	Upper West Side	40.7860761000000025	-73.9765682000000027
852	Florian	\N	225 Park Ave. S	NY	New York	10003	(212) 869-8800	Gramercy	40.7371089000000026	-73.9878920000000022
853	The Flower Shop	\N	107 Eldridge St.	NY	New York	10002	(212) 257-4072	Lower East Side	40.7181475999999876	-73.9922533000000016
854	Flute Midtown	\N	205 W 54th St.	NY	New York	10019	(212) 265-5169	Midtown West	40.7640187000000012	-73.9819100999999932
855	The Flying Puck	\N	364 7th Ave.	NY	New York	10001	(212) 736-5353	Chelsea	40.7488026999999988	-73.9926798999999988
856	Fogo de Chão Brazilian Steakhouse	\N	40 W 53rd St.	NY	New York	10019	(212) 969-9980	Midtown West	40.7611228000000025	-73.9780123000000032
857	Foley's NY	\N	18 W 33rd St.	NY	New York	10001	(212) 290-0080	Midtown West	40.7480905999999976	-73.9863088000000033
858	The Folly	\N	92 W Houston St.	NY	New York	10012	(646) 726-4740	Greenwich Village	40.7272505999999979	-74.0000045000000028
859	Fonda	\N	40 Ave. B	NY	New York	10009	(212) 677-4096	East Village	40.7228770999999981	-73.9830307000000005
860	Fools Gold NYC	\N	145 E Houston St.	NY	New York	10002	(212) 673-2337	Lower East Side	40.7229955999999973	-73.9898153999999977
861	Forest Hills Station House	\N	106-11 71st Ave.	NY	Forest Hills	11375	(718) 544-5000	Forest Hills	40.7200567000000007	-73.8452604000000008
862	Forgtmenot	\N	138 Division St.	NY	New York	10002	(646) 707-3195	Chinatown	40.7145465999999985	-73.9914989000000105
863	Formerly Crow's	\N	85 Washington Pl.	NY	Manhattan	10011	(212) 361-0077	Greenwich Village	40.7322234000000023	-73.9999969999999934
864	Forty Four Lounge	\N	44 W 44th St.	NY	New York	10036	(212) 768-5120	Midtown West	40.7555977999999968	-73.9823093999999912
865	The Four-Faced Liar	\N	165 W 4th St.	NY	New York	10014	(212) 206-8959	West Village	40.7321516000000017	-74.0013615999999956
866	Foxy Johns Bar & Kitchen	\N	143 E 47th St.	NY	New York	10017	(646) 838-5534	Midtown East	40.754441700000001	-73.9728209000000021
867	Frank	\N	88 2nd Ave.	NY	New York	10003	(212) 420-0202	East Village	40.7268108999999967	-73.9886340999999987
868	Frankie & Johnnie's Steakhouse	\N	320 West 46th St.	NY	New York	10036	(212) 997-9494	Theater District	40.7599674999999877	-73.9889177999999959
869	Frankies 457 - Brooklyn	\N	457 Ct. St.	NY	Brooklyn	11231	(718) 403-0033	Carroll Gardens	40.6773993999999988	-73.9981528999999938
870	The Franklin Steakhouse	\N	238 Franklin Ave.	NJ	Nutley	7110	(973) 667-1755	Nutley	40.8158044999999987	-74.1616398000000032
871	Fraunces Tavern	\N	54 Pearl St.	NY	New York	10004	(212) 968-1776	Financial District	40.7033945000000017	-74.0113372999999939
872	Fred's Restaurant	\N	476 Amsterdam Ave.	NY	New York	10024	(212) 579-3076	Upper West Side	40.7856578000000027	-73.9767434999999978
873	Freddy's Bar	\N	627 5th Ave.	NY	Brooklyn	11215	(718) 768-0131	South Slope	40.6632905000000022	-73.99107699999999
874	Freek's Mill	\N	285 Nevins St.	NY	Gowanus	11217	(718) 852-3000	Gowanus	40.6795383999999984	-73.9868428999999992
875	Freemans	\N	Freeman Aly	NY	New York	10002	(212) 420-0012	Lower East Side	40.7216801000000004	-73.9925892999999917
876	French Louie	\N	320 Atlantic Ave.	NY	Boerum Hill	11201	(718) 935-1200	Boerum Hill	40.6879459000000026	-73.9882569999999902
877	Fresh Salt	\N	146 Beekman St.	NY	New York	10038	(212) 962-0053	South Street Seaport	40.7070727999999988	-74.0024586999999912
878	Friedman's 31	\N	132 W 31st St.	NY	New York	10001	(212) 971-9400	Midtown West	40.7483004999999991	-73.9906549999999896
879	Full Circle Bar	\N	318 Grand St.	NY	Brooklyn	11211	(347) 725-4588	Williamsburg - South Side	40.7125483000000017	-73.9566011000000003
880	The Full Shilling	\N	160 Pearl St.	NY	New York	10005	(212) 422-3855	Financial District	40.7057353000000006	-74.0074864999999988
881	The Fulton Grand	\N	1011 Fulton St.	NY	Brooklyn	11238	(718) 399-2240	Clinton Hill	40.6824990000000071	-73.9614449999999977
882	Gabby O'Hara's	\N	123 W 39th St.	NY	New York	10018	(212) 278-8984	Midtown West	40.7535778000000022	-73.9863983999999988
883	Gabriela's Restaurant & Tequila Bar	\N	688 Columbus Ave.	NY	New York	10025	(212) 961-9600	Upper West Side	40.7912788000000006	-73.9690799999999911
884	The Gael Pub	\N	1465 3rd Ave.	NY	New York	10028	(212) 517-4141	Upper East Side	40.7765527000000034	-73.9552706999999998
885	The GAF	\N	1696 2nd Ave.	NY	New York	10128		Upper East Side	40.7789108999999996	-73.9506578999999959
886	Gallaghers Steakhouse	\N	228 West 52nd St.	NY	New York	10019	(212) 586-5000	Theater District	40.7627681999999965	-73.983914900000002
887	Galli	\N	45 Mercer St.	NY	New York	10013	(212) 966-9288	SoHo	40.7216760000000022	-74.0013841999999897
888	Gallo Nero	\N	402 W 44th St.	NY	New York	10036	(212) 265-6660	Hell's Kitchen	40.7597582000000003	-73.9920589000000035
889	Gallow Green	\N	542 W 27th St.	NY	New York	10001	(212) 564-1662	Chelsea	40.7507169000000005	-74.0041642999999993
890	The Gander	\N	15 W 18th St.	NY	New York	10011	(212) 229-9500	Flatiron	40.739155199999999	-73.9928086000000036
891	The Garden at Studio Square	\N	35-33 36th St.	NY	Long Island City	11106	(718) 383-1001	Astoria	40.7551703999999972	-73.9250615999999923
892	Garden State Ale House	\N	340 Paterson Ave.	NJ	East Rutherford	7073	(201) 528-7767	East Rutherford	40.8368577999999971	-74.0995377999999931
893	Garlic Pizza Bar	\N	629 2nd Ave.	NY	New York	10016	(646) 559-9500	Murray Hill	40.7451798000000025	-73.9759487000000036
894	The Garret	\N	296 Bleecker St.	NY	New York	10014	(212) 675-6157	West Village	40.7323382000000009	-74.0038189999999929
895	The Garret	\N	206 Ave. A	NY	New York	10009	(212) 228-6231	East Village	40.7294345000000035	-73.9807362999999896
896	The Garth Road Inn	\N	96 Garth Rd.	NY	Scarsdale	10583	(914) 722-9472	Scarsdale	40.9860210000000009	-73.8100680000000011
897	Gaslight Lounge	\N	400 W 14th St.	NY	New York	10014	(212) 807-8444	Meatpacking District	40.7407940000000011	-74.0057690000000008
898	The Gate	\N	321 5th Ave.	NY	Brooklyn	11215	(718) 768-4329	Park Slope	40.6725551999999979	-73.9832026999999925
899	Gato	\N	324 Lafayette St.	NY	New York	10012	(212) 334-6400	NoHo	40.7256069999999966	-73.9952232999999922
900	Gatsby's Bar & Restaurant	\N	53 Spring St.	NY	New York	10012	(212) 334-4430	Nolita	40.7223127000000034	-73.9965411999999958
901	The Gem Saloon	\N	375 3rd Ave.	NY	New York	10016	(646) 612-7757	Kips Bay	40.7413317000000035	-73.9809795999999977
902	Gemma	\N	335 Bowery	NY	New York	10003	(212) 505-7300	NoHo	40.7260338000000033	-73.9914734999999979
903	Genesis Bar and Restaurant	\N	1708 2nd Ave.	NY	New York	10128	(212) 348-5500	Yorkville	40.7794079999999965	-73.950264599999997
904	GENUINE Liquorette	\N	191 Grand St.	NY	New York	10013	(646) 726-4633	Little Italy	40.7191376999999974	-73.9972183000000001
905	George Keeley's	\N	485 Amsterdam Ave.	NY	New York	10024	(212) 873-0251	Upper West Side	40.7858335000000025	-73.9759782999999942
906	George Street Ale House	\N	378 George St.	NJ	New Brunswick	8901	(732) 543-2408	New Brunswick	40.4956834999999984	-74.4442724000000027
907	Ghenet Brooklyn	\N	348 Douglass St.	NY	Brooklyn	11217	(718) 230-4475	Park Slope	40.6791118000000012	-73.9815383999999909
908	Gigino Trattoria	\N	323 Greenwich St.	NY	New York	10013	(212 ) 431-1112	TriBeCa	40.7172655000000034	-74.0104630999999955
909	Gilbey's	\N	3201 Broadway	NY	Astoria	11106	(718) 545-8567	Astoria	40.7616897999999992	-73.9243281999999908
910	Gilligan's at Soho Grand	\N	310 W Broadway	NY	New York	10013	(212) 965-3271	South Village	40.7220518999999967	-74.0045063000000027
911	The Gilroy	\N	1561 2nd Ave.	NY	New York	10028	(212) 734-8800	Upper East Side	40.7748699999999999	-73.9542539999999917
912	The Gin Mill	\N	442 Amsterdam Ave.	NY	New York	10024	(212) 580-9080	Upper West Side	40.7847531000000032	-73.9775376999999992
913	Gina Mexicana	\N	145 E 61st St.	NY	New York	10021	(212) 527-3700	Upper East Side	40.7634563000000014	-73.9667529999999971
914	The Ginger Man	\N	11 E 36th St.	NY	New York	10016	(212) 532-3740	Midtown East	40.7495819999999966	-73.9826338000000021
915	Ginger's	\N	512 Fashion Ave.	NY	New York	10018	(212) 768-3100	Midtown West	40.7534397000000084	-73.9895329999999944
916	Ginny's Supper Club	\N	310 Lenox Ave.	NY	New York	10027	(212) 421-3821	Harlem	40.8080566000000005	-73.9449139000000031
917	Giorgio's of Gramercy	\N	27 East 21st St.	NY	New York	10011	(212) 477-0007	Flatiron	40.739697900000003	-73.9886370999999912
918	Giovanni's	\N	80 W Fordham Rd.	NY	Bronx	10468	(718) 733-3333	Fordham	40.8626469000000014	-73.904424199999994
919	Giovanni's	\N	579 Grand Concourse	NY	Bronx	10451	(718) 402-6996	Concourse Village	40.8194048000000009	-73.9272291999999993
920	Glass House Tavern	\N	252 W 47th St.	NY	New York	10036	(212) 730-4800	Midtown West	40.7598330000000004	-73.9866979999999899
921	The Globe	\N	158 E 23rd St.	NY	New York	10010	(212) 477-6161	Gramercy	40.7388422999999875	-73.9837782999999973
922	GMT Tavern	\N	142 Bleecker St.	NY	New York	10012	(646) 863-3776	Greenwich Village	40.727998399999997	-73.999225299999992
923	Gnocco	\N	337 E 10th St.	NY	New York	10009	(212) 677-1913	East Village	40.7271557999999985	-73.9802469999999914
924	The Godfather of East Hanover	\N	200 Rt 10 W	NJ	East Hanover	7936	(973) 887-4830	East Hanover	40.809356600000001	-74.3753916000000004
925	Gonzalez y Gonzalez	\N	192 Mercer St.	NY	New York	10012	(212) 473-7878	Greenwich Village	40.7262028000000029	-73.9970381999999915
926	The Good Life	\N	1039 Park Blvd.	NY	Massapequa Park	11762	(516) 798-4663	Massapequa Park	40.6799660000000003	-73.4551510000000007
927	Gordon Bennett	\N	109 S 6th St.	NY	Brooklyn	11211	(718) 599-9109	Williamsburg - South Side	40.7107546000000013	-73.9641953000000001
928	Gotham Bar And Grill	\N	12 E 12th St.	NY	New York	10003	(212) 620-4020	Union Square	40.7340887000000009	-73.9938231999999942
929	Gottino	\N	52 Greenwich Ave.	NY	New York	10011	(212) 633-2590	West Village	40.7357858000000022	-74.0003990000000016
930	Gowanus Yacht Club	\N	323 Smith St.	NY	Brooklyn	11230	(718) 246-1321	Gowanus	40.6809190000000029	-73.9944009999999963
931	The Grafton	\N	126 1st Ave.	NY	New York	10009	(212) 228-8580	East Village	40.7272177999999982	-73.9852599000000026
932	Gramercy Ale House	\N	272 3rd Ave.	NY	New York	10010	(212) 260-1129	Gramercy	40.7379666	-73.9841280999999924
933	Gramercy Tavern	\N	42 E 20th St.	NY	New York	10003	(212) 477-0777	Flatiron	40.7384271000000027	-73.9884184999999945
934	Gran Electrica	\N	5 Front St.	NY	Brooklyn	11201	(718) 852-2700	DUMBO	40.7026786999999999	-73.9931218999999913
935	Grand Army	\N	336 State St.	NY	Brooklyn	11201	(718) 422-7867	Downtown Brooklyn	40.6881589999999989	-73.9865860000000026
936	Grand Bar & Lounge at Soho Grand Hotel	\N	310 W Broadway	NY	New York	10013	(212) 965-3588	TriBeCa	40.7220518999999967	-74.0045063000000027
937	Grand Central Terminal	\N	89 E 42nd St.	NY	New York	10017	(212) 340-2583	Midtown East	40.7525703000000021	-73.9776272999999946
938	The Grange Bar and Eatery	\N	1635 Amsterdam Ave.	NY	New York	10031	(212) 491-1635	Harlem	40.8225191000000009	-73.9493609000000021
939	Grape and Grain	\N	620 E 6th St.	NY	New York	10009	(212) 420-0002	East Village	40.7239383000000075	-73.9808254000000005
940	The Grayson	\N	16 1st Ave.	NY	New York	10009	(212) 510-8726	East Village	40.7234076000000016	-73.9879909999999938
941	The Great Georgiana	\N	248 Dekalb Ave.	NY	Brooklyn	11205	(718) 362-7569	Fort Greene	40.6892866000000026	-73.9692307999999912
942	The Greek Kitchen	\N	889 10th Ave.	NY	New York	10019	(212) 581-4300	Hell's Kitchen	40.7698116999999982	-73.9885191999999989
943	The Greek	\N	458 Greenwich St.	NY	New York	10013	(646) 476-3941	TriBeCa	40.7237170999999876	-74.0097422999999992
944	The Green Door	\N	600 W 57th St.	NY	New York	10019	(212) 974-3169	Midtown West	40.7702923000000013	-73.9918303000000037
945	Green Rancho	\N	741 9th Ave.	NY	New York	10019	(212) 956-0731	Hell's Kitchen	40.7637209000000027	-73.9891860000000037
946	Green Rock Tap & Grill	\N	70 Hudson St.	NJ	Hoboken	7030	(201) 386-5600	Hoboken	40.7361914000000027	-74.0305158000000034
947	The Greene Turtle	\N	1740 Hempstead Tpke	NY	East Meadow	11554	(516) 280-7251	East Meadow	40.7233519999999984	-73.5712722999999897
948	Greenwich Street Tavern	\N	399 Greenwich St.	NY	New York	10013	(212) 334-7827	TriBeCa	40.7208568	-74.0097730999999897
949	Greenwich Treehouse	\N	46 Greenwich Ave.	NY	New York	10011	(212) 675-0395	West Village	40.7356228000000016	-74.0002520000000032
950	Grey Bar & Restaurant	\N	43 W 26th St.	NY	New York	10010	(212) 532-2643	Flatiron	40.7446014000000005	-73.9906268000000011
951	The Grey Dog	\N	242 W 16th St.	NY	New York	10011	(212) 229-2345	Chelsea	40.7404701000000031	-74.0008483000000012
952	Grey Lady	\N	77 Delancey St.	NY	New York	10002	(646) 580-5239	Lower East Side	40.718826	-73.9902189999999962
953	Griff's Place	\N	704 New Dorp Ln.	NY	New Dorp Beach	10306	(718) 668-2645	New Dorp Beach	40.5656747000000024	-74.1005502000000007
954	The Grille In The Ville	\N	756 Horseblock Rd.	NY	Farmingville	11738	(631) 846-9905	Farmingville	40.831245899999999	-73.0317737999999963
955	Gristmill	\N	289 5th Ave.	NY	Brooklyn	11215	(718) 499-2424	Park Slope	40.6735666000000009	-73.9823181999999946
956	Grotta Azzurra	\N	177 Mulberry St.	NY	New York	10013	(212) 925-8775	Little Italy	40.7203257999999977	-73.9970443999999929
957	Growler & Gill Craft Beer Bar	\N	148 Rt 59	NY	Nanuet	10954	(845) 507-0899	Nanuet	41.0952060999999986	-74.0053070000000019
958	The Growler Bites & Brews	\N	55 Stone St.	NY	Manhattan	10004	(917) 409-0251	Financial District	40.7044392999999971	-74.0103656999999941
959	Gruppo	\N	98 Ave. B	NY	New York	10009	(212) 995-2100	East Village	40.7247616000000008	-73.9816984999999931
960	Guantanamera	\N	939 8th Ave.	NY	New York	10019	(212) 262-5354	Midtown West	40.7659041000000002	-73.9838986000000034
961	Guinness Pub	\N	Newark International Airport - Concourse C	NJ	Newark	7114		Newark	40.6935846000000012	-74.176794000000001
962	Gun Hill Brewing Company	\N	3227 Laconia Ave.	NY	Bronx	10469	(718) 881-0010	Olinville	40.8721233999999995	-73.8559046999999964
963	The Guthrie Inn	\N	1259 Park Ave.	NY	New York	10029		East Harlem	40.7873035000000002	-73.9515581999999938
964	Guy's American Kitchen and Bar	\N	220 W 44th St.	NY	New York	10036	(646) 532-4897	Theater District	40.7576462999999976	-73.9872782999999998
965	Gym Sportsbar	\N	167 8th Ave.	NY	New York	10011	(212) 337-2439	Chelsea	40.742638399999997	-74.0008205000000032
966	Gyu-Kaku Japanese BBQ	\N	805 3rd Ave.	NY	New York	10022	(212) 702-8816	Midtown East	40.7554153999999969	-73.9705756999999977
967	Habana Outpost	\N	757 Fulton St.	NY	Brooklyn	11217	(718) 858-9500	Fort Greene	40.6864301000000026	-73.9741764999999987
968	The Habitat	\N	988 Manhattan Ave.	NY	Brooklyn	11222	(718) 383-5615	Greenpoint	40.7328733000000014	-73.9544822999999951
969	Haile Bistro	\N	182 Ave. B	NY	New York	10009	(212) 673-8949	East Village	40.7277978999999988	-73.9794471000000016
970	Hailey's Harp and Pub	\N	400 Main St.	NJ	Metuchen	8840	(732) 321-0777	Metuchen	40.5413727999999978	-74.3609623999999911
971	Hair of the Dog	\N	168 Orchard St.	NY	New York	10002	(212) 477-7771	Lower East Side	40.7211970999999977	-73.9883847999999915
972	Hakkasan	\N	311 W 43rd St.	NY	New York	10036	(212) 776-1818	Hell's Kitchen	40.7584285000000008	-73.9900011000000006
973	The Half King Bar & Restaurant	\N	505-507 W 23rd St.	NY	New York	10011	(212) 462-4300	Chelsea	40.7480246000000008	-74.0044185999999939
974	The Half Pint	\N	76 W 3rd St.	NY	New York	10012	(212) 260-1088	Greenwich Village	40.7295121000000009	-73.9985343000000029
975	Halyards	\N	406 3rd Ave.	NY	Brooklyn	11215	(718) 532-8787	Gowanus	40.6733150000000023	-73.9898469999999975
976	Hanco's	\N	350 7th Ave.	NY	Brooklyn	11215	(718) 499-8081	South Slope	40.6662199000000015	-73.9821548999999976
977	HandCraft Kitchen & Cocktails	\N	367 3rd Ave.	NY	New York	10016	(212) 689-3000	Kips Bay	40.7409849999999878	-73.98131699999999
978	Hane Sushi	\N	346 1st Ave.	NY	New York	10009	(212) 598-0135	Stuyvesant Town	40.7346006000000003	-73.9797338999999994
979	Hangar 11 Bar & Grill	\N	119-11 Metropolitan Ave.	NY	Kew Gardens	11415	(718) 441-8100	Richmond Hill	40.706232	-73.831278999999995
980	Hangawi	\N	12 E 32nd St.	NY	New York	10016	(212) 213-0077	Midtown East	40.7466013000000018	-73.9847616999999929
981	Hanjan	\N	36 W 26th St.	NY	New York	10010	(212) 206-7226	Flatiron	40.7442362000000031	-73.9906237999999945
982	The Happiest Hour	\N	121 W 10th St.	NY	New York	10011	(212) 243-2827	West Village	40.7348896000000025	-73.9996561999999898
983	Happy Ending	\N	302 Broome St.	NY	New York	10002	(646) 998-3184	Lower East Side	40.7189014	-73.9922140999999982
984	Happyfun Hideaway	\N	1211 Myrtle Ave.	NY	Brooklyn	11221		Bushwick	40.6975577999999985	-73.9316522999999961
985	Hard Rock Cafe	\N	1501 Broadway	NY	New York	10036	(212) 343-3355	Theater District	40.7572528999999975	-73.9867677999999955
986	Harding's	\N	32 E 21st St.	NY	New York	10010	(212) 600-2105	Flatiron	40.7393228999999977	-73.988716299999993
987	Hardware Bar	\N	697 10th Ave.	NY	New York	10036	(212) 924-9885	Hell's Kitchen	40.7632757000000083	-73.9932026999999977
988	Harefield Road	\N	769 Metropolitan Ave.	NY	Brooklyn	11211	(718) 388-6870	East Williamsburg	40.7146200999999976	-73.9434160999999932
989	Harlem Food Bar	\N	2100 Frederick Douglass Blvd.	NY	New York	10026	(212) 222-9570	Harlem	40.8028157999999976	-73.9562706999999904
990	Harlem Nights	\N	2361 7th Ave.	NY	New York	10030	(646) 820-4603	Harlem	40.817141300000003	-73.9417914999999937
991	Harlem Public	\N	3612 Broadway	NY	New York	10031	(212) 939-9404	Harlem	40.8287570000000031	-73.9483512999999988
992	Harlem Tavern	\N	2153 Frederick Douglass Blvd.	NY	New York	10026	(212) 866-4500	Harlem	40.8047500999999997	-73.9554559999999981
993	Harley's Smokeshack and BBQ	\N	355 E 116 St.	NY	New York	10029	(212) 828-6723	East Harlem	40.7964219999999997	-73.9356750000000034
994	The Harold	\N	1271 Broadway	NY	New York	10001	(212) 686-1888	Midtown West	40.7482510999999974	-73.988441299999991
995	Harrington's Bar & Grill	\N	370 7th Ave.	NY	New York	10001	(212) 736-3636	Midtown West	40.7490266000000005	-73.9924742000000037
996	Harry's Cafe & Steak	\N	1 Hanover Sq	NY	New York	10004	(212) 785-9200	Financial District	40.7046144999999981	-74.0097339000000005
997	Harry's Italian Pizza Bar	\N	2 Gold St.	NY	New York	10038	(212) 747-0797	Financial District	40.7073323999999985	-74.0070813999999899
998	Hartley's	\N	14 Putnam Ave.	NY	Brooklyn	11238	(347) 799-2877	Clinton Hill	40.6825984000000034	-73.9613432999999958
999	Haru Sushi	\N	1 Wall Street Ct.	NY	New York	10005	(212) 785-6850	Financial District	40.7074909999999974	-74.0116385000000037
1000	Hasaki	\N	210 E 9th St.	NY	New York	10003	(212) 473-3327	East Village	40.7296771999999976	-73.9888262999999995
1001	Havana Alma De Cuba	\N	94 Christopher St.	NY	New York	10014	(212) 242-3800	West Village	40.7332076000000001	-74.0045142999999968
1002	Havana Cafe	\N	3151 E Tremont Ave.	NY	Bronx	10461	(718) 518-1800	Schuylerville	40.8378146000000086	-73.834327899999991
1003	Havana Central	\N	151 W 46th St.	NY	New York	10036	(212) 398-7440	Theater District	40.7584222999999994	-73.9841100999999952
1004	Havana Rum Room	\N	7512 Broadway	NJ	North Bergen	7047	(201) 472-9450	North Bergen	40.796717000000001	-74.0026801000000063
1005	Havana Social	\N	688 10th Ave.	NY	New York	10019	(212) 956-2155	Midtown West	40.7634717999999978	-73.9923193999999995
1006	Haven Rooftop	\N	132 W 47th St.	NY	New York	10036	(212) 466-9000	Theater District	40.7584117000000035	-73.9832823999999931
1007	Haymaker Bar and Kitchen	\N	252 W 29th St.	NY	New York	10001	(646) 429-8237	Midtown West	40.7486657999999977	-73.9953107999999986
1008	The Headless Horseman	\N	119 E 15th St.	NY	New York	10003	(212) 777-5101	Flatiron	40.7349721000000002	-73.9885874999999942
1009	Healy's Tavern	\N	374 Newark Ave.	NJ	Jersey City	7302	(201) 222-2777	Jersey City	40.7259653999999998	-74.0522634000000011
1010	Heart of India	\N	79 2nd Ave.	NY	New York	10003	(212) 673-9673	East Village	40.7266568000000007	-73.9894386999999938
1011	Heartland Brewery	\N	127 W 43rd St.	NY	New York	10036	(646) 366-0235	Theater District	40.7562532999999974	-73.9849366000000117
1012	Heavy Woods	\N	50 Wyckoff Ave.	NY	New York	11237	(929) 234-3500	Bushwick	40.7055349999999976	-73.9216858999999999
1013	Hecho en Dumbo	\N	354 Bowery	NY	New York	10012	(212) 937-4245	NoHo	40.7269289999999984	-73.9920800000000156
1014	Heidelberg Restaurant	\N	1648 2nd Ave.	NY	New York	10028	(212) 628-2332	Upper East Side	40.7774408000000008	-73.9517290000000003
1015	The Heights Bar & Grill	\N	2867 Broadway	NY	New York	10025	(212) 866-7035	Morningside Heights	40.8051604999999995	-73.9663850999999966
1016	Heights Tavern	\N	3910 Broadway	NY	New York	10032	(212) 740-5700	Washington Heights	40.8381597999999997	-73.9414518999999899
1017	Hell's Chicken	\N	641 10th Ave.	NY	New York	10036	(212) 757-1120	Midtown West	40.7619425000000035	-73.9942020000000014
1018	Hell's Kitchen	\N	754 9th Ave.	NY	New York	10019	(212) 977-1588	Theater District	40.7638338000000005	-73.9883217000000002
1019	Hell's Kitchen Lounge	\N	150 Lafayette St.	NJ	Newark	7105	(973) 465-4422	Newark	40.7305794000000034	-74.1665733999999901
1020	Hendriks	\N	557 Third Ave.	NY	New York	10016	(212) 686-8080	Murray Hill	40.7473890999999995	-73.9764959999999974
1021	Henry Public	\N	329 Henry St.	NY	Brooklyn	11201	(718) 852-8630	Cobble Hill	40.690277100000003	-73.9962474999999955
1022	Henry's	\N	2745 Broadway	NY	New York	10025	(212) 866-0600	Manhattan Valley	40.8009492999999992	-73.9685111999999947
1023	Heritage Bar & Restaurant	\N	960 McLean Ave.	NY	Yonkers	10704	(914) 776-7532	Yonkers	40.9033615999999967	-73.8658004999999918
1024	Hi Life Bar and Grill	\N	477 Amsterdam Ave.	NY	New York	10024	(212) 787-7199	Upper West Side	40.785511900000003	-73.976230000000001
1025	Hi-Fi	\N	169 Ave A	NY	New York	10009	(212) 420-8392	East Village	40.7283328999999981	-73.9821924999999965
1026	Hibernia	\N	401 W 50th St.	NY	New York	10019	(212) 969-9703	Hell's Kitchen	40.7637215999999967	-73.9891818999999913
1027	Hide-Chan Ramen	\N	248 E 52nd St.	NY	New York	10022	(212) 813-1800	Midtown East	40.7561508000000003	-73.9681882000000002
1028	The Hideaway Seaport	\N	22 Peck Slip	NY	New York	10038	(212) 385-2222	Financial District	40.7080634000000003	-74.0020829999999989
1029	The Hideaway	\N	185 Duane St.	NY	New York	10013	(212) 334-5775	TriBeCa	40.7175758999999999	-74.010275699999994
1030	Highlands	\N	150 W 10th St.	NY	New York	10014	(212) 229-2670	West Village	40.7343431999999979	-74.0010956999999934
1031	Hill and Bay	\N	581 2nd Ave.	NY	New York	10016	(212) 245-5554	Murray Hill	40.7435090000000031	-73.9771659999999969
1032	Hill and Dale	\N	115 Allen St.	NY	New York	10002	(212) 420-1115	Lower East Side	40.7196116000000004	-73.9905729999999977
1033	Hill Country Barbecue Market	\N	30 W 26th St.	NY	New York	10010	(212) 255-4544	Flatiron	40.7442135000000079	-73.9904451999999964
1034	The Hill	\N	416 3rd Ave.	NY	New York	10016	(212) 481-1712	Midtown East	40.7430748000000023	-73.9803756999999962
1035	Hillstone Restaurant	\N	153 E 53rd St.	NY	New York	10022	(212) 888-3828	Midtown East	40.7583182000000122	-73.9703542000000027
1036	Hilton Times Square	\N	234 W 42nd St.	NY	New York	10036	(212) 840-8222	Theater District	40.7563591999999986	-73.9888727999999958
1037	The Hog Pit NYC	\N	37 W 26th St.	NY	New York	10010	(212) 213-4871	Flatiron	40.7445737999999977	-73.990431700000002
1038	Hogshead Tavern	\N	126 Hamilton Pl	NY	New York	10031	(212) 234-1154	Harlem	40.8240150999999969	-73.9493944000000027
1039	Holland Bar	\N	532 Ninth Ave.	NY	New York	10018	(212) 502-4609	Hell's Kitchen	40.7566850999999986	-73.9935217000000023
1040	Hollow Nickel	\N	494 Atlantic Ave.	NY	Brooklyn	11217	(347) 236-3417	Boerum Hill	40.6855771000000033	-73.9819257999999991
1041	Home Sweet Home	\N	131 Chrystie St.	NY	New York	10002	(212) 226-5709	Lower East Side	40.7195084000000023	-73.9935159999999996
1042	Honky Tonk Tavern	\N	1154 First Ave.	NY	Manhattan	10065	(212) 207-8550	Upper East Side	40.7622003000000035	-73.9597605000000016
1043	Honshu	\N	95 Greene St.	NJ	Jersey City	7302	(201) 324-2788	Jersey City	40.7155079999999998	-74.0363839999999982
1044	Hooked on 12th	\N	1123 8th Ave.	NY	Brooklyn	11215	(718) 965-9526	South Slope	40.6639890000000008	-73.980474000000001
1045	Hooters	\N	155 W 33rd St.	NY	New York	10001	(212) 695-9580	Midtown West	40.7502921000000029	-73.9904585000000026
1046	Hops Hill	\N	886 Fulton St.	NY	Clinton Hill	11238	(347) 987-4334	Clinton Hill	40.6830342000000016	-73.9656312999999983
1047	Horace and Sylvia's Publick House	\N	100 Deer Park Ave.	NY	Babylon	11702	(631) 587-5080	Babylon	40.6981693999999976	-73.3231208999999922
1048	Horchata	\N	470 Sixth Ave.	NY	New York	10011	(212) 243-8226	Greenwich Village	40.7355572000000024	-73.9977961000000022
1049	The Horse Box	\N	218 Ave A	NY	New York	10009	(646) 370-1791	East Village	40.7299689000000029	-73.9804074999999983
1050	Hot Bird	\N	546 Clinton Ave.	NY	Brooklyn	11238	(718) 230-5800	Prospect Heights	40.6819330999999877	-73.9668222999999898
1051	Hotel Chantelle	\N	92 Ludlow St.	NY	New York	10002	(212) 254-9100	Lower East Side	40.7184061000000028	-73.988979399999991
1052	Hotel Delmano	\N	82 Berry St.	NY	Brooklyn	11211	(718) 387-1945	Williamsburg - North Side	40.7197669999999974	-73.9581230000000005
1053	Houndstooth Pub	\N	520 8th Ave.	NY	New York	10018	(212) 643-0034	Midtown West	40.7536449999999988	-73.9919341000000088
1054	Hourglass Tavern	\N	373 W 46th St.	NY	New York	10036	(212) 265-2060	Hell's Kitchen	40.7609507000000022	-73.9903379999999942
1055	The House of Brews	\N	302 W 51st St.	NY	New York	10019	(212) 541-7080	Hell's Kitchen	40.762938400000003	-73.986253099999999
1056	House Of Wax	\N	445 Albee Square W	NY	Brooklyn	11201	(929) 382-5403	Downtown Brooklyn	40.6908758999999876	-73.9828655000000026
1057	Hudson Bar & Books	\N	636 Hudson St.	NY	New York	10014	(212) 229-2642	West Village	40.7385183999999967	-74.0053157999999911
1058	Hudson Clearwater	\N	447 Hudson St.	NY	New York	10014	(212) 989-3255	West Village	40.7311102999999974	-74.0069617999999991
1059	Hudson Hotel	\N	356 W 58th St.	NY	New York	10019	(212) 554-6000	Midtown West	40.7681686000000028	-73.984898599999994
1060	Hudson Hound	\N	575 Hudson St.	NY	New York	10014	(646) 638-2900	West Village	40.7361456000000004	-74.0061850000000021
1061	Hudson Malone	\N	218 E 53rd St. 3rd Ave.	NY	New York	10022	(212) 355-6607	Midtown East	40.7572219999999987	-73.9686650000000014
1062	Hudson Station	\N	440 9th Ave.	NY	New York	10001	(212) 244-4406	Hell's Kitchen	40.7536713000000006	-73.9954924000000034
1063	Hudson Terrace	\N	621 W 46th St.	NY	New York	10036	(212) 315-9400	Hell's Kitchen	40.7640407000000025	-73.9975661999999943
1064	Huertas	\N	107 1st Ave.	NY	New York	10003	(212) 228-4490	East Village	40.7268485000000027	-73.986226000000002
1065	Hummus Kitchen	\N	768 9th Ave.	NY	New York	10019	(212) 333-3009	Theater District	40.764280399999997	-73.9880017999999922
1066	Hundred Acres	\N	38 Macdougal St.	NY	New York	10012	(212) 475-7500	South Village	40.7270448000000016	-74.0028001999999958
1067	Hurley's	\N	232 W 48th St.	NY	New York	10036	(212) 765-8981	Theater District	40.7604605000000078	-73.9861669000000006
1068	Ichabod's	\N	15 Irving Pl	NY	Manhattan	10003	(212) 777-5102	Flatiron	40.7348584000000002	-73.9884014000000008
1069	Ichi Umi	\N	6 E 32nd St.	NY	New York	10016	(212) 725-1333	Midtown East	40.7465365999999989	-73.984979299999992
1070	Iggy's Keltic Lounge	\N	132 Ludlow St.	NY	New York	10002	(212) 529-2731	Lower East Side	40.7202233000000007	-73.9881080999999909
1071	Iguana New York	\N	240 W 54th St.	NY	New York	10019	(212) 765-5454	Theater District	40.7642062999999979	-73.9832104999999984
1072	Il Bambino	\N	48 W 8th St.	NY	New York	10011	(212) 228-2466	West Village	40.7330419999999975	-73.9987327999999991
1073	IL Bastardo	\N	191 7th Ave.	NY	New York	10011	(212) 675-5980	Chelsea	40.7429174999999972	-73.9961926999999946
1074	IL Brigante	\N	214 Front St.	NY	New York	10038	(212) 285-0222	South Street Seaport	40.7074509999999989	-74.0026419999999945
1075	il Buco Alimentari & Vineria	\N	53 Great Jones St.	NY	New York	10012	(212) 837-2622	NoHo	40.7264748999999995	-73.9925436999999988
1076	ilili	\N	236 5th Ave.	NY	New York	10001	(212) 683-2929	Flatiron	40.7444210999999967	-73.9879171999999983
1077	Illusions Hookah & Mixology Lounge	\N	3229 Westchester Ave.	NY	Bronx	10461	(347) 209-0366	Pelham Bay	40.8522128999999978	-73.829006899999996
1078	The Immigrant	\N	341 E 9th St.	NY	New York	10003	(347) 224-1210	East Village	40.7285658999999995	-73.9853651999999897
1079	Indie Food And Wine	\N	144 W 65th St.	NY	New York	10023	(212) 875-5256	Upper West Side	40.7733825999999979	-73.9835490000000107
1080	Industry Bar	\N	355 W 52nd St.	NY	New York	10019	(646) 476-2747	Theater District	40.7644962999999976	-73.9868898999999942
1081	Industry Kitchen	\N	70 South St.	NY	New York	10005	(212) 487-9600	Two Bridges	40.7049646999999979	-74.0051455999999916
1082	Infirmary	\N	1720 2nd Ave.	NY	New York	10128	(917) 388-2512	Upper East Side	40.7799438999999992	-73.9498614999999972
1083	Inside Park at St Bart's	\N	325 Park Ave.	NY	New York	10022	(212) 593-3333	Midtown East	40.7572248999999971	-73.9730478999999974
1084	Insomnia Bar & Restaurant	\N	151 Dyckman St.	NY	New York	10040	(917) 692-1698	Washington Heights	40.8634719000000004	-73.9256664999999913
1085	Intermezzo	\N	202 8th Ave.	NY	New York	10011	(212) 929-3433	Chelsea	40.7435210000000012	-73.9994557999999927
1086	International Bar	\N	120 1/2 1st Ave.	NY	New York	10009	(212) 777-1643	East Village	40.7270319000000001	-73.9854076000000163
1087	International Wings Factory	\N	1762 1st Ave.	NY	New York	10128	(212) 348-2627	Upper East Side	40.7802574000000035	-73.9465965999999923
1088	Inwood Local	\N	4957 Broadway	NY	New York	10034	(212) 544-8900	Inwood	40.868141399999999	-73.920670599999994
1089	Ipanema Restaurant	\N	13 W 46th St.	NY	New York	10036	(212) 730-5848	Midtown	40.7565845999999965	-73.9797925000000021
1090	Ipanema Restaurant	\N	43 W 46th St.	NY	New York	10036	(212) 730-5848	Midtown	40.7569558000000001	-73.980635300000003
1091	Ippudo Ny	\N	65 4th Ave.	NY	New York	10003	(212) 388-0088	East Village	40.7309395999999992	-73.990223499999999
1092	Ippudo Westside	\N	321 W 51st St.	NY	New York	10019	(212) 974-2500	Theater District	40.763493099999998	-73.9865836999999971
1093	The Irish American Pub & Restaurant	\N	17 John St.	NY	New York	10038	(646) 414-6223	Financial District	40.7100340000000003	-74.0086569999999995
1094	Irish Cottage	\N	10807 72nd Ave.	NY	Forest Hills	11375	(718) 520-8530	Forest Hills	40.7196469999999877	-73.8425881999999945
1095	Irish Exit	\N	978 2nd Ave.	NY	New York	10022	(212) 755-8383	Midtown East	40.7557761999999997	-73.9674535999999989
1096	The Irish Pub	\N	834 Merrick Rd.	NY	Baldwin	11510	(516) 208-5940	Baldwin	40.6506019999999992	-73.6114589999999964
1097	Irish Rover	\N	3718 28th Ave.	NY	Astoria	11103	(718) 278-9372	Astoria	40.7656836000000027	-73.91476329999999
1098	Iron Bar	\N	5 South St.	NJ	Morristown	7960	(973) 455-7111	Morristown	40.7958562000000029	-74.481136499999991
1099	Iron Bar & Lounge	\N	713 8th Ave.	NY	New York	10036	(212) 961-7507	Hell's Kitchen	40.759149800000003	-73.9886529999999993
1100	Iron Horse NYC	\N	32 Cliff St.	NY	New York	10038	(646) 546-5426	Financial District	40.7081032999999977	-74.004929599999997
1101	Isabella's	\N	359 Columbus Ave.	NY	New York	10024	(212) 724-2100	Upper West Side	40.7804817999999969	-73.9763511000000022
1102	Ise Menkui-Tei	\N	58 W 56th St.	NY	New York	10019	(212) 707-8702	Midtown West	40.7633128000000013	-73.9771710999999925
1103	Isla Verde Cafe	\N	1859 Westchester Ave.	NY	Bronx	10472	(718) 828-3800	Soundview	40.8328141000000002	-73.8639490999999992
1104	Isohama	\N	1666 3rd Ave.	NY	New York	10128	(212) 828-0099	Upper East Side	40.783614	-73.950887999999992
1105	Istanbul Kebab House	\N	712 9th Ave.	NY	New York	10019	(212) 582-8282	Theater District	40.7625000000000028	-73.9892529999999908
1106	Ithaka	\N	308 E 86th St.	NY	New York	10028	(212) 628-9100	Upper East Side	40.7774234999999976	-73.9513304999999974
1107	Ivy	\N	944 8th Ave.	NY	New York	10019	(212) 459-9444	Hell's Kitchen	40.7657608000000025	-73.983176499999999
1108	Izakaya MEW	\N	53 W 35th St.	NY	New York	10001	(646) 368-9384	Midtown West	40.7501852999999983	-73.9863203999999968
1109	Izakaya NoMad	\N	13 W 26th St.	NY	New York	10010	(212) 213-6258	Flatiron	40.7441596000000033	-73.9894689999999997
1110	J'eatjet?	\N	685 5th Ave.	NY	Brooklyn	11215	(347) 227-7410	South Slope	40.6614677999999969	-73.9930078999999949
1111	Jack Demsey's	\N	36 W 33rd St.	NY	New York	10001	(212) 629-9899	Midtown West	40.7483251000000024	-73.9869592000000011
1112	Jack Doyle's Bar & Restaurant	\N	240 W 35th St.	NY	New York	10001	(212) 268-1255	Midtown West	40.7520798999999982	-73.9918473999999975
1113	Jack the Horse Tavern	\N	66 Hicks St.	NY	Brooklyn	11201	(718) 852-5084	Brooklyn Heights	40.7000395000000026	-73.9937808999999902
1114	Jackson's Eatery | Bar	\N	10-37 Jackson Ave.	NY	Long Island City	11101	(347) 649-1721	Hunters Point	40.7424396999999985	-73.9532718999999901
1115	Jacob's Pickles	\N	509 Amsterdam Ave.	NY	New York	10024	(212) 470-5566	Upper West Side	40.7866272999999993	-73.975535899999997
1116	Jacques 1534	\N	20 Prince St.	NY	New York	10012	(212) 966-8886	Nolita	40.7226190000000017	-73.9945469999999972
1117	Jadis	\N	42 Rivington St.	NY	New York	10079	(212) 254-1675	Lower East Side	40.7210706999999985	-73.9909790999999899
1118	Jake's Dilemma	\N	430 Amsterdam Ave.	NY	New York	10024	(212) 580-0556	Upper West Side	40.7843674000000007	-73.9778055000000023
1119	Jalopy Tavern	\N	317 Columbia St.	NY	Brooklyn	11231	(718) 625-3214	Columbia Street Waterfront District	40.6812875000000034	-74.0042795000000098
1120	Jameson's Bar and Restaurant	\N	975 2nd Ave.	NY	New York	10022	(212) 588-0146	Midtown East	40.7559903999999875	-73.9680292000000037
1121	Jane	\N	100 W Houston St.	NY	New York	10012	(212) 254-7000	Greenwich Village	40.7273702000000029	-74.0002513999999962
1122	Japas 38	\N	9 E 38th St.	NY	New York	10016	(212) 679-4040	Midtown East	40.7507322000000087	-73.9816989999999919
1123	Javelina Tex Mex	\N	119 E 18th St.	NY	New York	10003	(212) 539-0202	Gramercy	40.7368562999999995	-73.9874081999999902
1124	Jazz Standard	\N	116 E 27th St.	NY	New York	10016	(212) 576-2232	Flatiron	40.7421742999999879	-73.9838007000000033
1125	Jean-Georges	\N	1 Central Park W	NY	New York	10023	(212) 299-3900	Upper West Side	40.7691198999999997	-73.9815582000000092
1126	Jebon Sushi & Noodle	\N	15 St. Marks Pl	NY	New York	10003	(212) 388-1313	East Village	40.7293368999999998	-73.9888365999999991
1127	The Jeffrey Craft Beer & Bites	\N	311 E 60th St.	NY	New York	10022	(212) 355-2337	Upper East Side	40.7611089999999976	-73.9629919999999998
1128	Jeffrey's Grocery	\N	172 Waverly Pl	NY	New York	10014	(646) 398-7630	West Village	40.7340038999999976	-74.0013732000000033
1129	Jeremy's Ale House	\N	228 Front St.	NY	New York	10038	(212) 964-3537	South Street Seaport	40.7077250999999976	-74.0021069999999952
1130	Jill Lindsey Cafe	\N	370 Myrtle Ave.	NY	Brooklyn	11205	(347) 987-4538	Fort Greene	40.6930176999999986	-73.9713648999999975
1131	Jim Brady's	\N	75 Maiden Ln.	NY	New York	10038	(212) 425-1300	Financial District	40.7077598999999992	-74.0073928999999993
1132	Jimmy's Corner	\N	140 W 44th St.	NY	New York	10079	(212) 221-9510	Theater District	40.7565939999999998	-73.9848379999999963
1133	Jimmy's Diner	\N	577 Union Ave.	NY	Brooklyn	11211	(718) 218-7174	Williamsburg - North Side	40.7176979999999986	-73.9524478999999957
1134	Jimmy's No. 43	\N	43 E 7th St.	NY	New York	10003	(212) 982-3006	East Village	40.7283141999999998	-73.9885790000000014
1135	Jin Ramen	\N	462 Amsterdam Ave.	NY	New York	10024	(646) 657-0755	Upper West Side	40.7853899999999996	-73.9770828999999992
1136	Joe & MissesDoe	\N	45 E 1st St.	NY	New York	10003	(212) 780-0262	East Village	40.7236949999999993	-73.9899647000000016
1137	Joe Allen	\N	326 W 46th St.	NY	New York	10036	(212) 581-6464	Hell's Kitchen	40.7600570000000033	-73.989118199999993
1138	Joe Broadway's Billiards & Sports Pub	\N	2178 Forest Ave.	NY	Staten Island	10303	(718) 727-9194	Graniteville	40.6261837999999997	-74.1622198000000026
1139	John Doe	\N	253 5th Ave.	NY	New York	10001	(646) 882-4007	Flatiron	40.7448491999999973	-73.9871816999999936
1140	The John Dory Oyster Bar	\N	1196 Broadway	NY	New York	10001	(212) 792-9000	Midtown West	40.7458197999999996	-73.988433999999998
1141	John Sullivan's	\N	210 W 35th St.	NY	New York	10001	(212) 993-7223	Midtown West	40.7516510000000025	-73.9907070000000004
1142	John's of 12th Street	\N	302 E 12th St.	NY	New York	10003	(212) 475-9531	East Village	40.7306589000000017	-73.985506700000002
1143	John's Of Bleeker Street	\N	278 Bleecker St.	NY	New York	10014	(212) 243-1680	West Village	40.7316186999999985	-74.0034467999999919
1144	Johnny Utah's	\N	25 W 51st St.	NY	New York	10019	(212) 265-8824	Midtown West	40.7600424999999973	-73.9782601
1145	Johnny's Bar	\N	90 Greenwich Ave.	NY	New York	10011	(212) 741-5279	West Village	40.7378967000000003	-74.0016990000000021
1146	The Jolly Monk	\N	701 9th Ave.	NY	New York	10019	(646) 657-0080	Theater District	40.7624660000000034	-73.990082000000001
1147	Jones Wood Foundry	\N	401 E 76th St.	NY	New York	10075	(212) 249-2700	Upper East Side	40.7703989999999976	-73.9535410000000013
1148	Jose Tejas	\N	700 US Hwy. 1 N	NJ	Iselin	8830	(732) 283-3883	Iselin	40.5611792999999992	-74.3010414999999966
1149	Joseph Leonard	\N	170 Waverly Pl	NY	New York	10014	(646) 429-8383	West Village	40.7336402999999976	-74.0016650000000027
1150	Joshua Tree	\N	513 3rd Avenue	NY	New York	10016	(212) 689-0058	Midtown East	40.7459224999999989	-73.9775738999999959
1151	Josie Woods Pub	\N	11 Waverly Pl	NY	New York	10003	(212) 228-6806	Greenwich Village	40.7301484999999985	-73.9940770999999984
1152	Josie's Bar	\N	520 E 6th St.	NY	New York	10009	(212) 228-9532	East Village	40.7248613999999876	-73.98293129999999
1153	Judy & Punch	\N	34-08 30th Ave.	NY	Astoria	11103	(718) 626-3101	Astoria	40.7654494000000014	-73.9188053999999966
1154	Juga Lounge	\N	8 W 36th St.	NY	New York	10018	(212) 290-2211	Midtown West	40.7498429999999985	-73.9845119999999952
1155	Juicy Platters	\N	23-16 Broadway	NJ	Fair Lawn	7410	(201) 773-8400	Fair Lawn	40.9224669999999975	-74.1119619999999912
1156	Juke Bar	\N	196 2nd Ave.	NY	Manhattan	10003	(212) 228-7464	East Village	40.7310525999999982	-73.9854784999999993
1157	Jules Bistro	\N	65 Saint Marks Pl	NY	New York	10003	(212) 477-5560	East Village	40.7281691000000023	-73.9860752000000019
1158	Juliette	\N	135 N 5th St.	NY	Brooklyn	11249	(718) 388-9222	Williamsburg - North Side	40.7170041999999981	-73.9590802999999966
1159	Julius	\N	159 W 10th St.	NY	New York	10014	(212) 243-1928	Greenwich Village	40.7345480999999978	-74.0016253000000006
1160	The Junction	\N	329 Lexington Ave.	NY	New York	10016	(212) 682-7700	Murray Hill	40.7492998999999969	-73.9773510999999928
1161	June	\N	231 Ct. St.	NY	Brooklyn	11201	(917) 909-0434	Cobble Hill	40.6973962	-73.9885171999999898
1162	Jungsik	\N	2 Harrison St.	NY	New York	10013	(212) 219-0900	TriBeCa	40.718826700000001	-74.0090750999999898
1163	Juniper	\N	112 Berry St.	NY	Brooklyn	11211	(718) 782-8777	Williamsburg - North Side	40.7188998999999967	-73.9590323999999981
1164	Junoon	\N	27 W 24th St.	NY	New York	10010	(212) 490-2100	Flatiron	40.743192999999998	-73.9908379999999966
1165	Just Jake's	\N	30 Park St.	NJ	Montclair	7042	(973) 655-8987	Montclair	40.816199300000001	-74.2183885999999973
1166	K Pacho	\N	1270 Union Tpke	NY	New Hyde Park	11040	(516) 358-2222	New Hyde Park	40.7528270999999975	-73.6993592999999976
1167	Kaia Wine Bar	\N	1614 3rd Ave.	NY	New York	10128	(212) 722-0490	Upper East Side	40.7818655000000021	-73.9521028999999999
1168	Kang Suh Restaurant	\N	1250 Broadway	NY	New York	10001	(212) 564-6845	Midtown West	40.7477161999999993	-73.9878099999999961
1169	Kanoyama	\N	175 2nd Ave.	NY	New York	10003	(212) 777-5266	East Village	40.7307062000000002	-73.986566400000001
1170	Karaoke Boho	\N	186 W 4th St.	NY	New York	10014	(212) 255-0011	West Village	40.7325737999999973	-74.0021481999999935
1171	Karaoke Cave	\N	9 E 13th St. B1	NY	New York	10003	(646) 486-3225	Union Square	40.7351161000000133	-73.9933019999999999
1172	Karaoke Duet 48	\N	304 E 48th St.	NY	New York	10017	(212) 753-0030	Midtown East	40.7531849999999878	-73.9693632000000036
1173	Karaoke DUET 53	\N	900 8th Ave.	NY	New York	10019	(212) 757-4676	Theater District	40.7643339999999981	-73.9841492999999986
1174	Karizma	\N	244 E 51st St.	NY	New York	10022	(212) 605-9988	Midtown East	40.7556061000000085	-73.9688180999999929
1175	Karma	\N	51 1st Ave.	NY	New York	10003	(212) 677-3160	East Village	40.7249282999999878	-73.9876564999999999
1176	Kashkaval Garden	\N	852 9th Ave.	NY	New York	10019	(212) 245-1758	Hell's Kitchen	40.7667799000000031	-73.9861997999999943
1177	Katch Astoria	\N	31-19 Newtown Ave.	NY	Astoria	11102	(718) 777-2230	Astoria	40.7672097000000022	-73.9201936999999987
1178	Katra Lounge	\N	217 Bowery St.	NY	New York	10002	(212) 473-3113	Lower East Side	40.7217157999999984	-73.9931881999999916
1179	Katz's Delicatessen	\N	205 E Houston St.	NY	New York	10002	(212) 254-2246	Lower East Side	40.722216600000003	-73.9875028999999955
1180	Kazuza	\N	107 Ave. A	NY	New York	10009	(212) 505-9300	East Village	40.7260218999999992	-73.9839565999999991
1181	Kazza Wine Bar	\N	708 W 177 St.	NY	New York	10033	(646) 863-2447	Washington Heights	40.8475419000000031	-73.9388643999999999
1182	Keens Steakhouse	\N	72 W 36th St.	NY	New York	10018	(212) 947-3636	Midtown West	40.7506796999999992	-73.9864668999999964
1183	The Keep	\N	205 Cypress Ave.	NY	Ridgewood	11385	(718) 381-0400	Ridgewood	40.7082673000000028	-73.9197018999999926
1184	Kefi	\N	505 Columbus Ave.	NY	New York	10024	(212) 873-0200	Upper West Side	40.7852930000000029	-73.9726220000000012
1185	Keg & Lantern Brewing Company	\N	97 Nassau Ave.	NY	Brooklyn	11222	(718) 389-5050	Greenpoint	40.7240664999999993	-73.9503591999999941
1186	Keg 229	\N	229 Front St.	NY	New York	10038	(212) 566-2337	South Street Seaport	40.7074499000000003	-74.0018888999999973
1187	The Keg Room	\N	53 W 36th St.	NY	New York	10018	(212) 643-1400	Midtown West	40.7508744000000007	-73.9858779999999996
1188	Kelly's Sports Bar	\N	12 Avenue A	NY	New York	10009	(212) 388-1464	East Village	40.722566999999998	-73.9858837000000022
1189	Kent Ale House	\N	51 Kent Ave.	NY	Brooklyn	11249	(347) 227-8624	Williamsburg - North Side	40.7223271000000011	-73.9592554999999976
1190	Keste Pizza & Vino	\N	271 Bleecker St.	NY	New York	10014	(212) 243-1500	West Village	40.7315368999999876	-74.0029455999999897
1191	The Kettle Black	\N	8622 3rd Ave.	NY	Brooklyn	11209	(718) 680-7862	Bay Ridge	40.6228978999999981	-74.0315595000000002
1192	Kettle of Fish	\N	59 Christopher St.	NY	New York	10014	(212) 414-2278	West Village	40.7338029999999875	-74.0023856999999907
1193	Keuka Kafe a Wine Bar	\N	112-04 Queens Blvd.	NY	Forest Hills	11375	(718) 880-1478	Forest Hills	40.7178692000000026	-73.8368485000000021
1194	Keybar	\N	432 E. 13th St.	NY	New York	10009	(212) 478-3021	East Village	40.7299038999999965	-73.981878199999997
1195	Khe-Yo	\N	157 Duane St.	NY	New York	10013	(212) 587-1089	TriBeCa	40.7169060000000016	-74.0085869999999915
1196	Kiabacca	\N	639 10th Ave.	NY	New York	10036	(212) 649-4675	Hell's Kitchen	40.7618508999999989	-73.9942649999999986
1197	Kiin Thai Eatery	\N	36 E 8th St.	NY	New York	10003	(212) 529-2363	Greenwich Village	40.7313763000000009	-73.9946556999999956
1198	Killarney Rose	\N	127 Pearl St.	NY	New York	10005	(212) 422-1486	Financial District	40.7051463000000027	-74.0085782000000023
1199	Killmeyer's Old Bavaria Inn	\N	4254 Arthur Kill Rd.	NY	Staten Island	10309	(718) 984-1202	Staten Island	40.5384793999999999	-74.237129699999997
1200	Kilo	\N	857 9th Ave.	NY	New York	10019	(212) 707-8770	Hell's Kitchen	40.7670876999999976	-73.9865513999999962
1201	King Garden of 34th Ave	\N	4306 34th Ave.	NY	Long Island City	11101	(718) 472-3766	Astoria	40.7552730999999966	-73.9183261000000016
1202	Kingside	\N	124 W 57th St.	NY	New York	10019	(212) 707-8000	Midtown West	40.7646394000000001	-73.9784472999999991
1203	Kingsley	\N	190 Ave. B	NY	New York	10009	(212) 674-4500	East Village	40.7279835999999875	-73.9793238000000031
1204	Kingston Hall	\N	149 2nd Ave.	NY	New York	10003	(212) 673-2663	East Village	40.7295362999999995	-73.9874138999999929
1205	The Kiosk	\N	80 E 116th St.	NY	New York	10029	(212) 996-1242	East Harlem	40.7992366000000004	-73.9436652999999922
1206	Kittery	\N	305 Smith St.	NY	Brooklyn	11231	(718) 643-3293	Gowanus	40.6814092999999986	-73.9938298999999944
1207	Klimat	\N	77 E 7th St.	NY	New York	10003	(917) 214-0589	East Village	40.7274320000000003	-73.9863052999999979
1208	Klong	\N	7 St. Marks Pl	NY	New York	10003	(212) 505-9955	East Village	40.729498300000003	-73.9891819999999996
1209	Knickerbocker Bar & Grill	\N	33 University Pl	NY	New York	10003	(212) 228-8490	Greenwich Village	40.7320287999999877	-73.9942334999999929
1210	Koodo Sushi Corp	\N	55 Liberty St.	NY	New York	10005	(212) 425-2890	Financial District	40.7088048000000029	-74.0094069999999959
1211	Krupa Grocery	\N	231 Prospect Park W	NY	Brooklyn	11215	(718) 709-7098	Windsor Terrace	40.6598323999999991	-73.9805332999999905
1212	Krush	\N	2 W 32nd St.	NY	New York	10001	(917) 864-9456	Midtown West	40.7472117000000011	-73.9861835999999897
1213	KTCHN Restaurant	\N	508 W 42nd St.	NY	New York	10036	(212) 868-2999	Hell's Kitchen	40.7597852000000032	-73.9963023999999905
1214	Kumo Sushi	\N	214 1st Ave.	NY	New York	10009	(212) 533-3030	East Village	40.7304140000000032	-73.9828789999999969
1215	Kura	\N	130 St. Marks Pl	NY	New York	10009	(212) 228-1010	East Village	40.7266915000000012	-73.9835841000000016
1216	Kurant	\N	1091 2nd Ave.	NY	New York	10022	(646) 370-6928	Midtown East	40.7597388999999879	-73.9652698999999956
1217	L & W Oyster Co.	\N	254 5th Ave.	NY	New York	10001	(212) 203-7772	Flatiron	40.7449945999999983	-73.9874556999999982
1218	L'Artusi	\N	228 W 10th St.	NY	New York	10014	(212) 255-5757	West Village	40.7337257999999878	-74.0051218999999918
1219	L'inizio Pizza Bar	\N	47-23 Vernon Blvd.	NY	Long Island City	11101	(718) 361-1965	Hunters Point	40.7449360000000027	-73.9531219999999934
1220	L'ybane Wine Bar & Restaurant	\N	709 8th Ave.	NY	New York	10036	(212) 582-2012	Theater District	40.7591212000000027	-73.9888296000000025
1221	La Adelita Restaurant	\N	52-22 Roosevelt Ave.	NY	Woodside	11377	(718) 651-0200	Woodside	40.7442131000000032	-73.9116559999999936
1222	La Biblioteca	\N	622 Third Ave.	NY	New York	10017	(212) 808-8110	Midtown East	40.7497506999999999	-73.9756082999999904
1223	La Carafe	\N	653 9th Ave.	NY	New York	10036	(212) 333-5300	Theater District	40.7608054999999965	-73.991232999999994
1224	La Carbonara	\N	202 W 14th St.	NY	New York	10011	(212) 255-2060	West Village	40.7385931999999968	-74.0003268999999904
1225	La Cava	\N	939 2nd Ave.	NY	New York	10022	(212) 223-1206	Midtown East	40.7548515000000009	-73.9688862999999941
1226	La Caverna	\N	122-124 Rivington St.	NY	New York	10002	(212) 475-2126	Lower East Side	40.7199178999999987	-73.9870590000000021
1227	La Cerveceria	\N	65 2nd Ave.	NY	New York	10003	(212) 777-6965	East Village	40.7260895000000005	-73.9898081999999988
1228	La Contenta	\N	102 Norfolk St.	NY	New York	10002	(212) 432-4180	Lower East Side	40.7187348	-73.9869430999999906
1229	La Defense	\N	2 Metrotech Ctr	NY	Brooklyn	11201	(718) 855-4200	Downtown Brooklyn	40.6933640000000025	-73.9857147000000026
1230	La Esquina Corner Deli	\N	114 Kenmare St.	NY	New York	10012	(646) 613-7100	SoHo	40.721392299999998	-73.9976104999999933
1231	La Flaca	\N	384 Grand St.	NY	New York	10002	(646) 692-9259	Lower East Side	40.7164557999999985	-73.9876217999999994
1232	La Grenouille	\N	3 E 52nd St.	NY	New York	10022	(212) 752-1495	Midtown East	40.7596795999999983	-73.9755706999999916
1233	La Lanterna di Vittorio	\N	129 MacDougal St.	NY	New York	10012	(212) 529-5945	Greenwich Village	40.7307088000000022	-74.0001470999999924
1234	La Linea	\N	15 First Ave.	NY	New York	10003	(212) 777-1571	East Village	40.7235158000000013	-73.988558299999994
1235	La Loteria	\N	29 7th Ave. S	NY	New York	10014	(212) 858-9096	West Village	40.7308299000000034	-74.0041406999999936
1236	La Mangeoire	\N	1008 2nd Ave.	NY	New York	10022	(212) 759-7086	Midtown East	40.756832799999998	-73.9668353999999937
1237	La Marina	\N	348 Dyckman St.	NY	New York	10034	(212) 567-6300	Washington Heights	40.8690082999999973	-73.9320982999999927
1238	La Mela Ristorante	\N	167 Mulberry St.	NY	New York	10013	(212) 431-9493	Little Italy	40.7199257999999986	-73.9973511999999971
1239	La Nacional Tapas Bar	\N	239 W 14th St.	NY	New York	10011	(212) 243-9308	West Village	40.7394759000000022	-74.0011678999999987
1240	La Palapa	\N	77 St. Marks Pl.	NY	New York	10003	(212) 777-2537	East Village	40.7279586999999879	-73.9856096000000036
1241	La Plage	\N	131 Creek Rd.	NY	Wading River	11792	(631) 744-9200	Wading River	40.9660921999999985	-72.8532294000000036
1242	La Playa Restaurant	\N	8716 Rockaway Beach Blvd.	NY	Rockaway Beac	11693	(718) 318-8435	Seaside	40.587608000000003	-73.8128279999999961
1243	La Pulperia	\N	371 W 46 St.	NY	New York	10036	(212) 956-3055	Hell's Kitchen	40.7609631999999991	-73.9902680999999944
1244	La Pulperia UES	\N	1626 2nd Ave.	NY	New York	10028	(212) 933-0757	Upper East Side	40.7766202000000035	-73.9523274999999956
1245	La Sirena Ristorante	\N	88 9th Ave.	NY	New York	10011	(212) 977-6096	Chelsea	40.742457899999998	-74.0038199999999904
1246	La Tarte Flambee	\N	153 East 33rd St.	NY	New York	10016	(917) 261-2070	Murray Hill	40.7455949000000004	-73.9794313999999957
1247	The Lambs Club	\N	132 W 44th St.	NY	New York	10036	(212) 997-5262	Theater District	40.7565061999999969	-73.9846347000000009
1248	Land & Sea Restaurant	\N	20-12 Fair Lawn Ave.	NJ	Fair Lawn	7410	(201) 794-7240	Fair Lawn	40.9385177999999996	-74.1220903999999905
1249	Landmarc	\N	179 W Broadway	NY	New York	10013	(212) 343-3883	TriBeCa	40.7179003999999978	-74.007054999999994
1250	Landmark Tavern	\N	626 11th Ave.	NY	New York	10036	(212) 247-2562	Hell's Kitchen	40.7631317000000024	-73.996252400000003
1251	Langan's Bar & Restaurant	\N	150 W 47th St.	NY	New York	10036	(212) 869-5482	Theater District	40.7586323000000021	-73.9838168999999937
1252	Lansdowne Road	\N	599 10th Ave.	NY	New York	10036	(212) 239-8020	Hell's Kitchen	40.7607190000000017	-73.9950896
1253	Lantern Hall	\N	52 Harrison Pl	NY	East Williamsburg	11237	(718) 381-2122	Bushwick	40.7062764000000001	-73.9313511999999946
1254	Las Margaritas	\N	7206 3rd Ave.	NY	Brooklyn	11209	(718) 238-7630	Bay Ridge	40.633364499999999	-74.0272224999999935
1255	Las Ramblas	\N	170 W 4th St.	NY	New York	10014	(646) 415-7924	West Village	40.7320188999999999	-74.0016270999999932
1256	Lasagna Ristorante	\N	196 8th Ave.	NY	New York	10011	(212) 242-4551	Chelsea	40.7432348999999974	-73.9996781999999911
1257	Latitude Bar & Grill	\N	783 8th Ave.	NY	New York	10036	(212) 245-3034	Hell's Kitchen	40.7609369999999984	-73.9875068999999996
1258	Laut	\N	15 E 17th St.	NY	New York	10003	(212) 206-8989	Union Square	40.7376075999999969	-73.9910715999999979
1259	Lavender Lake	\N	383 Carroll St.	NY	Brooklyn	11231	(347) 799-2154	Gowanus	40.678622500000003	-73.9897591000000006
1260	Lavo	\N	39 E 58th St.	NY	New York	10022	(212) 750-5588	Midtown East	40.7630152999999993	-73.971318999999994
1261	Lazy Boy Saloon	\N	154 Mamaroneck Ave.	NY	White Plains	10601	(914) 761-0272	White Plains	41.0287216999999984	-73.7653820000000024
1262	Lazy Point	\N	310 Spring St.	NY	New York	10013		South Village	40.7257504999999966	-74.0086009999999987
1263	Le Bain	\N	444 West 13th St.	NY	New York	10014	(212) 645-4646	Meatpacking District	40.7410764999999984	-74.0082853999999912
1264	Le Bernardin	\N	155 W 51st St.	NY	New York	10019	(212) 554-1515	Theater District	40.7616583999999875	-73.9816912999999943
1265	Le Botaniste	\N	833 Lexington Ave.	NY	New York	10065	(917) 262-0766	Upper East Side	40.7649411000000015	-73.9658514999999994
1266	Le Cheile	\N	839 W 181st St.	NY	New York	10033	(212) 740-3111	Washington Heights	40.8514952000000022	-73.9399875999999949
1267	Le Cheri	\N	251 S 18th St.	PA	Philadelphia	19103	(215) 546-7700	Rittenhouse Square	39.9482359000000002	-75.1708167000000032
1268	Le Cirque	\N	151 E 58th St.	NY	New York	10022	(212) 644-0202	Midtown East	40.7615678000000017	-73.9679019999999952
1269	Le Midi Bar & Restaurant	\N	11 E 13th St.	NY	New York	10003	(212) 255-8787	Union Square	40.7351804999999985	-73.9931852999999933
1270	Le Pif	\N	2058 Broadway Ave.	NY	New York	10023	(212) 799-2253	Upper West Side	40.7775486000000029	-73.9817252999999937
1271	Le Relais De Venise	\N	590 Lexington Ave.	NY	New York	10022	(212) 758-3989	Midtown East	40.7576759000000024	-73.9717686000000043
1272	Le Rendez-Vous Bistro	\N	520 Blvd.	NJ	Kenilworth	7033	(908) 931-0888	Kenilworth	40.6763257000000067	-74.2913779999999946
1273	Le Reve Restaurant & Lounge	\N	125 E 54th St.	NY	New York	10022	(212) 759-7777	Midtown East	40.7595373999999993	-73.9712572999999907
1274	Le Souk Lounge	\N	510 Laguardia Pl	NY	New York	10012	(212) 777-5454	Greenwich Village	40.7279314999999968	-73.999361499999992
1275	Le Village	\N	127 E 7th St.	NY	New York	10009	(212) 539-0231	East Village	40.7264503000000033	-73.9839786999999944
1276	Le Vin Wine bar and Tapas	\N	356 Smith Haven Mall	NY	Lake Grove	11767	(631) 979-9463	Lake Grove	40.8629706999999982	-73.1297340999999932
1277	Le Zie	\N	172 7th Ave.	NY	New York	10011	(212) 206-8686	Chelsea	40.7425090999999995	-73.9970965999999919
1278	The Leadbelly	\N	14B Orchard St.	NY	New York	10002	(646) 596-9142	Chinatown	40.715003099999997	-73.9916597999999937
1279	Left Bank	\N	117 Perry St.	NY	New York	10014	(212) 727-1170	West Village	40.7351601000000016	-74.0067226999999974
1280	Legends Bar	\N	6 West 33rd St.	NY	New York	10001	(212) 967-7792	Midtown West	40.747932800000001	-73.9857111000000032
1281	Lelabar	\N	422 Hudson St.	NY	New York	10014	(212) 206-0594	West Village	40.7303825999999987	-74.0065681999999896
1282	Lemongrass Grill	\N	156 Ct. St.	NY	Brooklyn	11201	(718) 522-9728	Cobble Hill	40.6991798000000031	-73.9892979999999909
1283	Lenox Saphire Harlem	\N	341 Lenox Ave.	NY	New York	10027	(212) 866-9700	Harlem	40.8093679999999992	-73.9447509999999966
1284	Les Enfants de Boheme	\N	177 Henry St.	NY	New York	10002	(646) 476-4843	Two Bridges	40.7136581999999976	-73.9887408000000022
1285	Les Halles	\N	15 John St.	NY	New York	10038	(212) 285-8585	Financial District	40.7101189999999988	-74.0088069999999902
1286	Lexa Bar & Garden	\N	357 E 204th St.	NY	Norwood	10467	(929) 243-3300	Norwood	40.8721244999999982	-73.8774630999999999
1287	Lexington Brass	\N	517 Lexington Ave.	NY	New York	10017	(212) 392-5976	Midtown East	40.755297800000001	-73.9729303999999956
1288	The Lexington Social	\N	1634 Lexington Ave.	NY	New York	10029	(646) 410-0099	East Harlem	40.7905806999999996	-73.947708899999995
1289	Leyenda	\N	221 Smith St.	NY	Carroll Gardens	11201	(347) 987-3260	Cobble Hill	40.6842709000000013	-73.9919208999999967
1290	Libation	\N	137 Ludlow St.	NY	New York	10002	(212) 529-2153	Lower East Side	40.7204222000000016	-73.9884416999999956
1291	Libertador	\N	1725 2nd Ave.	NY	New York	10128	(212) 348-6222	Upper East Side	40.7799955999999995	-73.9504908000000114
1292	The Liberty	\N	29 W 35th St.	NY	New York	10001	(212) 967-4000	Midtown West	40.7499317999999988	-73.9854828999999938
1293	The Library	\N	7 Ave A	NY	New York	10009	(212) 375-1352	East Village	40.7226156999999986	-73.9863579000000016
1294	Libretto's Pizzeria	\N	546 3rd Ave.	NY	New York	10016	(212) 213-6445	Midtown East	40.747300899999999	-73.9772832000000022
1295	LIC Market	\N	21-52 44th Dr.	NY	Long Island City	11101	(718) 361-0013	Long Island City	40.7474589999999992	-73.9455200000000019
1296	Light Rail Cafe	\N	237 Randolph Ave.	NJ	Jersey City	7304	(201) 434-9900	Jersey City	40.7115969000000035	-74.0709159000000028
1297	Lighthouse	\N	145 Borinquen Pl	NY	Brooklyn	11211	(347) 789-7742	Williamsburg - South Side	40.7108826999999991	-73.9538474999999949
1298	Lil' Frankie's	\N	19 1st Ave.	NY	New York	10003	(212) 420-4900	East Village	40.7236057000000002	-73.9885285999999951
1299	Lillie's Victorian Bar & Restaurant	\N	13 E 17th St.	NY	New York	10003	(212) 337-1970	Flatiron	40.737675099999997	-73.9911144999999948
1300	Lilly O'Briens	\N	18 Murray St.	NY	New York	10007	(646) 930-2008	TriBeCa	40.7133698000000024	-74.008503300000001
1301	Limani	\N	45 Rockerfeller Plz	NY	New York	10011	(212) 858-9200	Midtown West	40.7578358000000023	-73.9786410999999902
1302	Limon Jungle	\N	803 9th Ave.	NY	New York	10019	(212) 586-6032	Hell's Kitchen	40.7656610000000015	-73.9877680000000026
1303	Lincoln Park Bar & Grill	\N	867 9th Ave.	NY	New York	10019	(212) 974-2826	Hell's Kitchen	40.7675726000000012	-73.9865167999999898
1304	Linen Hall	\N	101 3rd Ave.	NY	New York	10003	(646) 602-9316	East Village	40.7323275999999979	-73.987539599999991
1305	Lisbon Restaurant	\N	100 York St.	NJ	Jersey City	7302	(201) 432-9222	Jersey City	40.7162599999999983	-74.0379599999999982
1306	LITM	\N	140 Newark Ave.	NJ	Jersey City	7302	(201) 536-5557	Jersey City	40.7204955999999996	-74.043606699999998
1307	The Little Owl	\N	90 Bedford St.	NY	New York	10014	(212) 741-4695	West Village	40.7323980999999975	-74.0053174999999896
1308	Little Prince	\N	199 Prince St.	NY	New York	10012	(212) 335-0566	South Village	40.7268431999999976	-74.0027221999999938
1309	Little Pub	\N	531 E Putnam Ave.	CT	Cos Cob	6807	(203) 717-1147	Cos Cob	41.0413440000000023	-73.5919999999999987
1310	Little Rascal	\N	163 Elizabeth St.	NY	New York	10012	(212) 966-0446	Nolita	40.7208587999999878	-73.9950601000000034
1311	Little Town	\N	118a E 15th St.	NY	New York	10003	(212) 677-6300	Union Square	40.7347448000000014	-73.9886915000000016
1312	Littleneck	\N	288 3rd Ave.	NY	Brooklyn	11215	(718) 522-1921	Gowanus	40.6772576999999984	-73.9861961999999949
1313	Live Bait	\N	14 E 23rd St.	NY	New York	10010	(212) 353-2400	Flatiron	40.7407603999999992	-73.9883821000000097
1314	Living Room Restaurant & Lounge	\N	178 Ave. U	NY	Brooklyn	11223	(718) 996-8700	Gravesend	40.5962863000000027	-73.9776703999999938
1315	Livingston Manor	\N	42 Hoyt St.	NY	Downtown Brooklyn	11201	(347) 987-3292	Downtown Brooklyn	40.689387200000013	-73.9860663999999986
1316	Lobo	\N	218 Ct. St.	NY	Brooklyn	11201	(718) 858-7739	Cobble Hill	40.698489600000002	-73.9888330000000138
1317	Local & Vine	\N	282 Hudson St.	NY	New York	10013	(212) 337-3414	South Village	40.7252731999999966	-74.0073908999999901
1318	Local 138	\N	138 Ludlow St.	NY	New York	10002	(212) 477-0280	Lower East Side	40.7204059000000029	-73.9879494999999991
1319	Local West	\N	1 Penn Plaza	NY	New York	10119	(212) 629-7070	Midtown West	40.7513890000000032	-73.9930559999999957
1320	The Local	\N	41-04 31st Ave.	NY	Astoria	11103	(917) 832-6797	Astoria	40.7606800000000007	-73.9162233999999927
1321	Local92	\N	92 2nd Ave.	NY	New York	10003	(212) 432-2232	East Village	40.7269238000000016	-73.9885146999999961
1322	Locanda Verde	\N	377 Greenwich St.	NY	New York	10013	(212) 925-3797	TriBeCa	40.7198459000000028	-74.00985399999999
1323	Locanda Vini e Olii	\N	129 Gates Ave.	NY	Brooklyn	11238	(718) 622-9202	Clinton Hill	40.6849738000000016	-73.9629480999999913
1324	Lock Yard	\N	9221 5th Ave.	NY	Brooklyn	11209	(718) 333-5282	Bay Ridge	40.6173451000000014	-74.0295196999999945
1325	Locksmith Wine & Burger Bar	\N	4463 Broadway	NY	New York	10040	(212) 304-9463	Washington Heights	40.8573807000000002	-73.9325659000000002
1326	Lodge	\N	318 Grand St.	NY	Brooklyn	11211	(718) 486-9400	Williamsburg - South Side	40.7125483000000017	-73.9566011000000003
1327	The Loeb Boathouse	\N	E 72nd St. & 5th Ave.	NY	New York	10128	(212) 517-2233	Central Park	40.7724615000000128	-73.9670436000000109
1328	Loki Lounge	\N	304 5th Ave.	NY	Brooklyn	11215	(718) 965-9600	Park Slope	40.6735023000000027	-73.9826943999999997
1329	Lola's	\N	153 14th St.	NJ	Hoboken	7030	(201) 420-6062	Hoboken	40.753231300000003	-74.0272324999999967
1330	Lone Star Bar & Grill	\N	8703 5th Ave.	NY	Brooklyn	11209	(718) 833-5180	Bay Ridge	40.6206877999999989	-74.026636400000001
1331	The Long Hall	\N	58 E 34th St.	NY	New York	10016	(646) 455-0777	Murray Hill	40.7471615999999983	-73.9822739999999897
1332	The Long Room	\N	120 W 44th St.	NY	New York	10036	(212) 997-3933	Theater District	40.756374000000001	-73.9843316999999985
1333	Loreley	\N	7 Rivington St.	NY	New York	10002	(212) 253-7077	Lower East Side	40.7212296999999879	-73.9928632000000022
1334	Louie and Chan	\N	303 Broome St.	NY	New York	10002	(212) 837-2816	Lower East Side	40.7186519999999987	-73.9923806999999982
1335	The Louise	\N	1586 York Ave.	NY	New York	10028	(212) 570-5445	Yorkville	40.7742237000000003	-73.9480477999999977
1336	Lovely Day	\N	196 Elizabeth St.	NY	New York	10012	(212) 925-3310	Nolita	40.7217733000000024	-73.9942755000000005
1337	Lovers of Today	\N	132 1/2 E 7th St.	NY	New York	10009	(212) 420-9517	East Village	40.725825399999998	-73.9834216999999938
1338	The Lowery Bar & Kitchen	\N	43-02 43rd Ave.	NY	Sunnyside	11104	(929) 208-0055	Sunnyside	40.745030100000001	-73.9209967999999975
1339	Lucey's Lounge	\N	475 3rd Ave.	NY	Brooklyn	11231	(718) 877-1075	Gowanus	40.6705925999999991	-73.9913806999999935
1340	Lucky 7	\N	322 2nd St.	NJ	Jersey City	7302	(201) 418-8585	Jersey City	40.7229657000000032	-74.0474207000000035
1341	Lucky Bar 13	\N	677 Hempstead Tpke	NY	Franklin Square	11010	(516) 280-7613	Franklin Square	40.7065081000000006	-73.6649642999999941
1342	The Lucky Bee	\N	252 Broome St.	NY	New York	10002	(917) 262-0329	Lower East Side	40.7181909000000033	-73.9898119000000065
1343	Lucky Jack's	\N	129 Orchard St.	NY	New York	10002	(212) 477-6555	Lower East Side	40.7196907000000081	-73.9897079999999931
1344	Lucky Strike	\N	59 Grand St.	NY	New York	10013	(212) 941-0479	SoHo	40.7220555999999974	-74.003583699999993
1345	Luckydog	\N	303 Bedford Ave.	NY	Brooklyn	11211		Williamsburg - South Side	40.7135000000000034	-73.9617178999999965
1346	Lucy's Cantina Royale	\N	1 Penn Plz	NY	New York	10119	(212) 643-1270	Midtown West	40.7512149000000008	-73.9922234999999944
1347	Lugo Cucina	\N	1 Penn Plz	NY	New York	10119	(212) 760-2700	Midtown West	40.7512149000000008	-73.9922234999999944
1348	Luke's Lobster	\N	242 E 81st St.	NY	New York	10028	(212) 249-4241	Upper East Side	40.7747366999999983	-73.9545344999999941
1349	Lupa	\N	170 Thompson St.	NY	New York	10012	(212) 982-5089	Greenwich Village	40.7276164000000023	-74.000060899999994
1350	Lupe's	\N	110 Ave. Of The Americas	NY	New York	10013	(212) 966-1326	South Village	40.7236625000000032	-74.0045135999999957
1351	Lure Fish Bar	\N	142 Mercer St.	NY	New York	10012	(212) 431-7676	SoHo	40.7247029999999981	-73.9983277999999984
1352	Luxor Lounge	\N	118 Macdougal St.	NY	New York	10012	(212) 475-5544	Greenwich Village	40.7297425000000075	-74.0004109999999997
1353	Luzzo's	\N	211 1st Ave.	NY	New York	10003	(212) 473-7447	East Village	40.7305509999999984	-73.983484599999997
1354	M O L O K O	\N	705 Myrtle Ave.	NY	Bedford-Stuyvesant	11205	(718) 596-3624	Bedford Stuyvesant	40.6949192000000011	-73.9548588999999907
1355	M Shanghai Bistro & Garden	\N	292 Grand St.	NY	Brooklyn	11211	(718) 384-9300	Williamsburg - South Side	40.7128973000000016	-73.9576443999999924
1356	M. Wells Steakhouse	\N	43-15 Crescent St.	NY	Long Island City	11101	(718) 786-9060	Long Island City	40.7484929000000022	-73.9422959999999989
1357	M1-5	\N	52 Walker St.	NY	New York	10013	(212) 965-1701	TriBeCa	40.7191661000000025	-74.0033713999999918
1358	Macao Trading Co	\N	311 Church St.	NY	New York	10013	(212) 431-8642	TriBeCa	40.7196215000000024	-74.0039186999999998
1359	MacDougal Street Ale House	\N	122 MacDougal St.	NY	New York	10012	(212) 254-8569	Greenwich Village	40.7298582999999965	-74.0003128999999973
1360	Mace	\N	649 E 9th St.	NY	New York	10009		East Village	40.7255099999999999	-73.9781253999999961
1361	Machiavelli	\N	519 Columbus Ave.	NY	New York	10024	(212) 724-2658	Upper West Side	40.7858585000000033	-73.9723872999999941
1362	Macondo	\N	157 E Houston St.	NY	New York	10002	(212) 473-9900	Lower East Side	40.7228080999999875	-73.9892193999999961
1363	Mad Dog & Beans	\N	83 Pearl St.	NY	New York	10004	(212) 269-1177	Financial District	40.7042076999999978	-74.0103117999999967
1364	Mad Donkey Beer Bar & Grill	\N	3207 36th Ave.	NY	Astoria	11106	(718) 204-2070	Astoria	40.7562179000000029	-73.9285160000000019
1365	Mad River	\N	1442 Third Ave.	NY	New York	10028	(212) 988-1832	Upper East Side	40.776156499999999	-73.9562244999999905
1366	Madame X	\N	94 W Houston St.	NY	New York	10012	(212) 539-0808	Greenwich Village	40.7273020000000017	-74.0000471999999974
1367	Made In Mexico	\N	3950 10th Ave.	NY	New York	10034	(646) 726-4849	Inwood	40.8673306000000025	-73.9171717999999913
1368	Madera Cuban Grill & Steakhouse	\N	47-29 Vernon Blvd.	NY	Long Island City	11101	(718) 606-1236	Hunters Point	40.7445773000000031	-73.953183199999998
1369	The Madhatter Pub & Eatery	\N	360 3rd Ave.	NY	New York	10016	(212) 696-2122	Kips Bay	40.7410060999999999	-73.9819148999999925
1370	Madiba Restaurant	\N	195 Dekalb Ave.	NY	Brooklyn	11205	(718) 855-9190	Fort Greene	40.6897066000000009	-73.9717840999999936
1371	Madiran The Wine Bar	\N	209 Rt 25A	NY	East Setauket	11733	(631) 675-2778	East Setauket	40.9427378999999974	-73.1041233999999918
1372	The Madison Bar & Grill	\N	1316 Washington St.	NJ	Hoboken	7030	(201) 386-0300	Hoboken	40.7531247000000008	-74.0264494999999982
1373	Madison Bistro	\N	238 Madison Ave.	NY	New York	10016	(212) 447-1919	Midtown East	40.7499363000000017	-73.9816567999999961
1374	Madison Square Tavern	\N	150 W 30th St.	NY	New York	10001	(212) 244-0410	Midtown West	40.7480461999999974	-73.9919431999999944
1375	Maggiano's Little Italy	\N	70 Riverside Sq	NJ	Hackensack	7601	(201) 221-2030	Hackensack	40.9074834999999979	-74.0306619999999924
1376	Maggie Reillys Restaurant	\N	340 9th Ave.	NY	New York	10001	(646) 476-3209	Midtown West	40.7504463000000001	-73.9981610999999901
1377	Maggie Spillane's Ale House	\N	579 Gramatan Ave.	NY	Mt. Vernon	10552	(914) 699-8900	Mt. Vernon	40.9260190999999978	-73.8354338999999982
1378	Maggie's Place	\N	21 E 47th St.	NY	New York	10017	(212) 753-5757	Midtown East	40.7563016000000005	-73.9771121000000136
1379	The Magician	\N	118 Rivington St.	NY	New York	10002	(212) 673-7851	Lower East Side	40.7199316999999965	-73.9872723999999948
1380	Maharlika	\N	111 1st Ave.	NY	New York	10003	(646) 392-7880	East Village	40.7269427000000022	-73.9861039000000034
1381	Maialino	\N	2 Lexington Ave.	NY	New York	10010	(212) 777-2410	Flatiron	40.7385530999999972	-73.9858949999999993
1382	Maiella	\N	4610 Center Blvd.	NY	Long Island City	11109	(718) 606-1770	Hunters Point	40.7474003000000025	-73.9569886000000025
1383	Maison Harlem	\N	341 St. Nicholas Ave.	NY	New York	10027	(212) 222-9224	Harlem	40.8123152000000005	-73.9516108999999915
1384	Maison Premiere	\N	298 Bedford Ave.	NY	Brooklyn	11211	(347) 335-0446	Williamsburg	40.7142634000000001	-73.9616503000000023
1385	Maize Restaurant	\N	50 Park Pl	NJ	Newark	7102	(973) 733-2202	Newark	40.7389393999999996	-74.1684027999999955
1386	Malachy's Donegal Inn	\N	103 W 72nd St.	NY	New York	10023	(212) 874-4268	Upper West Side	40.7777551000000003	-73.9789887000000022
1387	Malatesta Trattoria	\N	649 Washington St.	NY	New York	10014	(212) 741-1207	West Village	40.7328493999999992	-74.0084394000000003
1388	MaliBlue Oyster Bar	\N	1500 Lido Blvd.	NY	Lido Beach	11561	(516) 442-2799	Lido Beach	40.5919707999999986	-73.591399999999993
1389	Maloney's Pub	\N	119 Main St.	NJ	Matawan	7747	(732) 583-4040	Matawan	40.4152999999999878	-74.2290070999999898
1390	The Malt House FiDi	\N	9 Maiden Ln.	NY	New York	10038	(646) 682-7577	Financial District	40.7095903000000021	-74.0093619999999959
1391	The Malt House	\N	206 Thompson St.	NY	New York	10012	(212) 228-7713	Greenwich Village	40.7286136999999968	-73.9993243999999919
1392	Mama's Bar	\N	34 Ave. B	NY	New York	10009	(212) 777-5729	East Village	40.7226256999999876	-73.9831535999999943
1393	Mamajuana Cafe Restaurant & Bar	\N	875 Rt 3 E	NJ	Secaucus	7094	(201) 558-1200	Secaucus	40.7815312000000034	-74.0480901999999901
1394	Mamasita Bar & Grill	\N	818 10th Ave.	NY	New York	10019	(212) 315-9444	Midtown West	40.7673210000000026	-73.9894729999999896
1395	Mancora	\N	97 First Ave.	NY	New York	10003	(212) 253-1011	East Village	40.7263755999999972	-73.9865094999999968
1396	Mandarin Oriental	\N	80 Columbus Cir	NY	New York	10023	(212) 805-8800	Upper West Side	40.7690781000000015	-73.98295379999999
1397	Manhattan Brew & Vine	\N	998 Columbus Ave.	NY	New York	10025	(646) 964-4091	Manhattan Valley	40.8014906000000011	-73.9615790999999945
1398	Manhattan Cricket Club	\N	226 W 79th St.	NY	New York	10024	(646) 823-9252	Upper West Side	40.7833583999999973	-73.9795857999999953
1399	Manhattan Proper	\N	6 Murray St.	NY	New York	10007	(646) 559-4445	TriBeCa	40.7132702999999978	-74.0080432999999971
1400	Manitoba's	\N	99 Ave B	NY	New York	10009	(212) 982-2511	East Village	40.7246679	-73.9812244999999962
1401	Manny's On Second	\N	1770 2nd Ave.	NY	New York	10128	(212) 410-3300	Upper East Side	40.7817739999999986	-73.9484838999999994
1402	Manolo's Restaurant	\N	91 Elizabeth Ave.	NJ	Elizabeth	7206	(908) 353-7674	Elizabeth	40.6464028999999982	-74.1905952999999982
1403	Maracuja Bar and Grill	\N	279 Grand St.	NY	Brooklyn	11211	(718) 302-9023	Williamsburg	40.7132427000000021	-73.9577646999999985
1404	Marc Forgione	\N	134 Reade St.	NY	New York	10013	(212) 941-9401	TriBeCa	40.716526199999997	-74.0095669999999899
1405	Marcha Cocina	\N	4055 Broadway	NY	New York	10032	(212) 928-8272	Washington Heights	40.8429551999999987	-73.9394618999999977
1406	Marea	\N	240 Central Park S	NY	New York	10019	(212) 582-5100	Midtown West	40.7674524000000034	-73.9811141999999933
1407	Margon	\N	136 W 46th St.	NY	New York	10036	(212) 354-5013	Theater District	40.7578644999999966	-73.9839920000000006
1408	Mari Vanna	\N	41 E 20th St.	NY	New York	10003	(212) 777-1955	Flatiron	40.7388839999999988	-73.988506000000001
1409	Marie's Crisis	\N	59 Grove St.	NY	New York	10014	(212) 243-9323	West Village	40.7332302000000084	-74.0033930000000026
1410	Marisco Centro	\N	1490 St. Nicholas Ave.	NY	New York	10033	(212) 740-2000	Washington Heights	40.8514279999999985	-73.931912699999998
1411	The Mark Hotel	\N	25 E 77th St.	NY	New York	10075	(212) 744-4300	Upper East Side	40.7752710999999977	-73.9633994000000001
1412	Markt	\N	676 6th Ave.	NY	New York	10010	(212) 727-3314	Flatiron	40.7416029999999978	-73.9934083999999928
1413	Marquee Nightclub	\N	289 10th Ave.	NY	New York	10001	(646) 473-0202	Chelsea	40.7500963000000027	-74.0028306999999899
1414	Marseille	\N	630 9th Ave.	NY	New York	10036	(212) 333-2323	Hell's Kitchen	40.7599158000000017	-73.9911491000000012
1415	The Marshal	\N	628 10th Ave.	NY	New York	10036	(212) 582-6300	Midtown West	40.7612254999999877	-73.9939739000000003
1416	Marshall Stack	\N	66 Rivington St.	NY	New York	10002	(212) 228-4667	Lower East Side	40.7207330999999968	-73.9899434999999954
1417	Maru Karaoke Lounge	\N	11 W 32nd St.	NY	New York	10001	(212) 273-3413	Midtown West	40.7477350999999999	-73.9862097999999975
1418	Mary O's	\N	32 Ave. A	NY	New York	10009	(212) 505-5610	East Village	40.7232830000000021	-73.9852223000000038
1419	Masa	\N	10 Columbus Cir.	NY	New York	10019	(212) 823-9800	Hell's Kitchen	40.7687596000000028	-73.9832052999999945
1420	Mason Jar NYC	\N	43 E 30th St.	NY	New York	10016	(212) 213-3587	Midtown East	40.7449022999999997	-73.9836962999999912
1421	Mateus Bar & Restaurant	\N	22205 Jamaica Ave.	NY	Queens Village	11428	(718) 464-4522	Queens Village	40.7207250000000016	-73.7323149999999998
1422	Matt Torrey's	\N	46 Brushwick Ave.	NY	Brooklyn	11211	(718) 218-7646	East Williamsburg	40.7133760999999978	-73.9416773000000092
1423	Matts Grill	\N	932 8th Ave.	NY	New York	10019	(212) 307-5109	Midtown West	40.7654657	-73.9834744999999998
1424	Max Brenner	\N	841 Broadway	NY	New York	10003	(646) 467-8803	Union Square	40.7343136000000072	-73.9911838999999958
1425	Maxwell's Bar & Restaurant	\N	59 Reade St.	NY	New York	10007	(917) 261-6917	TriBeCa	40.7147792000000024	-74.0066052999999897
1426	Maya	\N	1191 1st Ave.	NY	New York	10021	(212) 585-1818	Upper East Side	40.7631640999999973	-73.9596607000000006
1427	Maya Modern Mexican Kitchen and Tequileria	\N	1191 First Ave.	NY	New York	10065	(212) 585-1818	Upper East Side	40.7631640999999973	-73.9596607000000006
1428	Mayahuel	\N	304 E 6th St.	NY	New York	10003	(212) 253-5888	East Village	40.727117100000001	-73.9881793999999928
1429	Mayfield	\N	688 Franklin Ave.	NY	Brooklyn	11238	(347) 318-3643	Crown Heights	40.6749294000000035	-73.9566940999999929
1430	Maysville	\N	17 W 26th St.	NY	New York	10010	(646) 490-8240	Flatiron	40.7441597999999985	-73.9895882
1431	Maz Mezcal	\N	316 E 86th St.	NY	New York	10028	(212) 472-1599	Upper East Side	40.7773016000000013	-73.951024199999992
1432	Mazzat	\N	208 Columbia St.	NY	Brooklyn	11231	(718) 852-1652	Columbia Street Waterfront District	40.6849638999999996	-74.0029517999999911
1433	Mcaleer's Pub	\N	425 Amsterdam Ave.	NY	New York	10024	(212) 362-7867	Upper West Side	40.7839406000000011	-73.9773780000000016
1434	McCoy's Bar	\N	768 9th Ave.	NY	New York	10019	(212) 957-8055	Theater District	40.764280399999997	-73.9880017999999922
1435	McFadden's	\N	800 2nd Ave.	NY	New York	10017	(212) 986-1515	Midtown East	40.7500617000000034	-73.9716549999999984
1436	McGarry's Bar and Restaurant	\N	417 Ninth Ave.	NY	New York	10001	(212) 810-2115	Hell's Kitchen	40.7530593999999979	-73.9968647000000033
1437	Mcgee's	\N	240 W 55th St.	NY	New York	10019	(212) 957-3536	Midtown West	40.7648920000000032	-73.9830475999999919
1438	McGettigans Irish Pub	\N	70 W 36th St.	NY	New York	10036	(212) 913-0533	Midtown West	40.7505792999999983	-73.9862789000000021
1439	McGovern's Tavern	\N	58 New St.	NJ	Newark	7102	(973) 643-3984	Newark	40.7404066	-74.172088500000001
1440	McHale's Bar & Grill	\N	251 W 51st St.	NY	New York	10019	(212) 957-5138	Midtown West	40.7628417000000027	-73.9850350999999904
1441	McKenna's Pub	\N	250 W 14th St.	NY	New York	10011	(212) 255-2889	West Village	40.7393540999999999	-74.0021545999999972
1442	McSorley's Old Ale House	\N	15 E 7th St.	NY	New York	10003	(212) 473-9148	East Village	40.7288149999999973	-73.9896634999999918
1443	McSwiggan's	\N	393 2nd Ave.	NY	New York	10010	(212) 683-3180	Gramercy	40.7377490000000009	-73.9813232999999997
1444	The Mean Fiddler	\N	266 W 47th St.	NY	New York	10002	(212) 354-2950	Theater District	40.7600569000000021	-73.9871764999999897
1445	The Meatball Shop	\N	84 Stanton St.	NY	New York	10002	(212) 982-8895	Lower East Side	40.7216601000000011	-73.9887806999999924
1446	The Meatball Shop	\N	170 Bedford Ave.	NY	Brooklyn	11249	(718) 551-0520	Williamsburg	40.7182748999999973	-73.9576212999999996
1447	Medi Wine Bar	\N	811 9th Ave.	NY	New York	10019	(212) 586-1201	Hell's Kitchen	40.7658509999999978	-73.9874721999999991
1448	Mehanata	\N	113 Ludlow St.	NY	New York	10002	(212) 625-0981	Lower East Side	40.7194818999999981	-73.9889256999999958
1449	Meijin Sakaba	\N	1574 2nd Ave.	NY	New York	10028	(212) 327-2800	Yorkville	40.7750381000000033	-73.9535391999999945
1450	Mekelburg's	\N	293 Grand Ave.	NY	Brooklyn	11238	(718) 399-2337	Clinton Hill	40.6875319999999974	-73.9623464999999953
1451	Mel's Burger Bar	\N	2850 Broadway	NY	New York	10025	(212) 865-7100	Morningside Heights	40.8044401000000008	-73.9660226000000023
1452	Mela East	\N	1496 2nd Ave.	NY	New York	10075	(212) 249-1010	Upper East Side	40.7724461000000034	-73.9553717999999947
1453	Melba's	\N	300 W 114th St.	NY	New York	10026	(212) 864-7777	Harlem	40.8031371000000007	-73.9566659999999985
1454	Mercato	\N	352 W 39th St.	NY	New York	10018	(212) 643-2000	Hell's Kitchen	40.7561806000000004	-73.9936907000000019
1455	The Mercer Kitchen	\N	99 Prince St.	NY	New York	10012	(212) 966-5454	SoHo	40.7249048999999985	-73.9986648000000002
1456	Merchants NY	\N	112 7th Ave.	NY	New York	10011	(212) 366-7267	Chelsea	40.7404798000000028	-73.9985480999999936
1457	Mercury Bar East	\N	493 3rd Ave.	NY	New York	10016	(212) 683-2645	Midtown East	40.7451604999999972	-73.9781626999999986
1458	Mercury Lounge	\N	217 E Houston St.	NY	New York	10002	(212) 260-4700	Lower East Side	40.7220900000000015	-73.9867933999999963
1459	The Mermaid Inn	\N	96 2nd Ave.	NY	New York	10003	(212) 674-5870	East Village	40.7269975000000031	-73.9884428999999955
1460	Mermaid Oyster Bar	\N	79 MacDougal St.	NY	New York	10012	(212) 260-0100	Greenwich Village	40.7288848999999971	-74.0018618999999944
1461	Merrion	\N	1840 2nd Ave.	NY	New York	10128	(212) 831-7696	Upper East Side	40.7835742999999979	-73.9472916999999939
1462	Mesa Coyoacan	\N	372 Graham Ave.	NY	Brooklyn	11211	(718) 782-8171	East Williamsburg	40.7155243999999996	-73.9443286999999998
1463	Meson Sevilla	\N	344 W 46th St.	NY	New York	10036	(212) 262-5890	Hell's Kitchen	40.7602800000000016	-73.9896895999999913
1464	Mess Hall	\N	2194 Frederick Douglass Blvd.	NY	Harlem	10026	(646) 692-3098	Harlem	40.8058416999999878	-73.9540023999999931
1465	Metro Grill	\N	45 W 35th St.	NY	New York	10001	(212) 279-3535	Midtown West	40.7501430000000013	-73.9859914000000032
1466	Mexicue	\N	225 5th Ave.	NY	New York	10010	646-922-7289	NOMAD	40.7435937999999993	-73.9875777000000028
1467	Mezetto	\N	161 E Houston St.	NY	New York	10002	(212) 933-4587	Lower East Side	40.7228137000000032	-73.9890182999999979
1468	Mezze Bar	\N	691 9th Ave.	NY	New York	10036	(917) 675-6266	Theater District	40.7620560000000012	-73.9903580000000005
1469	Michael's Porthole	\N	92 New St.	NY	Oceanside	11572	(516) 608-1380	Oceanside	40.6365690000000015	-73.6596770000000021
1470	Mickey Spillane's	\N	350 W 49th St.	NY	New York	10019	(212) 600-1672	Theater District	40.7626338000000032	-73.9891736999999949
1471	Middle Branch	\N	154 E 33rd St.	NY	New York	10016	(212) 213-1350	Murray Hill	40.7452844999999968	-73.9794615999999934
1472	Midnights	\N	149 N 6th St.	NY	Brooklyn	11249	(718) 384-6961	Williamsburg - North Side	40.7175427999999968	-73.958389799999992
1473	Midtown Live	\N	251 W 30th Street	NY	New York	10001	(212) 695-8970	Midtown West	40.7494549000000035	-73.9942661999999984
1474	Mighty Quinn's Barbeque	\N	103 2nd Ave.	NY	New York	10003	(212) 677-3733	East Village	40.7276359000000028	-73.9887679000000134
1475	Mikie Squared Bar & Grill	\N	616 Washington St.	NJ	Hoboken	7030	(201) 792-0001	Hoboken	40.7440467999999996	-74.0291675999999939
1476	Milano's Bar	\N	51 E Houston St.	NY	New York	10012	(212) 226-8844	NoHo	40.7245546999999988	-73.9946193000000108
1477	Milk And Roses	\N	1110 Manhattan Ave.	NY	Brooklyn	11222	(718) 389-0160	Greenpoint	40.7364095999999876	-73.9550825000000032
1478	Milk River	\N	960 Atlantic Ave.	NY	Brooklyn	11238	(718) 636-8600	Crown Heights	40.6804030999999995	-73.9623730999999935
1479	Mill Creek Tavern	\N	275 Bayville Ave.	NY	Bayville	11709	(516) 628-2000	Bayville	40.9073796999999999	-73.5490424999999988
1480	Miller's Ale House - Levittown	\N	3046 Hempstead Tpke	NY	Levittown	11756	(516) 520-7000	Levittown	40.7242164000000031	-73.5231338999999906
1481	The Milling Room	\N	446 Columbus Ave.	NY	New York	10024	(212) 595-0380	Upper West Side	40.7837474000000029	-73.9744678999999934
1482	Minetta Tavern	\N	113 Macdougal St.	NY	New York	10012	(212) 475-3850	Greenwich Village	40.729998700000003	-74.0007368999999926
1483	Minibar	\N	482 Ct. St.	NY	Brooklyn	11231	(718) 569-2321	Carroll Gardens	40.6630133000000029	-73.9455827999999968
1484	Minton's	\N	206 W 118th St.	NY	New York	10026	(212) 243-2222	Harlem	40.8046774999999968	-73.9522994000000011
1485	Mira Sushi & Izakaya Bar	\N	46 W 22nd St.	NY	New York	10010	(718) 989-7889	Flatiron	40.7416983999999971	-73.9924578999999909
1486	Miriam	\N	79 5th Ave.	NY	Brooklyn	11215	(718) 622-2250	Park Slope	40.6802083999999979	-73.9778874999999942
1487	Miss Lily's	\N	132 W Houston St.	NY	New York	10012	(646) 588-5375	Greenwich Village	40.7279618000000028	-74.0013762999999898
1488	Mission Dolores Bar	\N	249 4th Ave.	NY	Brooklyn	11215	(347) 457-5606	Park Slope	40.6761867000000024	-73.9834314000000006
1489	Mist Harlem	\N	46 W 116th St.	NY	New York	10026	(212) 828-6478	Harlem	40.8012471999999988	-73.9485126999999949
1490	Miyabi Sushi & Asian Cusine	\N	118 W 3rd St.	NY	New York	10012	(212) 228-1688	Greenwich Village	40.7303692999999996	-74.0004412999999914
1491	Mizu Japanese & Thai Cuisine	\N	29 E 20th St.	NY	New York	10003	(212) 505-6687	Flatiron	40.7390680000000032	-73.9889648999999991
1492	MoCA Asian Bistro	\N	107-18 70th Rd.	NY	Forest Hills	11375	(718) 268-3333	Forest Hills	40.7209967999999876	-73.845186599999991
1493	Moca Bar & Lounge	\N	2210 Frederick Douglass Blvd.	NY	New York	10026	(212) 665-8081	Harlem	40.806340100000007	-73.953565299999994
1494	The Modern	\N	9 W 53rd St.	NY	New York	10019	(212) 333-1220	Midtown West	40.7609475000000003	-73.9768317999999994
1495	Mojave	\N	22-36 31st St.	NY	Astoria	11105	(718) 545-4100	Astoria	40.7755705999999876	-73.9118859999999955
1496	Mojito Lounge and Restaurant	\N	525 Bayway Ave.	NJ	Elizabeth	7202	(908) 469-1741	Elizabeth	40.6448249000000033	-74.2122363999999948
1497	Mojito's	\N	227 E 116 St.	NY	New York	10029	(212) 828-8635	East Harlem	40.797679500000001	-73.9387212999999974
1498	Molloy's Irish Pub	\N	737 9th Ave.	NY	Manhattan	10019	(212) 247-3400	Hell's Kitchen	40.7635118999999975	-73.9893972000000133
1499	The Molly Wee Pub	\N	402 8th Ave.	NY	New York	10001	(212) 967-2627	Chelsea	40.7496579999999966	-73.9949237999999951
1500	Molly's	\N	287 3rd Ave.	NY	New York	10010	(212) 889-3361	Gramercy	40.7382648000000032	-73.9832457999999917
1501	Molyvos	\N	871 7th Ave.	NY	New York	10019	(212) 582-7500	Midtown West	40.7644250999999969	-73.9805666000000031
1502	Momo's Sports Bar	\N	350 Union Ave.	NY	Holbrook	11741	(631) 648-9669	Holbrook	40.8109626999999975	-73.0805318999999969
1503	Momofuku Ko	\N	8 Extra Pl	NY	New York	10003	(212) 203-8095	East Village	40.7248597999999973	-73.9916542999999933
1504	Momofuku Noodle Bar	\N	171 1st Ave.	NY	New York	10003	(212) 777-7773	East Village	40.7292330000000007	-73.9845100000000002
1505	Momofuku Ssam Bar	\N	207 2nd Ave.	NY	New York	10003	(212) 254-3500	East Village	40.7317011000000022	-73.9858553999999913
1506	Mona's	\N	224 Ave. B	NY	New York	10009	(212) 353-3780	East Village	40.7291787999999997	-73.978493499999999
1507	Monarch Rooftop	\N	71 W 35th St.	NY	New York	10001	(212) 630-9993	Midtown West	40.7504344999999972	-73.98675759999999
1508	Monkey Bar	\N	60 E 54th St.	NY	New York	10022	(212) 288-1010	Midtown East	40.7600803999999997	-73.9734054999999984
1509	The Monster	\N	80 Grove St.	NY	New York	10014	(212) 924-3557	West Village	40.7333573000000015	-74.0023352999999986
1510	Monte's Trattoria	\N	97 MacDougal St.	NY	New York	10012	(212) 228-9194	Greenwich Village	40.7296218999999979	-74.0011538999999914
1511	Morandi	\N	211 Waverly Pl	NY	New York	10014	(212) 627-7575	West Village	40.7353169999999878	-74.0014281999999923
1512	Morgan's Barbecue	\N	267 Flatbush Ave.	NY	Brooklyn	11217	(718) 622-2224	Prospect Heights	40.679901000000001	-73.9740845000000036
1513	Morning Star Cafe	\N	949 2nd Ave.	NY	New York	10022	(212) 588-1050	Midtown East	40.7552160999999984	-73.9685872999999958
1514	Morton's The Steakhouse	\N	551 5th Ave.	NY	New York	10017	(212) 972-3315	Midtown East	40.7556524999999965	-73.9792826999999988
1515	Mosaic Cafe	\N	25-19 24th Ave.	NY	Astoria	11102	(718) 728-0708	Astoria	40.7746576999999988	-73.9183673000000141
1516	Mother Burger	\N	329 W 49th St.	NY	New York	10019	(212) 757-8600	Hell's Kitchen	40.7623762999999997	-73.987872799999991
1517	Mother's Ruin	\N	18 Spring St.	NY	New York	10012	(212) 219-0942	Nolita	40.7213001000000006	-73.9950132000000025
1518	Motorino	\N	349 E 12th St.	NY	New York	10003	(212) 777-2644	East Village	40.7303586999999965	-73.9838278000000003
1519	Mott Haven Bar and Grill	\N	1 Bruckner Blvd.	NY	Bronx	10454	(718) 665-2001	Bronx	40.8082788999999977	-73.9304437999999919
1520	Mr Biggs Bar & Grill	\N	596 10th Ave.	NY	New York	10036	(212) 246-2030	Hell's Kitchen	40.7602771000000033	-73.9945992000000103
1521	Mr Broadway	\N	1372 Broadway	NY	New York	10018	(212) 921-2152	Midtown West	40.7522493999999966	-73.9869877999999943
1522	Mr. Dennehy's	\N	63 Carmine St.	NY	New York	10014	(212) 414-1223	West Village	40.7298854000000006	-74.00458789999999
1523	Mudville 9	\N	126 Chambers St.	NY	New York	10007	(212) 964-9464	TriBeCa	40.7151562000000027	-74.0089296999999959
1524	Mug's Alehouse	\N	125 Bedford Ave.	NY	Brooklyn	11211	(718) 486-8232	Williamsburg - North Side	40.7194791000000009	-73.9556345999999962
1525	The Mulberry Project	\N	149 Mulberry St.	NY	New York	10013	(646) 448-4536	Little Italy	40.7190314999999998	-73.997716099999991
1526	Mulcahy's	\N	3232 Railroad Ave.	NY	Wantagh	11793	(516) 783-7500	Wantagh	40.6724232999999984	-73.5099507999999986
1527	Muldoon's Irish Pub	\N	692 3rd Ave.	NY	New York City	10017	(212) 599-2750	Midtown East	40.7518634999999989	-73.973987600000001
1528	Mulholland's	\N	312 Grand St.	NY	Brooklyn	11211	(718) 486-3473	Williamsburg - South Side	40.7127150000000029	-73.9570983999999925
1529	Mulino a Vino	\N	337 W 14th St.	NY	New York	10014	(855) 343-4513	Meatpacking District	40.7407523999999981	-74.0041121000000004
1530	Mullanes Bar & Grill	\N	71 Lafayette Ave.	NY	Brooklyn	11217	(718) 797-7606	Fort Greene	40.6873740999999995	-73.9754894999999948
1531	Mulligan's Pub	\N	267 Madison Ave.	NY	New York	10016	(212) 286-0207	Midtown East	40.7509701000000035	-73.980263800000003
1532	Mumtaz Indian Restaurant	\N	1582 York Ave.	NY	New York	10028	(212) 879-4797	Upper East Side	40.7741003000000006	-73.9481347999999912
1533	Murphy's Pub & Restaurant	\N	977 2nd Ave.	NY	New York	10022	(212) 751-5400	Midtown East	40.7560378000000014	-73.9679956000000089
1534	Murphy's Tavern	\N	6 Stone St.	NY	New York	10004	(212) 425-1700	Financial District	40.7039278999999965	-74.0124689999999958
1535	Murray's Cheese Bar	\N	264 Bleecker St.	NY	New York	10014	(646) 476-8882	West Village	40.7312160000000034	-74.0031582000000014
1536	Mussels & More	\N	8001 5th Ave.	NY	Brooklyn	11209	(718) 680-3390	Bay Ridge	40.6255237000000022	-74.0238999000000035
1537	Mustang Harry's	\N	352 7th Ave.	NY	New York	10001	(212) 268-8930	Chelsea	40.7483387999999991	-73.9929982999999964
1538	Myrtle and Gold	\N	343 Gold St.	NY	Brooklyn	11201	(718) 858-8178	Downtown Brooklyn	40.6941083999999975	-73.9828986999999927
1539	N4 Taproom	\N	238 Bedford Ave.	NY	Brooklyn	11249	(718) 734-2321	Williamsburg - North Side	40.7161648000000014	-73.9597704999999905
1540	Nai Tapas Bar	\N	174 1st Ave.	NY	New York	10009	(212) 677-1030	East Village	40.7290284999999983	-73.9839022999999969
1541	Naive	\N	299 S 4th St.	NY	Brooklyn	11211	(347) 689-2405	Williamsburg - South Side	40.7093823000000015	-73.9556671000000136
1542	Narcissa	\N	25 Cooper Sq	NY	New York	10003	(212) 228-3344	East Village	40.727931599999998	-73.9907857000000035
1543	Natsumi	\N	226 W 50th St.	NY	New York	10019	(212) 258-2988	Theater District	40.761696299999997	-73.9852739999999898
1544	Natsumi Tapas	\N	323 3rd Ave.	NY	New York	10010	(212) 889-2182	Gramercy	40.7395595999999998	-73.9823286999999965
1545	Nebu Hookah Lounge	\N	86-72 80th St.	NY	Woodhaven	11421	(347) 881-7700	Woodhaven	40.6919077000000016	-73.8623003999999952
1546	Negril Village	\N	70 W 3rd St.	NY	New York	10012	(212) 477-2804	Greenwich Village	40.7294904999999972	-73.998365800000002
1547	Neir's Tavern	\N	87-48 78th St.	NY	Woodhaven	11421	(718) 296-0600	Woodhaven	40.6898228000000017	-73.8635967000000022
1548	Nelly Spillane's	\N	18 E 33rd St.	NY	New York	10016	(212) 792-9672	Midtown East	40.7471622999999994	-73.9842012000000011
1549	Nelson Blue	\N	233 Front St.	NY	New York	10038	(212) 346-9090	South Street Seaport	40.707538900000003	-74.001811399999994
1550	Nerai	\N	55 E 54th St.	NY	New York	10022	(212) 759-5554	Midtown East	40.7602979999999988	-73.9730100000000022
1551	New Heights Bar & Lounge	\N	137 Schenectady Ave.	NY	Brooklyn	11213	(718) 484-3882	Crown Heights	40.6744132999999977	-73.9331794999999943
1552	The New York Beer Company	\N	321 W 44th St.	NY	New York	10036	(212) 245-2337	Hell's Kitchen	40.7590669999999875	-73.9898747999999955
1553	New York Dolls	\N	59 Murray St.	NY	New York	10007	(212) 227-6912	TriBeCa	40.7144492999999983	-74.0097258999999923
1554	Ngam	\N	99 3rd Ave.	NY	New York	10003	(212) 777-8424	East Village	40.7322679999999977	-73.9875720000000001
1555	Night of Joy	\N	667 Lorimer St.	NY	Brooklyn	11211	(718) 388-8693	Williamsburg - North Side	40.7169931999999974	-73.949967700000002
1556	Nikko	\N	1280 Amsterdam Ave.	NY	New York	10027	(212) 531-1188	Harlem	40.8115584999999967	-73.9578091999999998
1557	Niles Restaurant	\N	371 7th Ave.	NY	New York	10001	(212) 629-0210	Midtown West	40.7487054999999998	-73.9916558000000038
1558	Nino's 46	\N	39 W 46th St.	NY	New York	10036	(212) 719-4015	Midtown	40.7568960999999987	-73.9805082999999968
1559	Nino's Restaurant	\N	1354 1st Ave.	NY	New York	10021	(212) 988-0002	Upper East Side	40.7681212000000031	-73.9553308999999928
1560	Nirvana	\N	346 Lexington Ave.	NY	New York	10016	(212) 983-0000	Midtown East	40.7500155999999976	-73.9773869999999931
1561	Nitecap	\N	120 Rivington St.	NY	New York	10002	(212) 466-3361	Lower East Side	40.7199087999999989	-73.987182599999997
1562	No Fun	\N	161 Ludlow St.	NY	New York	10002	(212) 477-1616	Lower East Side	40.7214541000000025	-73.9878946999999982
1563	No. 7	\N	7 Greene Ave.	NY	Brooklyn	11238	(718) 522-6370	Fort Greene	40.686072799999998	-73.9731043000000028
1564	No.7 North	\N	931 Manhattan Ave.	NY	Brooklyn	11222	(718) 389-7775	Greenpoint	40.7311630000000022	-73.9548431999999991
1565	Noche De Margaritas	\N	1726 2nd Ave.	NY	New York	10128	(212) 289-5195	Upper East Side	40.7801052000000013	-73.9497817999999967
1566	Noho Star	\N	330 Lafayette St.	NY	New York	10012	(212) 925-0070	NoHo	40.7258295000000032	-73.9949694000000022
1567	The NoMad Restaurant	\N	1170 Broadway	NY	New York	10001	(347) 472-5660	Flatiron	40.7449456000000012	-73.9884558999999911
1568	Noorman's Kil	\N	609 Grand St.	NY	Brooklyn	11211	(347) 384-2526	Williamsburg - North Side	40.7114522999999977	-73.947837100000001
1569	North End Grill	\N	104 N End Ave.	NY	New York	10282	(646) 747-1600	Battery Park	40.7154302000000001	-74.0154464999999959
1570	North River Lobster Company	\N	Pier 81 W 41st St.	NY	New York	10036	(212) 630-8831	Pier 81	40.7618039999999979	-74.0026170000000008
1571	North Square	\N	103 Waverly Pl.	NY	New York	10011	(212) 254-1200	Greenwich Village	40.7325031999999965	-73.9986892999999952
1572	Northern Territory	\N	12 Franklin St.	NY	Brooklyn	11222	(347) 689-4065	Greenpoint	40.7252014000000031	-73.9571476999999931
1573	Novita Restaurant	\N	102 E 22nd St.	NY	New York	10010	(212) 677-2222	Flatiron	40.7391236000000134	-73.9864321999999959
1574	Novita Trattoria & Wine Bar	\N	860 Franklin Ave.	NY	Garden City	11530	(516) 739-7660	Garden City	40.7275287000000006	-73.6352296000000024
1575	Nowadays	\N	56-06 Cooper Ave.	NY	Ridgewood	11385	(718) 386-0111	Bushwick	40.6924524000000005	-73.9016402000000028
1576	Nugent's Tavern Irish Pub & Grill	\N	844 Newark Ave.	NJ	Elizabeth	7208	(908) 282-1914	Elizabeth	40.6831187000000014	-74.2076981000000018
1577	Numero 28 Pizzeria Napoletana	\N	176 2nd Ave.	NY	New York	10003	(212) 777-1555	East Village	40.7304265000000001	-73.985983399999995
1578	Nurse Bettie	\N	106 Norfolk St.	NY	New York	10002	(212) 477-7515	Lower East Side	40.7188200000000009	-73.9868629999999996
1579	Nuyorican Poets Cafe	\N	236 E 3rd St.	NY	New York	10009	(212) 505-8183	East Village	40.7219163999999978	-73.981819299999998
1580	NY Dosas	\N	50 Washington Sq S	NY	New York	10014	(917) 710-2092	Greenwich Village	40.7304578999999976	-73.9988654999999937
1581	Nyonya	\N	199 Grand St.	NY	New York	10013	(212) 334-3669	Little Italy	40.7190020000000032	-73.9970265999999981
1582	NYY Steak	\N	7 W 51st St.	NY	New York	10019	(646) 307-7910	Midtown West	40.7597023999999877	-73.9774869999999964
1583	O Lavrador Restaurant & Bar	\N	13840 101st Ave.	NY	Jamaica	11435	(718) 526-1526	Jamaica	40.6944370000000006	-73.8094382999999965
1584	O'Brien's Irish Pub	\N	134 W 46th St.	NY	New York	10036	(212) 391-1516	Theater District	40.7578466999999875	-73.9839501000000013
1585	O'Brien's Pub	\N	3720 Rt 112	NY	Coram	11727	(631) 732-1141	Coram	40.8679161000000022	-72.9997898999999961
1586	O'Donoghues Pub	\N	156 W 44th St.	NY	New York	10036	(212) 997-2262	Theater District	40.7568115999999989	-73.9853715999999935
1587	O'hanlons	\N	349 E 14th St.	NY	New York	10003	(212) 533-7333	Stuyvesant Town	40.731688400000003	-73.9828827000000047
1588	O'Hara's Downtown	\N	172 1st St.	NJ	Jersey City	7302	(201) 239-7373	Jersey City	40.7216092999999972	-74.040892999999997
1589	O'Hara's Restaurant & Pub	\N	120 Cedar St.	NY	New York	10006	(212) 267-3032	Financial District	40.7094992000000033	-74.0126431999999994
1590	O'Lunney's Times Square Pub	\N	145 W 45th St.	NY	New York	10036	(212) 840-6688	Theater District	40.7576672000000002	-73.9842999999999904
1591	O'Reilly's Pub	\N	54 W 31st St.	NY	New York	10001	(212) 684-4244	Midtown West	40.7475755000000035	-73.9888605999999953
1592	Oaxaca Mexican Grill	\N	245 Park Ave.	NY	New York	10167	(212) 818-9500	Midtown East	40.754547500000001	-73.9745087999999953
1593	OBAO	\N	647 9th Ave.	NY	New York	10036	(212) 245-8880	Theater District	40.7606484999999878	-73.9913285000000087
1594	Obicà Mozzarella Bar Pizza e Cucina	\N	928 Broadway	NY	New York	10010	(212) 777-2754	Flatiron	40.7400319999999994	-73.9891408000000013
1595	OCabanon	\N	245 W 29th St.	NY	New York	10001	(646) 669-7879	Midtown West	40.7487854999999968	-73.9945446999999916
1596	Ocean Prime	\N	123 West 52nd St.	NY	New York	10019	(212) 956-1404	Theater District	40.761749199999997	-73.979982899999996
1597	Odeon	\N	145 W Broadway	NY	New York	10013	(212) 233-0507	TriBeCa	40.7169449000000014	-74.0077497999999991
1598	Odessa Restaurant	\N	119 Ave. A	NY	New York	10009	(212) 253-1470	East Village	40.7264835000000005	-73.9835088999999897
1599	Off The Wagon	\N	109 MacDougal St.	NY	New York	10012	(212) 533-4487	Greenwich Village	40.7299325999999979	-74.0008373999999947
1600	Oficina Latina	\N	24 Prince St.	NY	New York	10012	(646) 381-2555	Nolita	40.7227415999999991	-73.9946312999999947
1601	Ofrenda	\N	113 7th Ave. S	NY	New York	10014	(212) 924-2305	West Village	40.7339306000000008	-74.0023848000000015
1602	Ogliastro	\N	784 Washington Ave.	NY	Brooklyn	11238	(718) 789-3700	Prospect Heights	40.6744105000000005	-73.9633278999999959
1603	The Old Homestead Steakhouse	\N	56 9th Ave.	NY	New York	10011	(212) 242-9040	Meatpacking District	40.7412007000000003	-74.0047629000000029
1604	Old Man Hustle	\N	39 Essex St.	NY	New York	10002	(212) 253-7747	Lower East Side	40.7162281000000021	-73.9896947999999952
1605	Old Town Bar & Restaurant	\N	45 E 18th St.	NY	New York	10003	(212) 529-6732	Flatiron	40.7376089999999991	-73.9891619999999932
1606	Oldcastle Pub & Restaurant	\N	160 W 54th St.	NY	New York	10019	(212) 471-4860	Theater District	40.7631350999999995	-73.9809535999999923
1607	Olea	\N	171 Lafayette Ave.	NY	Brooklyn	11238	(718) 643-7003	Fort Greene	40.6878148999999993	-73.9706139999999976
1608	Olio e Piú	\N	3 Greenwich Ave.	NY	New York	10014	(212) 243-6546	West Village	40.7338793999999993	-73.9999407999999903
1609	Oliver's Astoria	\N	37-19 Broadway	NY	Astoria	11103	(718) 806-1476	Astoria	40.7595880000000008	-73.9197609999999941
1610	Olympia Wine Bar	\N	54 Jay St.	NY	Brooklyn	11201		DUMBO	40.7032742000000027	-73.9868321999999949
1611	Om Restaurant	\N	1593 2nd Ave.	NY	New York	10028	(212) 628-4500	Upper East Side	40.7758301000000003	-73.9536440999999911
1612	On The Rocks	\N	696 10th Ave.	NY	New York	10019	(212) 247-2055	Hell's Kitchen	40.7637270000000029	-73.9921140000000008
1613	One Mile House	\N	10 Delancey St.	NY	New York	10002	(646) 559-0702	Lower East Side	40.7204250999999999	-73.9932182999999952
1614	One Star	\N	147 W 24th St.	NY	New York	10011	(212) 777-0100	Chelsea	40.7445613000000009	-73.9941256999999979
1615	One Stop Beer Shop	\N	134 Kingsland Ave.	NY	Brooklyn	11222	(718) 599-0128	East Williamsburg	40.7210443999999967	-73.9406647999999933
1616	Onegin	\N	391 Sixth Ave.	NY	New York	10014	(212) 924-8001	Greenwich Village	40.7333517000000001	-74.0001164999999901
1617	Onieal's Grand Street Bar & Restaurant	\N	174 Grand St.	NY	New York	10013	(212) 941-9119	SoHo	40.7197109000000026	-73.9978320999999966
1618	Onieals	\N	343 Park Ave.	NJ	Hoboken	7030	(201) 653-1492	Hoboken	40.7416261999999989	-74.0322824999999938
1619	Ontario	\N	559 Grand St.	NY	Brooklyn	11211	(718) 384-2835	Williamsburg - North Side	40.7113364000000004	-73.9492832999999905
1620	Ooki Sushi	\N	1575 3rd Ave.	NY	New York	10128	(212) 828-3388	Upper East Side	40.7802354000000022	-73.9526109999999903
1621	Ootoya	\N	8 W 18th St.	NY	New York	10011	(212) 255-0018	Flatiron	40.7387488000000033	-73.9927792999999951
1622	Opia Restaurant	\N	130 E 57th St.	NY	New York	10022	(212) 688-3939	Midtown East	40.7609970000000033	-73.9696842999999973
1623	OPPA	\N	162 W 4th St.	NY	New York	10014	646) 410-0503	West Village	40.7318356999999978	-74.0014010000000013
1624	Osaka	\N	2524 Broadway	NY	Astoria	11106	(718) 777-2662	Astoria	40.762864399999998	-73.9277591000000029
1625	Ost Cafe	\N	441 E 12th St.	NY	New York	10009		East Village	40.7292695000000009	-73.9815081999999933
1626	Osteria Cotta	\N	513 Columbus Ave.	NY	New York	10024	(212) 873-8500	Upper West Side	40.7855227000000014	-73.9726086000000009
1627	Osteria del Circo	\N	120 W 55th St.	NY	New York	10019	(212) 265-3636	Midtown West	40.7630704999999978	-73.9793576999999942
1628	Osteria Morini	\N	218 Lafayette St.	NY	New York	10012	(212) 965-8777	SoHo	40.7219928999999965	-73.9977925999999968
1629	OTB	\N	141 Broadway	NY	Brooklyn	11211	(347) 763-1481	South Williamsburg	40.7104906	-73.9633389000000108
1630	The Otheroom	\N	143 Perry St.	NY	New York	10014	(212) 645-9758	West Village	40.7349704000000017	-74.008034600000002
1631	Otto Pizzeria	\N	1 5th Ave.	NY	New York	10003	(212) 995-9559	Greenwich Village	40.7319030000000026	-73.9961918999999995
1632	Otto's Shrunken Head	\N	538 E 14th St.	NY	New York	10009	(212) 228-2240	East Village	40.7294474999999991	-73.9786837999999989
1633	Output	\N	74 Wythe Ave.	NY	Brooklyn	11249		Williamsburg	40.7222894000000011	-73.9578327999999914
1634	Overlook	\N	225 E 44th St.	NY	New York	10017	(212) 682-7266	Midtown East	40.7518561999999989	-73.9722685999999925
1635	Ovest Pizzoteca	\N	513 W 27th St.	NY	New York	10001	(212) 967-4392	Chelsea	40.7507507999999987	-74.0030220000000014
1636	The Owl Farm	\N	297 9th St.	NY	Brooklyn	11215	(718) 499-4988	Park Slope	40.6694016000000005	-73.9867761000000002
1637	The Owl's Head	\N	479 74th St.	NY	Brooklyn	11209	(718) 680-2436	Bay Ridge	40.6305568999999878	-74.0224446999999941
1638	Ox Cart Tavern	\N	1301 Newkirk Ave.	NY	Brooklyn	11230	(718) 284-0005	Flatbush	40.6348829000000009	-73.9649646999999959
1639	P.J. Clarke's	\N	915 3rd Ave.	NY	New York	10022	(212) 317-1616	Midtown East	40.7589147999999994	-73.9680335999999983
1640	Pa-Nash	\N	144-14 243rd St.	NY	Rosedale	11422	(718) 978-6094	Rosedale	40.6600997000000035	-73.73985669999999
1641	Pachanga Patterson	\N	33-17 31st Ave.	NY	Astoria	11103	(718) 554-0525	Astoria	40.7635014999999967	-73.9211358999999959
1642	Pacific Standard	\N	82 4th Ave.	NY	Brooklyn	11217	(718) 858-1951	Park Slope	40.6821133999999986	-73.9801911000000132
1643	Paddy Reilly's Music Bar	\N	519 2nd Ave.	NY	New York	10016	(212) 686-1210	Midtown East	40.7416410000000013	-73.9784817999999973
1644	Paddy's of Park Slope	\N	273 13th St.	NY	Brooklyn	11215	(718) 369-0831	South Slope	40.6666850000000082	-73.987843600000005
1645	Pagani	\N	289 Bleecker St.	NY	New York	10014	(212) 488-5800	West Village	40.7321590000000029	-74.0032951000000025
1646	Palace of Japan	\N	3505 Johnson Ave.	NY	Bronx	10463	(718) 543-8833	Spuyten Duyvil	40.8859635000000026	-73.9101330999999959
1647	The Palm Tribeca	\N	206 West St.	NY	New York	10282	(646) 395-6393	TriBeCa	40.7164671000000027	-74.0126848999999964
1648	Palma	\N	28 Cornelia St.	NY	New York	10014	(212) 691-2223	West Village	40.7311706999999998	-74.0023326999999966
1649	Pampano	\N	209 E 49th St.	NY	New York	10017	(212) 751-4545	Midtown East	40.7550546000000011	-73.9704344999999961
1650	Panca	\N	92 7th Ave. S	NY	New York	10184	(212) 488-3900	West Village	40.7328667000000024	-74.0035290999999944
1651	Panchito's Mexican Restaurant & Cantina	\N	105 MacDougal St.	NY	New York	10012	(212) 473-5239	Greenwich Village	40.7298530000000127	-74.0009939999999915
1652	Pangea	\N	178 2nd Ave.	NY	New York	10003	(212) 995-0900	East Village	40.7304873000000001	-73.985939700000003
1653	Panino Rustico	\N	8222 17th Ave.	NY	Brooklyn	11214	(718) 236-6343	Bensonhurst	40.6104987999999878	-74.0031604999999928
1654	Papasito Mexican Grill & Agave Bar	\N	223 Dyckman St.	NY	New York	10034	(212) 544-0001	Washington Heights	40.8659462999999974	-73.9273431999999957
1655	Papatzul	\N	55 Grand St.	NY	New York	10013	(212) 274-8225	SoHo	40.7221496000000016	-74.0036726000000016
1656	Papillon	\N	22 E 54th St.	NY	New York	10022	(212) 754-9006	Midtown East	40.7603420000000014	-73.9743260000000049
1657	Papillon 25	\N	25 Valley St.	NJ	South Orange	7079	(973) 761-5299	South Orange	40.7449288999999979	-74.2596592000000015
1658	Pappardella	\N	316 Columbus Ave.	NY	New York	10023	(212) 595-7996	Upper West Side	40.7793601999999993	-73.9778048000000013
1659	Paquito's Restaurant	\N	143 1st Ave.	NY	New York	10003	(212) 674-2071	East Village	40.7281430000000029	-73.9852494999999948
1660	Parc Oasis Oyster Bar	\N	6403 11th Ave.	NY	Brooklyn	11219	(929) 292-2010	Dyker Heights	40.6290297999999979	-74.005201999999997
1661	Paris Baguette	\N	6 W 32nd St.	NY	New York	10001	(212) 244-0404	Midtown West	40.747296200000001	-73.9863411999999983
1662	The Paris Cafe	\N	119 South St.	NY	New York	10038	(212) 240-9797	South Street Seaport	40.7073164000000034	-74.0015424999999993
1663	Park Avenue Tavern	\N	99 Park Ave.	NY	New York	10016	(212) 867-4484	Midtown East	40.7503381000000005	-73.9784509999999926
1664	The Park Lounge	\N	605 E Main St.	NY	Kings Park	11754	(631) 979-1351	Kings Park	40.8831849999999974	-73.229916199999991
1665	The Park	\N	118 10th Ave.	NY	New York	10011	(212) 352-3313	Chelsea	40.7441958	-74.0063399999999945
1666	Parker & Quinn	\N	64 W 39th St.	NY	New York	10018	(212) 729-0277	Midtown West	40.752610599999997	-73.9850283999999903
1667	Parkside Lounge	\N	317 E Houston St.	NY	New York	10002	(212) 673-6270	Lower East Side	40.7210078000000024	-73.9832433999999921
1668	Parlor Steakhouse	\N	1600 3rd Ave.	NY	New York	10128	(212) 423-5888	Yorkville	40.7813743999999971	-73.9525043000000011
1669	The Parlour	\N	250 W 86th St.	NY	New York	10024	(212) 580-8923	Upper West Side	40.7883832000000126	-73.9771978999999931
1670	Parm	\N	248 Mulberry St.	NY	New York	10012	(212) 993-7189	Nolita	40.7230269999999877	-73.9956458999999995
1671	Parrilla Latin Bistro	\N	3920 Broadway	NY	New York	10032	(212) 543-9500	Washington Heights	40.838456800000003	-73.9410574999999994
1672	Pasta Lovers	\N	142 W 49th St.	NY	New York	10019	(212) 819-1155	Midtown West	40.759977499999998	-73.9829759999999936
1673	Pata Paplean Bar	\N	76-21 Woodside Ave.	NY	Elmhurst	11373	(718) 651-2076	Elmhurst	40.7432768999999979	-73.8883847000000031
1674	Pates Et Traditions	\N	52 Havemeyer St.	NY	Brooklyn	11211	(718) 302-1878	Williamsburg - North Side	40.7148717000000033	-73.9546948999999927
1675	The Patriot Saloon	\N	110 Chambers St.	NY	New York	10007	(212) 748-1162	TriBeCa	40.7148804999999996	-74.0082957999999991
1676	Patron Mexican Grill	\N	608 9th Ave.	NY	New York	10036	(212) 957-9050	Hell's Kitchen	40.7592210999999978	-73.9917276999999984
1677	Patroon	\N	160 E 46th St.	NY	New York	10017	(212) 883-7373	Midtown East	40.7533598999999995	-73.9732415999999944
1678	Patsy's Italian Restaurant	\N	236 W 56th St.	NY	New York	10019	(212) 247-3491	Midtown West	40.7655508000000069	-73.9828006999999985
1679	Patsy's Pizzeria	\N	2287 1st Ave.	NY	New York	10035	(212) 534-9783	East Harlem	40.7971551999999988	-73.9348892999999947
1680	Paul & Jimmy's	\N	123 E 18th St.	NY	New York	10003	(212) 475-9540	Flatiron	40.7367659000000017	-73.9872921999999988
1681	Paulaner NYC	\N	265 Bowery	NY	New York	10002	(212) 780-0300	Lower East Side	40.7234093000000001	-73.9924711999999971
1682	The Pavilion	\N	20 Union Square W	NY	New York	10003	(212) 677-7818	Flatiron	40.7364395999999971	-73.989920699999999
1683	Pazza Notte	\N	1375 Ave. of the Americas	NY	New York	10019	(212) 765-6288	Midtown West	40.7635748999999876	-73.9781736999999993
1684	Peculier Pub	\N	145 Bleecker St.	NY	New York	10012	(212) 353-1327	Greenwich Village	40.7283483000000004	-73.999089699999999
1685	Pegu Club	\N	77 W Houston St.	NY	New York	10012	(212) 473-7348	SoHo	40.7267119999999991	-73.999693999999991
1686	Pennsylvania 6 NYC	\N	132 W 31st St.	NY	New York	10001	(212) 727-3666	Midtown West	40.7483004999999991	-73.9906549999999896
1687	The Penny Farthing	\N	103 3rd Ave.	NY	New York	10003	(212) 387-7300	East Village	40.7323619999999877	-73.9875636000000014
1688	The Penrose	\N	1590 2nd Ave.	NY	New York	10028	(212) 203-2751	Upper East Side	40.7754272000000029	-73.9531197999999961
1689	Penthouse Executive Club	\N	603 W 45th St.	NY	New York	10036	(212) 245-0002	Hell's Kitchen	40.7630527000000029	-73.9971259999999944
1690	Pera Mediterranean Brasserie	\N	303 Madison Ave.	NY	New York	10017	(212) 878-6301	Midtown East	40.7523160000000004	-73.9794251999999943
1691	Pera Soho	\N	54 Thompson St.	NY	New York	10012	(212) 878-6305	SoHo	40.7238078999999971	-74.0032176999999933
1692	Percy's BBQ & Darts	\N	210 Ave. A	NY	New York	10009	(212) 473-7770	East Village	40.7297354000000027	-73.9806068999999979
1693	Perdition	\N	692 10th Ave.	NY	New York	10019	(212) 582-5660	Hell's Kitchen	40.7636029000000022	-73.9922122000000115
1694	The Perfect Pint II	\N	203 E 45th St.	NY	New York	10017	(212) 867-8159	Midtown East	40.7526658999999967	-73.9726550999999972
1695	Pergola	\N	36 W 28th St.	NY	New York	10001	(212) 679-4842	Flatiron	40.7454144000000014	-73.9895812999999976
1696	Pershing Square	\N	90 E 42nd St.	NY	New York	10017	(212) 286-9600	Midtown East	40.7519289000000029	-73.9776226000000037
1697	Pete's Candy Store	\N	709 Lorimer St.	NY	Brooklyn	11211	(718) 302-3770	Williamsburg - North Side	40.7180853999999997	-73.9502505999999897
1698	Pete's Tavern	\N	129 E 18th St.	NY	New York	10003	(212) 473-7676	Flatiron	40.7364861000000005	-73.9866945999999928
1699	Peter Dillon's	\N	353 Lexington Ave.	NY	New York	10016	(212) 213-3998	Midtown East	40.7499411000000009	-73.9768660000000011
1700	Peter Dillon's	\N	130 E 40th St.	NY	New York	10016	(212) 213-3998	Murray Hill	40.7498925000000014	-73.9767291999999941
1701	Peter McManus Cafe	\N	152 7th Ave.	NY	New York	10011	(212) 929-9691	Chelsea	40.741858999999998	-73.9976529999999997
1702	Petit Poulet	\N	52 W 33rd St.	NY	New York	10001	(212) 244-0440	Midtown West	40.7486858999999981	-73.9875332000000014
1703	Petite Abeille	\N	44 W 17th St.	NY	New York	10011	(212) 727-2989	Flatiron	40.7386662999999984	-73.9945021999999994
1704	Phebe's	\N	359 Bowery St.	NY	New York	10003	(212) 358-1902	East Village	40.7268047000000024	-73.9912958000000032
1705	Phil's Restaurant and Sports Lounge	\N	1856 Wading River Manor Rd.	NY	Wading River	11792	(631) 929-0508	Wading River	40.9443786000000003	-72.8418451000000005
1706	Philip Marie	\N	569 Hudson St.	NY	New York	10014	(212) 242-6200	West Village	40.7359200000000001	-74.0062319999999971
1707	Pianos	\N	158 Ludlow St.	NY	New York	10002	(212) 505-3733	Lower East Side	40.7210243999999975	-73.9877376999999967
1708	Picante	\N	3424 Broadway	NY	New York	10031	(212) 234-6479	Harlem	40.8227037999999993	-73.9527882000000147
1709	Piccolo Fiore	\N	230 E 44th St.	NY	New York	10017	(212) 922-0581	Midtown East	40.7512763999999876	-73.9721394999999973
1710	Pico	\N	419 Beach 129th St.	NY	Rockaway	11694	(718) 945-3474	Rockaway Park	40.578361000000001	-73.849677000000014
1711	Pie By The Pound	\N	124 4th Ave.	NY	New York	10003	(212) 475-4977	Union Square	40.7330887000000033	-73.9902141000000029
1712	Pieces	\N	8 Christopher St.	NY	New York	10014	(212) 929-9291	West Village	40.7338651999999968	-74.000087999999991
1713	Pier A Harbor House	\N	22 Battery Pl	NY	New York	10004	(212) 785-0153	New York	40.7044131999999976	-74.0179011999999972
1714	Pierre Loti	\N	300 1/2 E 52nd St.	NY	Manhattan	10222	(212) 755-5684	Midtown East	40.7559064000000006	-73.9673248000000001
1715	Pig and Khao	\N	68 Clinton St.	NY	New York	10002	(212) 920-4485	Lower East Side	40.7192489999999978	-73.9847378999999989
1716	Pig n Whistle	\N	202 W 36th St.	NY	New York	10018	(212) 239-4820	Midtown West	40.7522785000000027	-73.9902289999999994
1717	The Pike	\N	271-02 Union Tpke	NY	New Hyde Park	11040	(718) 347-8052	Floral Park	40.7516808000000026	-73.7026109999999903
1718	Pil Pil	\N	265 E 78th St.	NY	New York	10075	(212) 988-3788	Upper East Side	40.7729528999999999	-73.9557973000000146
1719	Pilsener Haus & Biergarten	\N	1422 Grand St.	NJ	Hoboken	7030	(201) 683-5465	Hoboken	40.7550990000000013	-74.0314935999999904
1720	Pine Box Rock Shop	\N	12 Grattan St.	NY	Brooklyn	11206	(718) 366-6311	Bushwick	40.7052741999999981	-73.9326755999999961
1721	The Pines	\N	284 3rd Ave.	NY	Brooklyn	11215	(718) 596-6560	Gowanus	40.6774270000000016	-73.9862631999999962
1722	Pink Nori	\N	36-06 30th Ave.	NY	Astoria	11103	(718) 685-2365	Astoria	40.7648939999999982	-73.9171121999999912
1723	Pinkerton Wine Bar	\N	263 N 6th St.	NY	Brooklyn	11211	(718) 782-7171	Williamsburg - North Side	40.7148030999999975	-73.9543358999999896
1724	Pino Wine Bar	\N	156 E 33rd St.	NY	Manhattan	10016	(646) 704-6149	Murray Hill	40.7452456999999981	-73.9793703999999934
1725	Pint	\N	34 Wayne St.	NJ	Jersey City	7302	(201) 367-1222	Jersey City	40.7190070999999989	-74.0437380999999988
1726	Pio Pio	\N	604 10th Ave.	NY	New York	10036	(212) 459-2929	Hell's Kitchen	40.7605343000000033	-73.9944617999999963
1727	Pioneers	\N	138 W 29th St.	NY	New York	10001	(212) 714-2222	Midtown West	40.7471748999999974	-73.9917755000000028
1728	Piora	\N	430 Hudson St.	NY	New York	10014	(212) 960-3801	West Village	40.7306260999999878	-74.0065462000000025
1729	Piquant	\N	259 Flatbush Ave.	NY	Brooklyn	11217	(718) 484-4114	Prospect Heights	40.6801369000000079	-73.9742559999999969
1730	Pitz Stop	\N	241-21 Braddock Ave.	NY	Bellerose	11426	(718) 343-7638	Queens Village	40.7264922999999968	-73.7265051999999912
1731	Pizza 33	\N	489 3rd Ave.	NY	New York	10016	(212) 545-9191	Koreatown	40.7451083999999994	-73.9782115000000005
1732	Pizzetteria Brunetti	\N	626 Hudson St.	NY	New York	10014	(212) 255-5699	West Village	40.7382745999999969	-74.0053604999999948
1733	Planet Rose	\N	219 Ave. A	NY	New York	10009	(212) 353-9500	East Village	40.7301478999999986	-73.980795999999998
1734	Plattduetsche Park Restaurant	\N	1132 Hempstead Tpke.	NY	Franklin Square	11010	(516) 354-3131	Franklin Square	40.7085549999999969	-73.6820718000000028
1735	Playwright Irish Pub	\N	27 W 35th St.	NY	New York	10001	(212) 268-8868	Midtown West	40.7498661999999996	-73.9853543999999914
1736	Playwright Tavern & Restaurant	\N	202 W 49th St.	NY	New York	10019	(212) 262-9229	Theater District	40.7604779999999991	-73.9841600000000028
1737	Please Don't Tell	\N	113 St. Marks Pl.	NY	New York	10009	(212) 614-0386	East Village	40.7271639999999877	-73.9837150000000037
1738	Plug Uglies	\N	256 3rd Ave.	NY	New York	10010	(212) 780-1944	Gramercy	40.7375001999999995	-73.9844552999999934
1739	Plunge Rooftop Bar & Lounge	\N	18 9th Ave.	NY	New York	10014	(212) 660-6736	West Village	40.7397421000000008	-74.0058365000000009
1740	PMF Pardon My French	\N	103 Ave. B	NY	New York	10009	(212) 358-9683	East Village	40.7247186999999968	-73.9812045999999981
1741	Pocket Bar NYC	\N	455 W 48th St.	NY	New York	10036	(646) 682-9062	Midtown West	40.7633731999999966	-73.9922830000000005
1742	Poco	\N	33 Avenue B	NY	New York	10009	(212) 228-4461	East Village	40.7224496999999985	-73.9829221000000103
1743	Pod 39 Hotel Rooftop Lounge & Bar	\N	145 E 39th St.	NY	New York	10016	(212) 865-5800	Murray Hill	40.7493953000000033	-73.976584299999999
1744	The Point Ale House & Grill	\N	70 Lido Blvd.	NY	Point Lookout	11569	(516) 442-2402	Point Lookout	40.5923439999999971	-73.5810389999999899
1745	Point Break NYC	\N	12 W 45th St.	NY	New York	10036	(212) 391-8053	Midtown West	40.7556008999999975	-73.9805223999999981
1746	Pok Pok NY	\N	117 Columbia St.	NY	Brooklyn	11231	(718) 923-9322	Columbia Street Waterfront District	40.6875908999999965	-74.0012634999999932
1747	The Polo Bar	\N	1 E 55th St.	NY	New York	10022	(212) 207-8562	Midtown East	40.761713499999999	-73.9743749000000008
1748	Porchlight	\N	271 11th Ave.	NY	New York	10001	(212) 981-6188	Chelsea	40.7517415000000014	-74.0052106000000123
1749	Portalia Restaurant	\N	35-03 Broadway	NY	Astoria	11106	(718) 545-3500	Astoria	40.7605501999999973	-73.921871799999991
1750	Porteno Restaurant	\N	299 10th Ave.	NY	New York	10001	(212) 695-9694	Chelsea	40.7505069999999989	-74.0025229999999965
1751	Posh	\N	405 W 51st St.	NY	Manhattan	10019	(212) 957-2222	Hell's Kitchen	40.7645082000000016	-73.9889168999999924
1752	Post Office	\N	188 Havemeyer St.	NY	Brooklyn	11211	(718) 963-2574	Williamsburg - South Side	40.7105667000000011	-73.9584416999999945
1753	Pound & Pence	\N	55 Liberty St.	NY	New York	10005	(212) 716-1140	Financial District	40.7088048000000029	-74.0094069999999959
1754	PourHouse Bar & Grill	\N	468 Ashford Ave.	NY	Ardsley	10502	(914) 693-9707	Ardsley	41.0120865000000023	-73.8486256999999995
1755	Pouring Ribbons	\N	225 Ave. B	NY	New York	10009	(917) 656-6788	East Village	40.7290313999999967	-73.9780547000000013
1756	Press 195	\N	4011 Bell Blvd.	NY	Bayside	11361	(718) 281-1950	Bayside	40.7639472999999981	-73.7708808000000005
1757	The Press Box	\N	932 2nd Ave.	NY	New York	10022	(212) 317-1826	Midtown East	40.754452999999998	-73.968428000000003
1758	The Press Lounge	\N	653 11th Ave.	NY	New York	10036	(212) 757-2224	Hell's Kitchen	40.764569299999998	-73.9959869999999995
1759	Print	\N	653 11th Ave.	NY	New York	10036	(212) 757-2224	Hell's Kitchen	40.764569299999998	-73.9959869999999995
1760	Professor Thom's	\N	219 2nd Ave.	NY	New York	10003	(212) 260-9480	East Village	40.7320494000000011	-73.9854885999999965
1761	Prohibition	\N	503 Columbus Ave.	NY	New York	10024	(212) 579-3100	Upper West Side	40.7852237000000031	-73.9727956999999918
1762	Project Parlor	\N	742 Myrtle Ave.	NY	Brooklyn	11205	(347) 497-0550	Bedford Stuyvesant	40.6947595000000035	-73.9530993999999993
1763	Proletariat	\N	102 St. Marks Pl	NY	New York	10009	(212) 777-6707	East Village	40.727136999999999	-73.9846484999999916
1764	Promenade Bar & Grill	\N	344 3rd Ave.	NY	New York	10010	(646) 918-7220	Kips Bay	40.7404934999999995	-73.9823087999999984
1765	The Proper Cafe	\N	21701 Linden Blvd.	NY	Cambria Heights	11411	(718) 341-2233	Cambria Heights	40.6960929999999976	-73.7423599999999908
1766	Proper West	\N	54 West 39th St.	NY	New York	10018	(212) 997-9000	Midtown West	40.7523954999999987	-73.9847682000000049
1767	Prospect	\N	773 Fulton St.	NY	Brooklyn	11217	(718) 596-6826	Fort Greene	40.6862054999999998	-73.9737181999999933
1768	PS 450	\N	450 Park Ave. S	NY	New York	10016	(212) 532-7474	Midtown East	40.7449806999999993	-73.9832571999999971
1769	PS450	\N	450 Park Ave. S	NY	New York	10022	(212) 532-7474	Midtown East	40.7449806999999993	-73.9832571999999971
1770	Public	\N	210 Elizabeth St.	NY	New York	10012	(212) 343-7011	Nolita	40.7221979999999988	-73.9940806999999978
1771	Public House	\N	140 E 41 St.	NY	New York	10017	(212) 682-3710	Midtown East	40.7503719999999987	-73.976146
1772	Puerto Viejo	\N	564 Grand Ave.	NY	Brooklyn	11238	(718) 398-3758	Crown Heights	40.6788592999999992	-73.9622002999999921
1773	Puffy's Tavern	\N	81 Hudson St.	NY	New York	10013	(212) 227-3912	TriBeCa	40.7185429000000028	-74.0090789999999998
1774	Pulse Karaoke	\N	135 W 41st St.	NY	New York	10036	(212) 278-0090	Theater District	40.7548705999999967	-73.9857089999999999
1775	The Punch Bowl	\N	5820 Broadway	NY	Bronx	10463	(718) 884-7322	Kingsbridge	40.8851285000000004	-73.9002521999999971
1776	Punch Restaurant	\N	913 Broadway	NY	New York	10010	(212) 673-6333	Flatiron	40.739627200000001	-73.9898589999999956
1777	Qi Bangkok Eatery	\N	675 8th Ave.	NY	New York	10036	(212) 247-8991	Hell's Kitchen	40.7577896999999965	-73.9896923000000015
1778	The Quarter	\N	522 Hudson St.	NY	New York	10014	(212) 691-3252	West Village	40.7339688000000066	-74.0060337000000033
1779	Quartino Bottega Organica	\N	11 Bleecker St.	NY	New York	10012	(212) 529-5133	NoHo	40.7255514000000005	-73.9928975999999921
1780	The Quays Pub	\N	45-02 30th Ave.	NY	Astoria	11103	(718) 204-8435	Astoria	40.7617503999999968	-73.9110294000000039
1781	Queen Vic	\N	68 2nd Ave.	NY	New York	10003	(917) 262-0512	East Village	40.7259400000000014	-73.9892178999999999
1782	Queens Comfort	\N	4009 30th Ave.	NY	Astoria	11103	(718) 728-2350	Astoria	40.7638530999999986	-73.9145206999999971
1783	The Queens Kickshaw	\N	40-17 Broadway	NY	Astoria	11103	(718) 777-0913	Astoria	40.7588465999999983	-73.9182638999999995
1784	Rachel's Taqueria	\N	408 5th Ave.	NY	Brooklyn	11215	(718) 788-1137	Park Slope	40.6702727999999993	-73.9855824999999925
1785	Racines	\N	94 Chambers St.	NY	New York	10007	(212) 227-3400	TriBeCa	40.7145553000000007	-74.0075691999999918
1786	Radegast Hall and Biergarten	\N	113 N 3rd St.	NY	Brooklyn	11249	(718) 963-3973	Williamsburg - North Side	40.7166130000000024	-73.9614871999999934
1787	Radio Star Karaoke	\N	3 W 35th St.	NY	New York	10001	(212) 564-2520	Midtown West	40.7495136000000002	-73.9845655999999963
1788	Rafele Ristorante	\N	29 7th Ave. S	NY	New York	10014	(212) 242-1999	West Village	40.7308299000000034	-74.0041406999999936
1789	Raices	\N	565 W 207th St.	NY	New York	10034	(917) 460-0114	Inwood	40.8663965000000005	-73.9200371000000018
1790	The Railyard Tavern	\N	14-26 Plaza Rd. N	NJ	Fair Lawn	7410	(201) 773-3372	Radburn	40.9413947999999976	-74.1208797000000033
1791	The Raines Law Room	\N	48 W 17th St.	NY	New York	10011		Flatiron	40.7387131000000124	-73.9946005999999983
1792	Rambling House	\N	4292 Katonah Ave.	NY	Bronx	10470	(718) 798-4510	Bronx	40.8984986999999975	-73.867084399999996
1793	Ramona	\N	113 Franklin St.	NY	Brooklyn	11222	(347) 227-8164	Greenpoint	40.7301541	-73.9579023999999947
1794	The Randolph at Broome	\N	349 Broome St.	NY	New York	10013	(212) 274-0667	Little Italy	40.7195656999999969	-73.9950394999999901
1795	Randolph Beer	\N	343 Broome St.	NY	New York	10013	(646) 383-3623	Little Italy	40.7195608999999976	-73.994856900000002
1796	Randolph Brooklyn	\N	104 S 4th St.	NY	Brooklyn	11249	(646) 383-3623	Williamsburg - South Side	40.7120243999999971	-73.9633429000000007
1797	Rare Bar and Grill	\N	152 W 26th St.	NY	New York	10001	(212) 807-7273	Chelsea	40.7455149999999975	-73.993744300000003
1798	Rare View Rooftop at the Shelbourne Hotel	\N	303 Lexington Ave.	NY	New York	10016	(212) 689-5200	Murray Hill	40.748490799999999	-73.9779494
1799	Rathbones Restaurant	\N	1702 2nd Ave.	NY	New York	10128	(212) 369-7361	Upper East Side	40.779245699999997	-73.9503765999999985
1800	Rattle N Hum	\N	14 E 33rd St.	NY	New York	10016	(212) 481-1586	Midtown East	40.7472326999999979	-73.984306100000012
1801	Raval Tapas Bar & Lounge	\N	136 Newark Ave.	NJ	Jersey City	7302	(201) 209-1099	Jersey City	40.720497899999998	-74.0434544000000017
1802	Raven's Head Public House	\N	3804 Broadway	NY	Queens	11103	(718) 777-7560	Astoria	40.7590493000000009	-73.9197242999999986
1803	Raxx Pool Room	\N	510 Hempstead Tpke.	NY	West Hempstead	11552	(516) 538-9896	West Hempstead	40.7061149000000029	-73.6588062999999948
1804	Raymi	\N	43 W 24th St.	NY	New York	10010	(212) 929-1200	Flatiron	40.7433808999999982	-73.9912898999999982
1805	Re Sette	\N	7 W 45th St.	NY	New York	10036	(212) 221-7530	Midtown West	40.7558912999999876	-73.9800673999999958
1806	Reade Street Pub & Kitchen	\N	135 Reade St.	NY	New York	10013	(212) 227-2295	TriBeCa	40.7162178999999966	-74.0097457999999904
1807	ReBAR & Kitchen	\N	132 Essex St.	NJ	Lodi	7644	(201) 368-8181	Lodi	40.8921946999999975	-74.0736895999999945
1808	RED 58	\N	158 W 58th St.	NY	New York	10019	(212) 245-0125	Midtown West	40.7656727000000032	-73.9787919999999986
1809	Red Bamboo	\N	140 W 4th St.	NY	New York	10012	(212) 260-1212	Greenwich Village	40.731215700000007	-74.0004646000000008
1810	The Red Cat	\N	227 10th Ave.	NY	New York	10011	(212) 242-1122	Chelsea	40.7481300000000033	-74.0041999999999973
1811	Red Egg	\N	202 Centre St.	NY	New York	10013	(212) 966-1123	Little Italy	40.7188263000000035	-73.9989818999999898
1812	Red Hook Lobster Pound	\N	16 Extra Pl	NY	New York	10003	(212) 777-7225	East Village	40.7250332999999998	-73.9913526999999931
1813	The Red Lion	\N	151 Bleecker St.	NY	New York	10012	(212) 260-9797	Greenwich Village	40.728473000000001	-73.999420200000003
1814	Red Lobster	\N	5 Times Square, Nyc/5	NY	New York	10036	(212) 730-6706	Theater District	40.7555870000000127	-73.9875299999999925
1815	Red Rooster	\N	310 Lenox Ave.	NY	New York	10027	(212) 792-9001	Harlem	40.8080566000000005	-73.9449139000000031
1816	Redcork	\N	330 W 58th St.	NY	New York	10019	(212) 707-8248	Theater District	40.767712699999997	-73.9836471999999929
1817	Redd's	\N	511 Grand St.	NY	Brooklyn	11211	(718) 218-9429	Williamsburg - North Side	40.7111578000000023	-73.9507268999999923
1818	Redds Restaurant	\N	317 Washington Ave.	NJ	Carlstadt	7072	(201) 933-0015	Carlstadt	40.8173669999999973	-74.0658316999999897
1819	Redemption	\N	1003 2nd Ave.	NY	New York	10022	(212) 319-4545	Midtown East	40.7569611999999992	-73.9673167999999919
1820	Redhook Bait & Tackle	\N	320 Van Brunt St.	NY	Brooklyn	11231	(718) 797-4892	Red Hook	40.6791298999999995	-74.0111570999999913
1821	Refinery Rooftop	\N	63 W 38th St.	NY	New York	10018	(646) 664-0372	Midtown West	40.7522076999999996	-73.9853717000000017
1822	Regional	\N	2607 Broadway	NY	New York	10025	(212) 666-1915	Manhattan Valley	40.7962958000000029	-73.9710867000000007
1823	Reichenbach Hall	\N	5 W 37th St.	NY	New York	10018	(212) 302-7744	Midtown West	40.7508859000000072	-73.9839125999999965
1824	Republic	\N	37 Union Sq. W	NY	New York	10003	(212) 627-7172	Union Square	40.7369922999999972	-73.9908102999999926
1825	The Republic Pub	\N	217 Main St.	NY	Farmingdale	11735	(516) 293-4400	Farmingdale	40.7340152000000018	-73.4457609999999903
1826	ReSette	\N	7 W 45th St.	NY	New York	10036	(212) 221-7530	Midtown West	40.7558912999999876	-73.9800673999999958
1827	Restaurant Thalia	\N	828 8th Ave.	NY	New York	10019	(212) 399-4444	Hell's Kitchen	40.7620088999999979	-73.9860031000000049
1828	Reunion	\N	357 W 44th St.	NY	New York	10036	(212) 582-3200	Hell's Kitchen	40.7596729999999994	-73.9913001999999977
1829	REVEL	\N	10 Little W 12th St.	NY	New York	10014	(212) 645-5369	Meatpacking District	40.7396486000000024	-74.0068912999999924
1830	Revel Restaurant & Bar	\N	835 Franklin Ave.	NY	Garden City	11530	(516) 246-9111	Garden City	40.7276759000000013	-73.6344024999999931
1831	Revival	\N	129 E 15th St.	NY	New York	10003	(212) 253-8061	Gramercy	40.7345983000000018	-73.987673700000002
1832	Ricardo Steak House	\N	2145 2nd Ave.	NY	New York	10029	(212) 289-5895	East Harlem	40.7935190999999975	-73.9406515000000013
1833	The Ridgewood Ale House	\N	57-38 Myrtle Ave.	NY	Ridgewood	11385	(718) 456-4495	Ridgewood	40.7003124000000014	-73.9021858999999921
1834	Riposo 72	\N	50 W 72nd St.	NY	New York	10023	(212) 799-4140	Upper West Side	40.7769964000000016	-73.9784865999999965
1835	The Ritz	\N	369 W 46th St.	NY	New York	10036	(212) 333-4177	Hell's Kitchen	40.7609911999999994	-73.990181800000002
1836	The River Cafe	\N	1 Water St.	NY	Brooklyn	11201	(718) 522-5200	DUMBO	40.7031632999999999	-73.9946939000000015
1837	River House Grille	\N	195A Woodcleft Ave.	NY	Freeport	11520	(516) 608-5226	Freeport	40.6347358000000014	-73.5820136999999903
1838	Riverdale Diner	\N	3657 Kingsbridge Ave.	NY	Bronx	10463	(718) 884-6050	Kingsbridge	40.8851536000000024	-73.9014152000000024
1839	Riverpark	\N	450 E 29th St.	NY	New York	10016	(212) 729-9790	Midtown East	40.7396742000000032	-73.9738974999999925
1840	Riviera Cafe & Sports Bar	\N	225 W 4th St.	NY	New York	10014	(212) 929-3250	West Village	40.7340467000000004	-74.0027764000000019
1841	Robert	\N	2 Columbus Cir	NY	New York	10019	(212) 299-7730	Midtown West	40.7673908000000011	-73.9819279999999964
1842	Rocco's Tacos & Tequila Bar	\N	339 Adams St.	NY	Brooklyn	11201	(718) 246-8226	Brooklyn Heights	40.6931928999999997	-73.9883842999999928
1843	Rock & Reilly's NYC	\N	218 W 35th St.	NY	New York	10001	(646) 850-2850	Midtown West	40.7517890000000023	-73.9910330000000016
1844	The Rock Shop	\N	249 4th Ave.	NY	Brooklyn	11215	(718) 230-5740	Park Slope	40.6761867000000024	-73.9834314000000006
1845	Rockaway Beach Surf Club	\N	302 Beach 87th St.	NY	Far Rockaway	11693		Seaside	40.5888798000000008	-73.8120724999999993
1846	RockBar	\N	185 Christopher St.	NY	Manhattan	10014	(212) 675-1864	West Village	40.7326351999999972	-74.009763300000003
1847	Rocking Horse Cafe	\N	182 8th Ave.	NY	New York	10011	(212) 463-9511	Chelsea	40.7428941999999878	-73.9998817999999972
1848	Rogue	\N	757 Ave Of The Americas	NY	New York	10010	(212) 242-6434	Flatiron	40.7444062000000002	-73.9919311999999962
1849	Rolf's Bar & Restaurant	\N	281 3rd Ave.	NY	New York	10010	(212) 477-4750	Gramercy	40.7379456999999974	-73.9834273000000024
1850	Ron Blacks Beer Hall	\N	181 Mamaroneck Ave.	NY	White Plains	10601	(914) 358-5811	White Plains	41.0283564000000069	-73.7644835999999913
1851	Roof at Park South	\N	125 E 27th St.	NY	New York	10016	(212) 204-5222	Flatiron	40.7423816000000016	-73.9834385999999995
1852	Room 1705	\N	1705 1st Ave.	NY	New York	10128	(646) 922-8242	Upper East Side	40.778551499999999	-73.9485190999999986
1853	Room Service	\N	690 9th Ave.	NY	New York	10036	(212) 582-0999	Theater District	40.7617723999999981	-73.9898204999999933
1854	Root & Bone	\N	200 E 3rd St.	NY	New York	10009	(646) 682-7076	East Village	40.7226894000000001	-73.9833022999999912
1855	Rory Dolan's	\N	890 McLean Ave.	NY	Yonkers	10704	(914) 776-2946	Yonkers	40.9050304000000011	-73.8688243
1856	Rosa Mexicano	\N	9 E 18th St.	NY	New York	10003	(212) 533-3350	Union Square	40.738320299999998	-73.9907840999999991
1857	Rosa Mexicano	\N	61 Columbus Ave.	NY	New York	10023	(212) 977-7700	Upper West Side	40.7711351000000022	-73.9828923999999972
1858	Rosamunde Sausage Grill	\N	285 Bedford Ave.	NY	Brooklyn	11211	(718) 388-2170	Williamsburg - South Side	40.7140587999999966	-73.9613677999999908
1859	Rosemary's	\N	18 Greenwich Ave.	NY	New York	10011	(212) 647-1818	West Village	40.7348587999999978	-73.9998068000000018
1860	Rosie O'Grady's	\N	800 7th Ave.	NY	New York	10019	(212) 582-2975	Theater District	40.7626082000000025	-73.982518799999994
1861	Rotisserie Georgette	\N	14 E 60th St.	NY	New York	10022	(212) 390-8060	Upper East Side	40.7643208000000001	-73.9717310999999995
1862	Route 66 Smokehouse	\N	46 Stone St.	NY	New York	10004	(212) 943-1602	Financial District	40.7041771000000026	-74.0104845999999981
1863	The Royal Munkey	\N	438 2nd Ave.	NY	New York	10010	(646) 863-2249	Kips Bay	40.7388594000000026	-73.9797973999999954
1864	The Royal Palms Shuffleboard Club	\N	514 Union St.	NY	Brooklyn	11215	(347) 223-4410	Gowanus	40.6785070000000033	-73.9870099999999979
1865	RPM Bar	\N	266 Broome St.	NY	New York	10013	(646) 918-6529	Lower East Side	40.7183181999999988	-73.9905232999999924
1866	Ruby Tuesday	\N	585 7th Ave.	NY	New York	10036	(212) 382-3898	Theater District	40.7553561000000002	-73.9869473999999911
1867	Ruby's	\N	219 Mulberry St.	NY	New York	10012	(212) 925-5755	Nolita	40.7223108000000025	-73.9963225999999992
1868	Rucola	\N	190 Dean St.	NY	Brooklyn	11217	(718) 576-3209	Boerum Hill	40.6855757000000011	-73.9858933000000007
1869	Rudy's Bar & Grill	\N	627 9th Ave.	NY	New York	10036	(646) 707-0890	Hell's Kitchen	40.7600248999999977	-73.9917772999999954
1870	Rue B	\N	188 Ave. B	NY	New York	10009	(212) 358-1700	East Village	40.7279240000000016	-73.9793409999999909
1871	Ruffian Wine Bar & Chef's Table	\N	125 E 7th St.	NY	New York	10009	(212) 777-0855	East Village	40.7264937000000131	-73.9840459999999922
1872	The Rum House	\N	228 W 47th St.	NY	New York	10036	(646) 490-6924	Theater District	40.7596824999999967	-73.9863503999999921
1873	Rumours	\N	933 8th Ave.	NY	New York	10019	(212) 757-2373	Midtown West	40.7656956000000008	-73.9839736999999928
1874	Russian Samovar	\N	256 W 52nd St.	NY	New York	10019	(212) 757-0168	Theater District	40.763105000000003	-73.9847520000000003
1875	Russian Vodka Room	\N	265 W 52nd St.	NY	New York	10019	(212) 307-5835	Theater District	40.7634795000000025	-73.984685099999993
1876	Rustik Tavern	\N	471 Dekalb Ave.	NY	Brooklyn	11205	(347) 406-9700	Bedford Stuyvesant	40.690779599999999	-73.9582716000000033
1877	Rusty Knot	\N	425 West St.	NY	New York	10014	(212) 645-5668	West Village	40.7351675999999969	-74.0097633999999971
1878	Ruth's Chris Steak House	\N	148 W 51st St.	NY	New York	10019	(212) 245-9600	Theater District	40.7613166000000007	-73.9823171000000031
1879	Ryan Maguire's Ale House	\N	28 Cliff St.	NY	New York	10038	(212) 566-6906	Financial District	40.7080857999999992	-74.0051064000000025
1880	Ryan's Daughter	\N	350 E 85th St.	NY	New York	10028	(212) 628-2613	Upper East Side	40.7762638000000024	-73.9504663999999963
1881	Rye	\N	247 S 1st St.	NY	Brooklyn	11211	(718) 218-8047	Williamsburg - South Side	40.7125941999999981	-73.9578778999999997
1882	Rye House	\N	11 W 17th St.	NY	New York	10011	(212) 255-7260	Flatiron	40.7384827999999999	-73.9928759000000014
1883	Sabbia At La Birreria	\N	200 Fifth Ave.	NY	New York	10010	(212) 937-8910	Flatiron	40.7419930999999877	-73.989935700000018
1884	Sac's Place	\N	2541 Broadway	NY	Astoria	11106	(718) 204-5002	Astoria	40.7630035999999976	-73.9269803999999908
1885	Sachi Asian Bistro	\N	713 2nd Ave.	NY	New York	10016	(212) 297-1883	Murray Hill	40.7476788000000028	-73.9741570999999993
1886	The Sackett	\N	661 Sackett St.	NY	Brooklyn	11217	(718) 622-0437	Park Slope	40.6780408999999992	-73.98227270000001
1887	Sagaponack Restaurant	\N	4 West 22nd St.	NY	New York	10010	(212) 229-2226	Flatiron	40.7409168000000008	-73.9907934000000012
1888	Saggio	\N	829 W 181st St.	NY	New York	10033	(212) 795-3080	Washington Heights	40.8514728999999974	-73.9395880000000005
1889	Saigon Grill & Bar	\N	4521 Ave. N	NY	Flatlands	11234	(718) 338-8886	Mill Basin	40.6189249999999973	-73.9310279999999977
1890	Saint Vitus	\N	1120 Manhattan Ave.	NY	Brooklyn	11222		Greenpoint	40.7367761000000002	-73.9551340999999951
1891	SakaMai	\N	157 Ludlow St.	NY	New York	10002	(646) 590-0684	Lower East Side	40.7210004000000012	-73.9881319999999931
1892	Sake Bar Hagi	\N	152 W 49th St.	NY	New York	10019	(212) 764-8549	Theater District	40.760208200000001	-73.9833033999999969
1893	Sake Bar Satsko	\N	202 E 7th St.	NY	New York	10009	(212) 614-0933	East Village	40.7244304999999969	-73.9802488999999923
1894	Sal's Place	\N	1495 Hicksville Rd.	NY	North Massapequa	11758	(516) 731-3417	North Massapequa	40.7158751999999993	-73.4828284999999966
1895	Sala One Nine	\N	35 W 19th St.	NY	New York	10011	(212) 229-2300	Flatiron	40.7400299999999973	-73.9930895999999905
1896	Salsa Con Fuego	\N	2297 Cedar Ave.	NY	Bronx	10468	(718) 561-6161	Bronx	40.8623691000000022	-73.9114222999999981
1897	Salsa Y Salsa	\N	206 7th Ave.	NY	New York	10011	(212) 929-2678	Chelsea	40.7433945999999878	-73.9964013000000023
1898	Saltaire Oyster Bar And Fish House	\N	55 Abendroth Ave.	NY	Port Chester	10573	(914) 939-2425	Port Chester	41.0020288999999991	-73.6610206999999946
1899	Salty Dog Bar and Restaurant	\N	7509 3rd Ave.	NY	Brooklyn	11209	(718) 238-0030	Bay Ridge	40.6310797999999878	-74.0276200999999929
1900	Salud Bar & Grill	\N	1413 Bushwick Ave.	NY	Brooklyn	11207	(347) 365-7257	Bushwick	40.6846559000000028	-73.9090593999999896
1901	Salumi Tapas & Wine Bar	\N	5600 Merrick Rd.	NY	Massapequa	11758	(516) 620-0057	Massapequa	40.6689313999999982	-73.4308146999999991
1902	Salvation Taco	\N	145 E 39th St.	NY	New York	10016	(212) 865-5800	Murray Hill	40.7493953000000033	-73.976584299999999
1903	Sammy's Fish Box Restaurant	\N	41 City Island Ave.	NY	Bronx	10464	(718) 885-0920	Bronx	40.8389972000000014	-73.7836566999999945
1904	Sammy's Ye Old Cider Mill	\N	353 Mendham Rd. W	NJ	Mendham	7945	(973) 543-7675	Mendham	40.7737588999999971	-74.636477499999998
1905	San Loco	\N	129 2nd Ave.	NY	New York	10003	(212) 260-7948	East Village	40.7285341999999986	-73.9881084999999956
1906	The San Remo Cafe	\N	201 Lafayette St.	NY	New York	10012	(347) 796-0520	SoHo	40.7213594999999984	-73.9977214999999973
1907	The Sandwich Bar	\N	33-01 Ditmars Blvd.	NY	Astoria	11105	(718) 777-1078	Astoria	40.7753672999999992	-73.9096138999999965
1908	Sangria 46	\N	338 W 46th St.	NY	New York	10036	(212) 581-8482	Theater District	40.760193000000001	-73.9895076999999901
1909	Santa Fe Grill & Bar	\N	6025 Broadway	NY	Bronx	10471	(718) 796-5095	Fieldston	40.8915511999999879	-73.8977485000000058
1910	Sapito's NYC	\N	172 E 106th St.	NY	New York	10029	(212) 722-9222	East Harlem	40.7916236000000012	-73.9454166000000015
1911	Sarabeth's Tribeca	\N	339 Greenwich St.	NY	New York	10013	(212) 966-0421	TriBeCa	40.718321600000003	-74.0102533999999963
1912	Savore Ristorante	\N	200 Spring St.	NY	New York	10012	(212) 431-1212	South Village	40.7250202999999971	-74.0034093000000013
1913	Saxon + Parole	\N	316 Bowery	NY	New York	10012	(212) 254-0350	NoHo	40.7251796999999982	-73.9925420000000003
1914	Sazon	\N	105 Reade St.	NY	Tribeca	10013	(212) 406-1900	TriBeCa	40.7156179999999992	-74.0084930000000014
1915	Scallywag's Irish Pub & Restaurant	\N	508 9th Ave.	NY	New York	10018	(646) 490-4803	Hell's Kitchen	40.7560569999999984	-73.9939480000000032
1916	Scarlatto	\N	240 W 47th St.	NY	New York	10028	(212) 730-4535	Midtown West	40.7598766000000126	-73.9864041000000014
1917	Scarpetta	\N	355 W 14th St.	NY	New York	10014	(212) 691-0555	Meatpacking District	40.7408932000000021	-74.0048147999999912
1918	Schiller's Liquor Bar	\N	131 Rivington St.	NY	New York	10002	(212) 260-4555	Lower East Side	40.7193469999999991	-73.9866870000000034
1919	Schnipper's Quality Kitchen	\N	620 8th Ave.	NY	New York	10018	(212) 921-2400	Theater District	40.7560980000000015	-73.9901881999999915
1920	Schnitzel Haus	\N	7319 5th Ave.	NY	Brooklyn	11209	(718) 836-5600	Bay Ridge	40.6304536999999968	-74.0219448
1921	Scores New York	\N	536 W 28th St.	NY	New York	10001	(212) 868-4900	Chelsea	40.7513028999999989	-74.0035487999999901
1922	Scotland Yard	\N	72 Hudson St.	NJ	Hoboken	7030	(201) 222-9273	Hoboken	40.7362998999999988	-74.0304061000000075
1923	Scratcher	\N	209 E 5th St.	NY	New York	10003	(212) 477-0030	East Village	40.7276590000000027	-73.9904810000000026
1924	Sea Shore Restaurant & Marina	\N	591 City Island Ave.	NY	Bronx	10464	(718) 885-0300	City Island	40.8556163000000012	-73.7924153000000018
1925	Sea Witch	\N	703 5th Ave.	NY	Brooklyn	11215	(347) 227-7166	South Slope	40.6608706999999967	-73.993610799999999
1926	Seamstress	\N	339 E 75th St.	NY	New York	10021	(212) 288-8033	Upper East Side	40.7701191000000023	-73.9549811999999918
1927	Sean Og Tavern	\N	6002 Woodside Ave.	NY	Woodside	11377	(718) 899-3499	Woodside	40.7449325999999985	-73.9043425999999926
1928	Sel Rrose	\N	1 Delancey St.	NY	New York	10002		Lower East Side	40.7200076000000024	-73.9938394999999929
1929	Serafina Meatpacking	\N	7 Ninth Ave.	NY	New York	10014	(646) 964-4494	Meatpacking District	40.7396329999999978	-74.0066569999999899
1930	Serena's Wine Bar Cafe	\N	1268 2nd Ave.	NY	New York	10065	(212) 988-2646	Upper East Side	40.7652536000000012	-73.9606186999999977
1931	Serendipity 3	\N	225 E 60th St.	NY	New York	10022	(212) 838-3531	Upper East Side	40.7618668	-73.9649001000000084
1932	Session 73	\N	1359 1st Ave.	NY	New York	10021	(212) 517-4445	Upper East Side	40.7684769999999972	-73.955916000000002
1933	Seven Bar & Grill	\N	350 7th Ave.	NY	New York	10001	(212) 967-1919	Midtown West	40.7482597999999996	-73.9930734999999942
1934	Sexy Taco/Dirty Cash	\N	161 Malcolm X Blvd.	NY	New York	10026	(212) 280-4700	Harlem	40.8036067999999972	-73.9490205999999972
1935	Sfoglia	\N	1402 Lexington Ave.	NY	New York	10128	(212) 831-1402	Upper East Side	40.7836256000000006	-73.9527499000000006
1936	Shade	\N	241 Sullivan St.	NY	New York	10012	(212) 982-6275	Greenwich Village	40.7298996999999972	-73.9993407999999988
1937	Shades of Green Pub & Restaurant	\N	125 E 15th St.	NY	New York	10003	(212) 674-1394	Gramercy	40.7346290999999994	-73.9877748999999909
1938	The Shady Lady	\N	34-19 30th Ave.	NY	Astoria	11103	(718) 440-9081	Astoria	40.7656167000000025	-73.9181416999999925
1939	The Shakespeare	\N	24 E 39th St.	NY	New York	10016	(646) 837-6779	Midtown East	40.7504716999999985	-73.9802583999999968
1940	Shalel Lounge	\N	65 W 70th St.	NY	New York	10023	(212) 873-2300	Upper West Side	40.7760977000000011	-73.9793291000000011
1941	Shangri-La	\N	208 7th Ave.	NY	New York	10011	(212) 807-9872	Chelsea	40.7434155999999987	-73.9964982999999989
1942	Sharky's Wings & Raw Bar	\N	545 Highland Ave.	NJ	Clifton	7011	(973) 473-0713	Clifton	40.8654087000000033	-74.1483320999999904
1943	Sharlene's	\N	353 Flatbush Ave.	NY	Brooklyn	11238	(718) 638-1272	Prospect Heights	40.6770659000000023	-73.9720343999999983
1944	Shay & Ivy	\N	39 W 24th St.	NY	Manhattan	10010	(646) 666-8635	Flatiron	40.743307999999999	-73.9910787000000028
1945	Shelter Pizza	\N	80 N 7th St.	NY	Brooklyn	11249	(718) 388-8338	Williamsburg - North Side	40.7196011999999996	-73.9608176999999927
1946	The Ship	\N	158 Lafayette St.	NY	New York	10013	(212) 219-8496	SoHo	40.7198442999999983	-73.9994700000000023
1947	Shoolbred's	\N	197 2nd Ave.	NY	New York	10003	(212) 529-0340	East Village	40.7313809999999989	-73.986020400000001
1948	Shorty's	\N	576 9th Ave.	NY	New York	10036	(212) 967-3055	Hell's Kitchen	40.7580820000000017	-73.9925389000000138
1949	Shots sports Lounge	\N	1168 Broad St.	NJ	Clifton	7013	(973) 928-3610	Clifton	40.8565500999999998	-74.1775827000000021
1950	Shrine	\N	2271 Adam Clayton Powell Blvd.	NY	New York	10030	(212) 690-7807	Harlem	40.8142823000000021	-73.9440285000000017
1951	SideBAR	\N	120 E 15th St.	NY	New York	10003	(212) 677-2900	Union Square	40.7346219000000005	-73.9886422999999951
1952	Sidetracks Restaurant & Bar	\N	45-08 Queens Blvd.	NY	Sunnyside	11104	(718) 786-3570	Sunnyside	40.7429127999999992	-73.9192669999999907
1953	SideWalk Cafe	\N	94 Avenue A	NY	New York	10009	(212) 473-7373	East Village	40.7254891999999984	-73.9836738999999994
1954	Silvana	\N	300 W 116th St.	NY	New York	10026	(646) 692-4935	Harlem	40.8044366000000025	-73.9559040999999979
1955	Silverleaf Tavern	\N	43 E 38th St.	NY	New York	10016	(212) 973-2550	Murray Hill	40.7498859000000024	-73.9798384999999996
1956	Sing Sing Ave. A	\N	81 Avenue A	NY	New York	10009	2126740700	East Village	40.7251929000000032	-73.9845146999999912
1957	Singl	\N	80 E 13th St.	NY	New York	10003	(212) 432-1324	Union Square	40.7333524000000011	-73.9902570999999938
1958	Sinigual	\N	640 3rd Ave.	NY	New York	10017	(212) 286-0250	Midtown East	40.7503434999999996	-73.9751844000000176
1959	Sip N Chat Cocktail Lounge	\N	2910 Ave. D	NY	Brooklyn	11234	(718) 675-4377	Flatbush	40.6407736999999969	-73.9492419999999981
1960	Siri Thai	\N	641 10th Ave.	NY	New York	10036	(212) 245-4601	Hell's Kitchen	40.7619425000000035	-73.9942020000000014
1961	Sissy McGinty's	\N	25-67 Steinway St.	NY	Astoria	11103	(718) 545-4286	Astoria	40.7661700999999965	-73.9127953999999932
1962	Sisters	\N	900 Fulton St.	NY	Clinton Hill	11238	(347) 763-2537	Clinton Hill	40.6828718000000009	-73.9651808999999929
1963	Skinny Dennis	\N	152 Metropolitan Ave.	NY	Brooklyn	11211	(212) 555-1212	Williamsburg - North Side	40.7158552	-73.9621951000000024
1964	Sky Room	\N	330 W 40th St.	NY	New York	10018	(212) 380-1195	Hell's Kitchen	40.7564664999999877	-73.9925186999999909
1965	The Skylark	\N	200 W 39th St.	NY	New York	10018	(212) 257-4578	Midtown West	40.7540809999999993	-73.988851799999992
1966	Skylight Diner	\N	402 W 34th St.	NY	New York	10001	(212) 244-0395	Hell's Kitchen	40.7533794	-73.996791899999991
1967	Slainte	\N	304 Bowery	NY	New York	10012	(212) 253-7030	East Village	40.7248082999999994	-73.9927696999999966
1968	SLAKE	\N	251 W 30th St.	NY	New York	10002	(212) 695-8970	Midtown West	40.7494549000000035	-73.9942661999999984
1969	Slate	\N	54 W 21st St.	NY	New York	10010	(212) 989-0096	Flatiron	40.7411752000000007	-73.9932216999999923
1970	Slaughtered Lamb Pub	\N	182 W 4th St.	NY	New York	10014	(212) 627-5262	West Village	40.7323493000000028	-74.0019252000000023
1971	Smalls Jazz Club	\N	183 W 10th St.	NY	New York	10014	(212) 252-5091	West Village	40.734391500000001	-74.0027084999999971
1972	Smashburger	\N	10 W 33rd St.	NY	New York	10001	(646) 692-6445	Midtown West	40.7479463999999965	-73.9859567999999967
1973	The Smile	\N	26 Bond St.	NY	New York	10012	(646) 329-5836	NoHo	40.7266363999999967	-73.9935643000000027
1974	Smith & Wollensky	\N	797 3rd Ave.	NY	New York	10022	(212) 753-1530	Midtown East	40.7551871999999875	-73.9707885000000118
1975	Smith's Bar & Restaurant	\N	701 8th Ave.	NY	New York	10036	(212) 246-3268	Hell's Kitchen	40.7587724999999992	-73.9890821999999986
1976	The Smith	\N	55 3rd Ave.	NY	New York	10003	(212) 420-9800	East Village	40.7309849000000028	-73.9884010000000103
1977	Smithfield	\N	138 W 25th St.	NY	New York	10001	(212) 929-9677	Chelsea	40.7447099999999978	-73.9936469999999957
1978	Smoke Jazz Club	\N	2751 Broadway	NY	New York	10025	(212) 864-6662	Manhattan Valley	40.8011472999999967	-73.9682659999999998
1979	The Smoke Joint	\N	87 S Elliott Pl	NY	Brooklyn	11217	(718) 797-1011	Fort Greene	40.6869206999999875	-73.9753371999999985
1980	Snafu	\N	127 E 47th St.	NY	New York	10017	(212) 317-9100	Midtown East	40.7546189999999982	-73.9732039999999955
1981	Snafu 28	\N	37 E 28th St.	NY	New York	10016	(212) 481-3100	Flatiron	40.7437885999999878	-73.9846165999999954
1982	SOB's	\N	204 Varick St.	NY	New York	10014	(212) 243-4940	South Village	40.7284492	-74.0051241000000033
1983	Socarrat Paella Bar	\N	259 W 19th St.	NY	New York	10011	(212) 462-1000	Chelsea	40.7427161999999967	-73.9995098999999925
1984	Socarrat Paella Bar Nolita	\N	284 Mulberry St.	NY	New York	10012	(212) 219-0101	Nolita	40.7244349999999997	-73.9949285000000003
1985	Social Bar	\N	795 8th Ave.	NY	New York	10019	(212) 459-0643	Hell's Kitchen	40.7613182999999992	-73.9871838999999909
1986	SoCo	\N	509 Myrtle Ave.	NY	Brooklyn	11205	(718) 783-1936	Clinton Hill	40.6938460000000006	-73.9645129999999966
1987	Sofia Wine Bar	\N	242 E 50th St.	NY	New York	10022	(212) 888-8660	Midtown East	40.7549366000000077	-73.9692019999999957
1988	Sofrito	\N	679 Riverside Dr.	NY	Manhattan	10031	(212) 754-5999	Upper Manhattan	40.8264805999999965	-73.9560005000000018
1989	Soft Spot Bar	\N	128 Bedford Ave.	NY	Brooklyn	11211	(718) 384-7768	Williamsburg	40.7193581000000009	-73.9560993999999994
1990	SoHo Cigar Bar	\N	32 Watts St.	NY	New York	10013	(212) 941-1781	South Village	40.7236468999999985	-74.004352499999996
1991	Soho House	\N	29 9th Ave.	NY	New York	10014	(212) 627-9800	West Village	40.7405830000000009	-74.0060280000000006
1992	Soho Room	\N	203 Spring St.	NY	New York	10012	(212) 334-3855	South Village	40.725459800000003	-74.0034090999999989
1993	Soho Sushi	\N	231 Sullivan St.	NY	New York	10012	(212) 777-2188	Greenwich Village	40.7297241999999997	-73.9994099000000034
1994	Soigne Restaurant & Wine Bar	\N	486 6th Ave.	NY	Brooklyn	11215	(718) 369-4814	South Slope	40.6664450000000031	-73.9854959000000036
1995	Sojourn	\N	244 E 79th St.	NY	New York	10075	(212) 537-7745	Upper East Side	40.7733601999999991	-73.9557274000000007
1996	Solace Bar and Grill	\N	3496 Broadway	NY	New York	10031	(212) 926-0166	Harlem	40.8249068999999878	-73.9511763000000002
1997	Somm Time Wine Bar	\N	959 2nd Ave.	NY	New York	10022	(212) 888-7404	Midtown East	40.7554555999999977	-73.9684140999999897
1998	Somtum Der	\N	85 Ave. A	NY	New York	10009	(212) 260-8570	East Village	40.7252904999999998	-73.9844148999999902
1999	Son Cubano	\N	40-4 Riverwalk Pl	NJ	West New York	7093	(201) 399-2020	West New York	40.7815689999999975	-74.0054270999999915
2000	Sons of Essex	\N	133 Essex St.	NY	New York	10002	(212) 674-7100	Lower East Side	40.720239399999997	-73.9876488000000023
2001	Sophie's	\N	509 E 5th St.	NY	New York	10003	(212) 228-5680	East Village	40.7248069999999984	-73.983704000000003
2002	Sotto 13	\N	140 W 13th St.	NY	New York	10011	(212) 647-1001	West Village	40.7372514999999993	-73.999158499999993
2003	South	\N	629 5th Ave.	NY	Brooklyn	11215	(718) 832-4720	Windsor Terrace	40.6631771999999998	-73.9912604000000016
2004	South 4th Bar & Cafe	\N	90 S 4th St.	NY	Brooklyn	11249	(718) 218-7478	South Williamsburg	40.7123998	-73.964308299999999
2005	South Beach Restaurant & Lounge	\N	1390 Saint Nicholas Ave.	NY	New York	10033	(212) 923-2700	Washington Heights	40.8482821999999999	-73.9341529000000008
2006	South Gate	\N	154 Central Park S.	NY	New York	10019	(212) 484-5120	Midtown West	40.7662911999999977	-73.9780034999999998
2007	South Shore Dive	\N	65 Main St.	NY	West Sayville	11796	(631) 218-6500	West Sayville	40.7297160000000034	-73.0939114999999902
2008	South's Bar	\N	273 Church St.	NY	New York	10013	(212) 219-0640	TriBeCa	40.7184229000000002	-74.0048596000000032
2009	Southern Hospitality	\N	645 9th Ave.	NY	New York	10036	(212) 265-1000	Hell's Kitchen	40.7606245999999999	-73.9913981999999919
2010	Space Billiard	\N	34 W 32nd St.	NY	New York	10001	(212) 239-4166	Midtown West	40.7476751000000021	-73.9873075
2011	Spain Restaurant	\N	113 W 13th St.	NY	New York	10011	(212) 929-9580	West Village	40.7371344000000022	-73.9979213999999956
2012	Spanish Pavillion	\N	31 Harrison Ave.	NJ	Harrison	7029	(973) 485-7750	Harrison	40.7452105000000131	-74.1633283999999975
2013	The Sparrow Tavern	\N	24-01 29th St.	NY	Astoria	11102	(718) 606-2260	Astoria	40.7727184000000022	-73.916334599999999
2014	Spice	\N	39 E 13th St.	NY	New York	10003	(212) 982-3758	Union Square	40.7345362999999878	-73.9918552000000034
2015	Spices Negril Restaurant & Lounge	\N	1084 Grand Ave.	NY	Hempstead	11550	(516) 279-6988	Hempstead	40.6843847000000025	-73.6153151999999977
2016	Spiegel	\N	26 1st Ave.	NY	New York	10009	(212) 228-2894	East Village	40.7236856999999972	-73.9877462999999977
2017	SPiN	\N	48 E 23rd St.	NY	New York	10010	(212) 982-8802	Flatiron	40.7402163000000002	-73.9870209999999986
2018	Spitzer's Corner	\N	101 Rivington St.	NY	New York	10002	(212) 228-0027	Lower East Side	40.719938599999999	-73.9882709999999975
2019	The Spotted Owl Tavern	\N	211 Ave. A	NY	New York	10009	(212) 388-9844	East Village	40.7299061999999878	-73.9809367999999949
2020	The Spotted Pig	\N	314 W 11th St.	NY	New York	10014	(212) 620-0393	West Village	40.7356132999999971	-74.0066956999999945
2021	Spring Natural Restaurant	\N	98 Kenmare St.	NY	New York	10012	(212) 966-0290	Little Italy	40.721103399999997	-73.9968848000000037
2022	Spritzenhaus	\N	33 Nassau Ave.	NY	Brooklyn	11222	(347) 987-4632	Greenpoint	40.723191700000001	-73.9529909999999973
2023	Spuntino Wine Bar & Italian Tapas	\N	1002 Old Country Rd.	NY	Garden City	11530	(516) 228-5400	Garden City	40.7427425999999997	-73.605288299999998
2024	St Pat's Bar & Grill	\N	22 W 46th St.	NY	New York	10036	(212) 391-1111	Midtown West	40.7563679999999877	-73.9803909999999973
2025	St. Andrews	\N	140 W 46th St.	NY	New York	10036	(212) 840-8413	Theater District	40.7578999999999994	-73.9840772999999956
2026	St. Dymphna's	\N	118 St. Marks Pl	NY	New York	10009	(212) 254-6636	East Village	40.7268990000000031	-73.9840722
2027	St. Mazie	\N	345 Grand St. Williamsburg	NY	Brooklyn	11211	(718) 384-4807	Williamsburg - North Side	40.7124296000000001	-73.9559327999999994
2028	St. Pat's Bar & Grill	\N	22 W 46th St.	NY	New York	10036	(212) 391-1111	Midtown West	40.7563679999999877	-73.9803909999999973
2029	The Stag's Head	\N	252 E 51st St.	NY	New York	10022	(212) 888-2453	Midtown East	40.7554576000000068	-73.9685690000000022
2030	Stage Karaoke & Lounge	\N	23 W 32nd St	NY	New York	10001	(212) 629-7171	Korea Town	40.7478917999999979	-73.9866547999999966
2031	The Stanton Social	\N	99 Stanton St.	NY	New York	10002	(212) 995-0099	Lower East Side	40.7211359000000002	-73.9881211999999948
2032	Station House	\N	106-11 71st Ave.	NY	Forest Hills	11375	(718) 544-5000	Forest Hills	40.7200567000000007	-73.8452604000000008
2033	Statler Grill	\N	136 W 33rd St.	NY	New York	10001	(212) 736-3353	Midtown West	40.7497231999999983	-73.9900427999999977
2034	Step In Restaurant	\N	1309 Metropolitan Ave.	NY	Bronx	10462	(718) 822-0562	Parkchester	40.8338879999999875	-73.8611918999999943
2035	Sticky Rice	\N	85 Orchard St.	NY	New York	10002	(212) 274-8208	Lower East Side	40.717948100000001	-73.9904772000000008
2036	Stillwater Bar	\N	78-80 E 4th St.	NY	New York	10003	(212) 253-2237	East Village	40.7262099999999876	-73.9899685999999974
2037	Stitch	\N	247 W 37th St.	NY	New York	10018	(212) 852-4826	Midtown West	40.7540692999999976	-73.991269299999999
2038	STK Midtown	\N	1114 6th Ave.	NY	New York	10036	(646) 624-2455	Midtown West	40.7547171999999875	-73.9827744999999908
2039	Stone Creek	\N	140 E 27th St.	NY	New York	10016	(212) 532-1037	Kips Bay	40.7416109999999989	-73.9825289999999995
2040	Stone Street Tavern	\N	52 Stone St.	NY	New York	10004	(212) 785-5658	Financial District	40.7042271999999983	-74.0102138999999966
2041	The Stonewall Inn	\N	53 Christopher St.	NY	New York	10014	(212) 488-2705	West Village	40.7338144	-74.0021627999999936
2042	The Storehouse	\N	69 W 23rd St.	NY	New York	10010	(212) 243-8898	Flatiron	40.7428020999999987	-73.9920331000000004
2043	Stout NYC	\N	133 W 33rd St.	NY	New York	10001	(212) 629-6191	Midtown West	40.7499663999999981	-73.9898656000000017
2044	Stout NYC FiDi	\N	90 John St.	NY	New York	10038	(212) 240-9122	Financial District	40.707910499999997	-74.006483199999991
2045	Stout NYC Grand Central	\N	60 E 41st St.	NY	New York	10017	(212) 922-9009	Midtown East	40.751603099999997	-73.979101
2046	Strong Place	\N	270 Ct. St.	NY	Brooklyn	11231	(718) 855-2105	Cobble Hill	40.6703910000000022	-73.9452029999999922
2047	Studio XXI	\N	59 W 21st St.	NY	New York	10011	(212) 359-4200	Flatiron	40.7415440999999987	-73.9932292999999959
2048	The Stumble Inn	\N	1454 2nd Ave.	NY	New York	10021	(212) 650-0561	Upper East Side	40.7712012000000001	-73.9563641999999959
2049	Subject	\N	188 Suffolk St.	NY	New York	10002	(646) 422-7898	Lower East Side	40.7214944999999986	-73.9846749000000017
2050	Sue's Rendezvous	\N	96 Gramatan Ave.	NY	Mt. Vernon	10550	(914) 664-5747	Mt. Vernon	40.9138841999999983	-73.8376528000000008
2051	Suffolk Arms	\N	269 Houston St.	NY	New York	10002	(212) 475-0400	Lower East Side	40.7214945999999998	-73.9846749000000017
2052	Sugar Factory	\N	835 Washington St.	NY	New York	10014	(212) 414-8700	Meatpacking District	40.7405960999999976	-74.0076277000000005
2053	Sugarburg	\N	519 Metropolitan Ave.	NY	Brooklyn	11211	(917) 618-3029	Williamsburg - North Side	40.7140739000000025	-73.9514363999999915
2054	Sugarcane	\N	238 Flatbush Ave.	NY	Brooklyn	11217	(718) 230-3954	Prospect Heights	40.6802842000000027	-73.9750453999999991
2055	Suite	\N	992 Amsterdam Ave.	NY	New York	10027	(212) 222-4600	Manhattan Valley	40.8025791000000027	-73.9644394000000034
2056	Suite 36	\N	16 W 36th St.	NY	New York	10018	(212) 695-0036	Midtown West	40.7499680000000026	-73.9847999999999928
2057	Sullivan's Quay	\N	541 Port Washington Blvd.	NY	Port Washington	11050	(516) 883-3122	Port Washington	40.8241713999999973	-73.6820716999999945
2058	The Summit Bar	\N	133 Ave C	NY	New York	10009	(347) 465-7911	East Village	40.7250299999999967	-73.9784583999999938
2059	Sunita Bar	\N	106 Norfolk St.	NY	New York	10002	(212) 253-8860	Lower East Side	40.7188200000000009	-73.9868629999999996
2060	Sunny's Bar	\N	253 Conover St.	NY	Brooklyn	11231	(718) 625-8211	Red Hook	40.6756758000000005	-74.0168685000000011
2061	Sunswick 35/35	\N	3502 35th St.	NY	Astoria	11106	(718) 752-0620	Astoria	40.7565979000000027	-73.9255543999999958
2062	Superfine	\N	126 Front St.	NY	Brooklyn	11201	(718) 243-9005	DUMBO	40.7022370999999978	-73.9874147999999963
2063	Supper	\N	156 E 2nd St.	NY	New York	10009	(212) 477-7600	East Village	40.7229555999999988	-73.9852135000000146
2064	The Supply House	\N	1647 2nd Ave.	NY	New York	10028	(646) 861-3585	Upper East Side	40.7775778999999972	-73.9522680000000037
2065	Surya	\N	154 Bleecker St.	NY	New York	10012	(212) 875-1405	Greenwich Village	40.7281321999999975	-73.9996318000000031
2066	Sushi Dojo NYC	\N	110 1st Ave.	NY	New York	10009	(646) 692-9398	East Village	40.7266355000000004	-73.9856587999999959
2067	Sushi Lounge	\N	200 Hudson St.	NJ	Hoboken	7030	(201) 386-1117	Hoboken	40.7386817999999877	-74.0296491000000003
2068	Sushi Sen-nin	\N	30 E 33rd St.	NY	New York	10016	(212) 889-2208	Murray Hill	40.7466611999999984	-73.9829586000000035
2069	SUSHISAMBA 7	\N	87 7th Ave. S	NY	New York	10014	(212) 691-7885	West Village	40.7326392000000013	-74.0031237000000033
2070	Suspenders	\N	108 Greenwich St.	NY	New York	10006	(212) 732-5005	Financial District	40.708602599999999	-74.0135989999999993
2071	Suteishi	\N	24 Peck Slip	NY	New York	10038	(212) 766-2344	Financial District	40.7078709999999973	-74.0019396999999941
2072	Sweet & Vicious	\N	5 Spring St.	NY	New York	10012	(212) 334-7915	Nolita	40.7213226999999875	-73.9942805000000021
2073	Sweet Afton	\N	30-09 34th St.	NY	Astoria	11103	(718) 777-2570	Astoria	40.7653877999999992	-73.9190267000000034
2074	Sweet Revenge	\N	62 Carmine St.	NY	New York	10014	(212) 242-2240	West Village	40.7296464	-74.0041317000000021
2075	Sweet Science	\N	135 Graham Ave.	NY	Brooklyn	11206	(347) 763-0872	East Williamsburg	40.706417799999997	-73.9432899999999904
2076	Sweet Spot	\N	2272 31st St.	NY	Astoria	11105	(718) 777-7475	Astoria	40.7747557	-73.9128056999999927
2077	Sweetwater Restaurant	\N	105 N 6th St.	NY	Brooklyn	11249	(718) 963-0608	Williamsburg - North Side	40.7184682999999978	-73.9600097000000005
2078	Swift Hibernian Lounge	\N	34 E 4th St.	NY	New York	10003	(212) 260-3600	NoHo	40.7272402999999983	-73.9923517000000004
2079	Swine	\N	531 Hudson St.	NY	New York	10014	(212) 255-7675	West Village	40.7342457000000024	-74.0064598999999959
2080	Sycamore	\N	1118 Cortelyou Rd.	NY	Brooklyn	11218	(347) 240-5850	Flatbush	40.6397173000000009	-73.9672283999999962
2081	Sylvia's Restaurant	\N	328 Malcolm X Blvd.	NY	New York	10027	(212) 996-0660	Harlem	40.8085960000000014	-73.9444060000000007
2082	Tabare	\N	221 S 1st St.	NY	Brooklyn	11211	(347) 335-0187	Williamsburg - South Side	40.7130409000000029	-73.9590072000000021
2083	Tabata	\N	540 9th Ave.	NY	New York	10018	(212) 290-7691	Theater District	40.756884399999997	-73.9933717999999914
2084	Taboon	\N	773 10th Ave.	NY	New York	10019	(212) 713-0271	Midtown West	40.7662319000000011	-73.9910064000000034
2085	The Taco Shop	\N	166 W 4th St.	NY	New York	10014	(212) 675-1955	West Village	40.7319531000000126	-74.0015229999999917
2086	Tacombi	\N	267 Elizabeth St.	NY	New York	10012	(917) 727-0179	Nolita	40.7240188000000032	-73.9938752999999991
2087	Tacombi Flatiron - Cafe El Presidente	\N	30 W 24th St.	NY	New York	10010	(212) 242-3491	Flatiron	40.7428463999999977	-73.991154999999992
2088	Tagine	\N	221 West 38th St.	NY	New York City	10018	(646) 373-6265	Midtown West	40.7539745999999994	-73.9896176999999966
2089	Taj Lounge	\N	48 W 21st St.	NY	New York	10010	(212) 620-3033	Flatiron	40.7410469000000006	-73.9929174999999901
2090	Takahachi	\N	85 Ave. A	NY	New York	10009	(212) 505-6524	East Village	40.7252904999999998	-73.9844148999999902
2091	Takashi	\N	456 Hudson St.	NY	New York	10014	(212) 414-2929	West Village	40.731455099999998	-74.0064215000000019
2092	Take31	\N	15 E 31st St.	NY	New York	10016	(646) 398-9990	Midtown East	40.746283499999997	-73.9848128000000003
2093	Talia's Steakhouse	\N	668 Amsterdam Ave.	NY	New York	10025	(212) 580-3770	Upper West Side	40.7919587000000021	-73.9721629000000007
2094	Tamarind	\N	99 Hudson St.	NY	New York	10013	(212) 775-9000	TriBeCa	40.719097099999999	-74.0090406999999999
2095	Tampopo Ramen	\N	1 Bennett Ave.	NY	New York	10033	(212) 923-0575	Washington Heights	40.8507480000000029	-73.9362780000000157
2096	The Tangled Vine	\N	434 Amsterdam Ave.	NY	New York	10024	(646) 863-3896	Upper West Side	40.7844884999999877	-73.9777294999999953
2097	Tangra Asian Fusion Cuisine	\N	3923 Queens Blvd.	NY	Sunnyside	11104	(718) 786-8008	Sunnyside	40.7442759999999993	-73.9248910000000024
2098	Tanner Smiths	\N	204 W 55 St.	NY	New York	10019	(646) 590-2034	Midtown West	40.7642963999999992	-73.9817001999999917
2099	Tanoshi Sushi Sake Bar	\N	1372 York Ave.	NY	New York	10021	(646) 727-9056	Upper East Side	40.7675667999999973	-73.9528323999999913
2100	TAO	\N	42 E 58th St.	NY	New York	10022	(212) 888-2288	Midtown East	40.7625588999999877	-73.9714883999999984
2101	Tap A Keg	\N	2731 Broadway	NY	New York	10025	(212) 749-1734	Manhattan Valley	40.8003350999999981	-73.9684517999999969
2102	Tap and Barrel	\N	550 Smithtown Bypass	NY	Smithtown	11787	(631) 780-5474	Smithtown	40.8322041999999996	-73.1956838999999917
2103	Tap House	\N	72-07 Austin St.	NY	Forest Hills	11375	(718) 997-0500	Forest Hills	40.7193775000000002	-73.8422399999999897
2104	Taphouse Grille	\N	344 French Hill Rd.	NJ	Wayne	7470	(973) 832-4141	Wayne	40.9259024999999994	-74.2456543999999923
2105	The Tapp	\N	17 N Broadway	NY	Tarrytown	10591	(914) 703-6022	Tarrytown	41.0769726999999989	-73.8582603999999918
2106	Tappo Thin Crust Pizza	\N	49 W 24th St.	NY	New York	10010	(212) 807-9200	Flatiron	40.7434555999999972	-73.9914680999999916
2107	Taproom No. 307	\N	307 3rd Ave.	NY	New York	10010	(212) 725-4766	Gramercy	40.7389705000000077	-73.9826437999999911
2108	Taqueria Diana	\N	129 2nd Ave.	NY	New York	10003	(646) 422-7871	East Village	40.7285341999999986	-73.9881084999999956
2109	Taqueria St. Marks Place	\N	79 St. Marks Pl	NY	New York	10003	(646) 964-5614	East Village	40.7279028000000025	-73.9855546999999945
2110	Tara Inn	\N	1519 Main St.	NY	Port Jefferson	11777	(631) 828-5987	Port Jefferson	40.9361148999999997	-73.0561050999999964
2111	Tarallucci e Vino - East Village	\N	163 1st Ave.	NY	New York	10003	(212) 388-1190	East Village	40.7289675000000031	-73.9845560999999918
2112	Tartine	\N	253 W 11th St.	NY	New York	10014	(212) 229-2611	West Village	40.7363457000000011	-74.0034546999999918
2113	Taureau	\N	558 Broome St.	NY	New York	10013	(212) 228-2222	South Village	40.7245216999999968	-74.0056781999999913
2114	The Tavern At Croton Landing	\N	41 N Riverside Ave.	NY	Croton-on-Hudson	10520	(914) 271-8020	Croton-on-Hudson	41.2071185	-73.8930312999999899
2115	Tavern On Jane	\N	31 8th Ave.	NY	New York	10014	(212) 675-2526	West Village	40.7383177000000032	-74.0042799000000002
2116	TAVERN on third	\N	380 3rd Ave.	NY	New York	10016	(212) 300-4046	Kips Bay	40.7416978999999984	-73.9814698999999933
2117	Tavern29	\N	47 E 29th St.	NY	New York	10016	(212) 685-4422	Flatiron	40.7442847000000015	-73.9839679999999902
2118	TØRST	\N	615 Manhattan Ave.	NY	Brooklyn	11222	(718) 389-6034	Greenpoint	40.7234162999999967	-73.9508081000000033
2119	TBA Brooklyn	\N	395 Wythe Ave.	NY	Brooklyn	11249	(347) 770-4760	Williamsburg	40.7111335000000025	-73.9662804000000023
2120	Tbar Steak & Lounge	\N	1278 3rd Ave.	NY	New York	10021	(212) 772-0404	Upper East Side	40.7707730999999995	-73.9600922999999995
2121	Teaneck Doghouse	\N	1415 Palisade Ave.	NJ	Teaneck	7666	(201) 530-7733	Teaneck	40.9023864999999986	-74.0059810999999996
2122	Ted's Corner Tavern	\N	523 3rd Ave.	NY	New York	10016	(212) 689-2676	Murray Hill	40.7462078000000005	-73.9774924000000027
2123	Ted's Montana Grill	\N	110 W 51st St.	NY	New York	10020	(212) 245-5220	Theater District	40.7607187999999994	-73.9808907000000033
2124	Teddy's Bar & Grill	\N	96 Berry St.	NY	Brooklyn	11211	(718) 384-9787	Williamsburg - North Side	40.7192469000000017	-73.9583533999999929
2125	Tempest Bar	\N	407 8th Ave.	NY	New York	10001	(212) 643-1502	Midtown West	40.7500169999999997	-73.9954396999999915
2126	Temple Bar	\N	332 Lafayette St.	NY	New York	10012	(212) 925-4242	NoHo	40.7258921000000029	-73.9949404999999985
2127	The Ten Bells	\N	247 Broome St.	NY	New York	10002	(212) 228-4450	Lower East Side	40.7178243999999978	-73.9898472999999939
2128	Ten Degrees Bar	\N	121 St. Marks Pl.	NY	New York	10009	(212) 358-8600	East Village	40.7269523000000007	-73.983436999999995
2129	Tender	\N	130 W 47th St.	NY	New York	10016	(212) 514-6000	Theater District	40.758351900000001	-73.9832203999999933
2130	Terminal 5	\N	610 W 56th St.	NY	New York	10019	(212) 582-6600	Hell's Kitchen	40.7696942000000035	-73.9927225999999933
2131	Terra Blues	\N	149 Bleecker St.	NY	New York	10012	(212) 777-7776	Greenwich Village	40.7283880999999965	-73.999298600000003
2132	Terroir Wine Bar	\N	24 Harrison St.	NY	New York	10013	(212) 625-9463	TriBeCa	40.7189227000000002	-74.0099593999999996
2133	Tertulia	\N	359 6th Ave.	NY	New York	10014	(646) 559-9909	West Village	40.7322630000000032	-74.0007849999999934
2134	Tessa	\N	349 Amsterdam Ave.	NY	New York	10024	(212) 390-1974	Upper West Side	40.781433100000001	-73.9792113000000029
2135	Texas Arizona	\N	76 River St.	NJ	Hoboken	7030	(201) 420-0304	Hoboken	40.7360613000000029	-74.0294353000000029
2136	TGI Friday's	\N	7000 Austin St.	NY	Forest Hills	11375	(718) 793-3263	Forest Hills	40.7210292999999979	-73.8477704999999958
2137	TGI Fridays	\N	47 Broadway	NY	New York	10004	(212) 483-8322	Financial District	40.7064698000000007	-74.0127638999999959
2138	Thai Rock	\N	375 Beach 92nd St.	NY	Rockaway Beach	11693	(646) 455-3991	Seaside	40.5891195999999965	-73.8174139999999994
2139	Thai Select	\N	472 9th Ave.	NY	New York	10018	(212) 695-9920	Midtown West	40.7547758999999985	-73.994936899999999
2140	Thailand Cafe	\N	95 2nd Ave.	NY	New York	10003	(212) 477-1872	East Village	40.7272366999999988	-73.9890370999999902
2141	Thalia Cafe	\N	2537 Broadway	NY	Manhattan	10025	(646) 597-7340	Upper West Side	40.7939624999999992	-73.9728154000000018
2142	Therapy	\N	348 W 52nd St.	NY	New York	10019	(212) 397-1700	Hell's Kitchen	40.7640839000000028	-73.9869341999999932
2143	Third Avenue Ale House	\N	1644 3rd Ave.	NY	New York	10128	(646) 559-9131	Upper East Side	40.7828275000000033	-73.9513582999999954
2144	Third Floor Cafe	\N	315 5th Ave.	NY	New York	10016	(212) 481-3669	Koreatown	40.7468928999999989	-73.9851941000000011
2145	The Thirsty Fan	\N	254 W 31st St.	NY	New York	10001	(212) 216-9355	Midtown West	40.7499060999999969	-73.994406699999999
2146	The Thirsty Scholar	\N	155 Second Ave.	NY	New York	10003	(212) 777-6514	East Village	40.7296856000000034	-73.9872431999999947
2147	Thomas Joseph's Sports Bar	\N	271-11 Union Turnpike	NY	New Hyde Park	11040	(718) 347-2044	Floral Park	40.7521758000000034	-73.7029950999999954
2148	Three Jolly Pigeons	\N	6802 3rd Ave.	NY	Brooklyn	11226	(718) 745-9350	Bay Ridge	40.6366360000000029	-74.025920499999998
2149	The Three Monkeys	\N	236 W 54th St.	NY	New York	10019	(212) 586-2080	Theater District	40.7640857999999966	-73.9831830999999909
2150	Three of Cups	\N	83 1st Ave.	NY	New York	10003	(212) 388-0059	East Village	40.7259971000000007	-73.9868067999999965
2151	Threes Brewing	\N	333 Douglass St.	NY	Brooklyn	11217	(718) 522-2110	Gowanus	40.6795171999999994	-73.9822709999999972
2152	Tijuana Picnic	\N	151 Essex St.	NY	Manhattan	10002	(212) 219-2000	Lower East Side	40.7207634000000027	-73.987365699999998
2153	Tile Bar	\N	115 First Ave.	NY	New York	10003	(212) 254-4317	East Village	40.7271754000000001	-73.9859151999999938
2154	Till & Sprocket	\N	140 W 30th St.	NY	New York	10001	(212) 239-0570	Midtown West	40.7479488999999973	-73.9916371999999996
2155	Timmy's By The River	\N	1737 York Ave.	NY	New York	10128	(212) 860-9191	Upper East Side	40.7790188000000029	-73.945231899999996
2156	Tin Marin	\N	3708 Riverdale Ave.	NY	Bronx	10463	(718) 884-4800	Riverdale	40.887044699999997	-73.9068367999999936
2157	Tiny's & the Bar Upstairs	\N	135 W Broadway	NY	New York	10013	(212) 374-1135	TriBeCa	40.7166982999999973	-74.0079901000000007
2158	Tio Pepe	\N	168 W 4th St.	NY	New York	10014	(212) 242-6480	West Village	40.7319679000000008	-74.0016583000000026
2159	Tip Top Bar & Grill	\N	432 Franklin Ave.	NY	Brooklyn	11238	(718) 857-9744	Clinton Hill	40.6838434999999876	-73.956212899999997
2160	The Tippler	\N	425 W 15th St.	NY	New York	10011	(212) 206-0000	Meatpacking District	40.7428114000000008	-74.0068259999999896
2161	Tipsy Parson	\N	156 9th Ave.	NY	New York	10011	(212) 620-4545	Chelsea	40.7442470000000014	-74.0026472999999925
2162	Tir Na Nog	\N	315 W 39th St.	NY	New York	10018	(212) 760-0072	Hell's Kitchen	40.7559711999999976	-73.9920453000000009
2163	Tito Rad's Grill & Restaurant	\N	49-10 Queens Blvd.	NY	Woodside	11377	(718) 205-7299	Woodside	40.7425092000000006	-73.9163482000000016
2164	Toad Hall	\N	57 Grand St.	NY	New York	10013	(212) 431-8145	SoHo	40.7221169000000032	-74.0036051999999955
2165	Toast	\N	3157 Broadway	NY	New York	10027	(212) 662-1144	Harlem	40.8147984999999878	-73.9594122999999968
2166	The Todd English Food Hall	\N	One West 58th St.	NY	New York	10017	(212) 986-9260	Midtown West	40.7642201999999969	-73.9742746999999952
2167	Toloache	\N	251 W 50th St.	NY	New York	10019	(212) 581-1818	Theater District	40.7623091000000031	-73.9855740999999938
2168	Tom & Jerry's	\N	288 Elizabeth St.	NY	New York	10012	(212) 260-5045	NoHo	40.7246221999999989	-73.9931629999999956
2169	Tommy Bahama Restaurant & Bar - New York	\N	551 5th Ave.	NY	New York	10176	(212) 537-0960	Midtown East	40.7553750999999878	-73.9789011000000016
2170	Tommy Fox's Public House	\N	32 S Washington Ave.	NJ	Bergenfield	7621	(201) 384-0900	Bergenfield	40.9266930000000002	-73.9970089999999914
2171	Tommy's Tavern	\N	1041 Manhattan Ave.	NY	Brooklyn	11222	(718) 383-9699	Greenpoint	40.7343199000000027	-73.9551846999999896
2172	Tonic Bar & Restaurant	\N	727 7th Ave.	NY	New York	10019	(212) 382-1059	Midtown West	40.7599952999999999	-73.9836583999999959
2173	Tonic East	\N	411 East 3rd Ave.	NY	New York	10016	(212) 683-7090	Midtown East	40.7423576999999995	-73.9801818999999909
2174	Tony's Di Napoli	\N	147 W 43rd St.	NY	New York	10036	(212) 221-0100	Theater District	40.7565018000000023	-73.9854017999999911
2175	Top Hops	\N	94 Orchard St.	NY	New York	10002	(212) 254-4677	Lower East Side	40.7184027999999998	-73.9899429999999967
2176	The Top of The Standard	\N	848 Washington St.	NY	New York	10014	(212) 645-4646	Meatpacking District	40.7408539999999988	-74.0079522999999995
2177	Top of the Strand	\N	33 West 37th St. 21st floor	NY	New York	10018	(212) 448-1024	Midtown West	40.751275100000008	-73.9848068999999953
2178	The Topaz	\N	251 Bushwick Ave.	NY	Brooklyn	11206	(347) 770-7217	East Williamsburg	40.7072981999999968	-73.9397785000000027
2179	Tortaria	\N	94 University Pl.	NY	New York	10003	(212) 776-1830	Union Square	40.7338783999999876	-73.9930339999999944
2180	Tortilla Flats	\N	767 Washington St.	NY	New York	10014	(212) 243-1053	West Village	40.7374462999999878	-74.0079595999999924
2181	Tosca Cafe	\N	4038 E Tremont Ave.	NY	Bronx	10465	(718) 239-3300	Throgs Neck	40.8190671999999992	-73.81764849999999
2182	Toshi's Living Room	\N	1141 Broadway	NY	New York	10001	(917) 432-8810	Flatiron	40.7440379000000021	-73.9892169000000024
2183	Totto Ramen	\N	366 W 52nd St.	NY	New York	10019	(212) 582-0052	Hell's Kitchen	40.7643565999999993	-73.9876414000000011
2184	Tracks Raw Bar & Grill	\N	1 Penn Plz	NY	New York	10119	(212) 244-6350	Midtown West	40.7512149000000008	-73.9922234999999944
2185	Trademark Taste & Grind	\N	38 W 36th St.	NY	New York	10018	(646) 858-2320	Midtown West	40.7502402000000004	-73.985459800000001
2186	Tradesman	\N	222 Bushwick Ave.	NY	Brooklyn	11206	(718) 386-5300	East Williamsburg	40.708185499999999	-73.9401647999999909
2187	Trading Post	\N	170 John St.	NY	New York	10038	(646) 370-3337	South Street Seaport	40.705932599999997	-74.0042522999999903
2188	The Trailer Park Lounge	\N	271 W 23rd St.	NY	New York	10011	(212) 463-8000	Chelsea	40.7453564999999998	-73.9977990999999946
2189	Trattoria Trecolori	\N	254 W 47th St.	NY	New York	10036	(212) 997-4540	Theater District	40.7598778999999993	-73.9867850999999916
2190	tre	\N	173 Ludlow St.	NY	New York	10002	(212) 353-3353	Lower East Side	40.7218370999999877	-73.9877072000000027
2191	Treadwell Park	\N	1125 1st Ave.	NY	New York	10065	(212) 832-1551	Upper East Side	40.7614664000000033	-73.9611012999999957
2192	Trece Mexican Cuisine & Tequila Bar	\N	54 E 13th St.	NY	New York	10003	(212) 477-5577	Union Square	40.7341002000000003	-73.9917595000000006
2193	Trestle On Tenth	\N	242 10th Ave.	NY	New York	10001	(212) 645-5659	Chelsea	40.7483819999999994	-74.0034316000000132
2194	Tribeca Grand's Church Bar	\N	2 Avenue of the Americas	NY	New York	10013	(212) 519-6500	TriBeCa	40.7193812999999878	-74.0047810000000084
2195	Tribeca Grill	\N	375 Greenwich St.	NY	New York	10013	(212) 941-3900	TriBeCa	40.7196080000000009	-74.0098989999999901
2196	Trinity Place	\N	115 Broadway	NY	New York	10006	(212) 964-0939	Financial District	40.7088820000000027	-74.011432599999992
2197	Trinity Pub	\N	229 E 84th St.	NY	New York	10028	(212) 327-4450	Upper East Side	40.777177199999997	-73.9536360999999971
2198	Trinity Restaurant & Bar	\N	190 Jericho Tpke	NY	Floral Park	11001	(516) 358-5584	Floral Park	40.7284115	-73.7039161999999948
2199	Triona's	\N	237 Sullivan St.	NY	New York	10012	(212) 982-5222	Greenwich Village	40.7298301999999879	-73.9993702000000013
2200	The Triple Crown Bar	\N	330 7th Ave.	NY	New York	10003	(212) 736-1575	Chelsea	40.7477733999999998	-73.9933645999999925
2201	Troost	\N	1011 Manhattan Ave.	NY	Brooklyn	11222	(347) 889-6761	Greenpoint	40.7334734000000012	-73.9550387000000029
2202	Trophy Bar	\N	351 Broadway	NY	Brooklyn	11211	(347) 227-8515	South Williamsburg	40.7078563000000031	-73.9557300999999967
2203	Tropical 128	\N	128 Elizabeth St.	NY	New York	10013	(212) 925-8219	Little Italy	40.7194953999999996	-73.9951112999999907
2204	Troy Liquor Bar	\N	675 Hudson St.	NY	New York	10014	(212) 699-2410	West Village	40.7404265999999993	-74.0054579999999902
2205	Tryon Public House	\N	4740 Broadway	NY	New York	10040	(646) 918-7129	Washington Heights	40.8649924999999996	-73.9277258999999987
2206	Turkish Grill	\N	42-03 Queens Blvd.	NY	Sunnyside	11104	(718) 392-3838	Sunnyside	40.7438700000000011	-73.9221447999999981
2207	Turnmill	\N	119 E 27th St.	NY	New York	10016	(646) 524-6060	Flatiron	40.7425168999999983	-73.9835928000000109
2208	Turntable Mad for Chicken	\N	314 5th Ave.	NY	New York	10001	(212) 714-9700	Midtown West	40.7471245999999994	-73.985917299999997
2209	Turtle Bay	\N	987 2nd Ave.	NY	New York	10022	(212) 223-4224	Midtown East	40.7564229999999981	-73.9677980000000019
2210	Tuttles	\N	735 2nd Ave.	NY	New York	10016	(646) 422-7072	Murray Hill	40.7482582000000022	-73.9736549999999937
2211	Twins Pub	\N	421 9th Ave.	NY	New York	10001	(212) 564-7288	Midtown West	40.7531802000000027	-73.9968289999999911
2212	Twist and Smash'd Sports	\N	34-02 Steinway St.	NY	Astoria	11101	(718) 806-1542	Astoria	40.7566268000000065	-73.9212500000000006
2213	Twisted Elm	\N	435 River Dr.	NJ	Elmwood Park	7407	(201) 791-3705	Elmwood Park	40.906624800000003	-74.1303932999999944
2214	Two Lizards Mexican Bar & Grill	\N	1365 1st Ave.	NY	New York	10021	(212) 734-2447	Upper East Side	40.7688186999999971	-73.9555768000000029
2389	Ziggy's	\N	1485 2nd Ave.	NY	New York	10075	(646) 678-4200	Upper East Side	40.7723434999999981	-73.9560996000000017
2215	two8two Bar & Burger	\N	282 Atlantic Ave.	NY	Brooklyn	11201	(718) 596-2282	Cobble Hill	40.6885468999999986	-73.989715799999999
2216	Txikito	\N	240 9th Ave.	NY	New York	10001	(212) 242-4730	Chelsea	40.7473409999999987	-74.0003122999999903
2217	Udom Thai Restaurant	\N	661 Washington Ave.	NY	Brooklyn	11238	(718) 622-8424	Prospect Heights	40.6773675000000026	-73.9634638999999936
2218	The Ugly Kitchen	\N	103 1st Ave.	NY	New York	10003	(212) 777-6677	East Village	40.7267366000000024	-73.9863050999999956
2219	Uglyduckling	\N	166 Smith St.	NY	Brooklyn	11201	(718) 451-3825	Cobble Hill	40.6860466999999986	-73.9912484999999975
2220	Ulysses Folk House	\N	95 Pearl St.	NY	New York	10004	(212) 482-0400	Financial District	40.7043614999999974	-74.0100458999999944
2221	Umami Burger	\N	432 6th Ave.	NY	New York	10011	(212) 677-8626	Greenwich Village	40.7344158999999877	-73.9986033000000134
2222	Uncle Barry's	\N	58 5th Ave.	NY	Brooklyn	11217	(718) 622-4980	Park Slope	40.6813080000000014	-73.9773636999999979
2223	Uncle Charlie's	\N	139 E 45th St.	NY	New York	10017	(212) 661-9097	Midtown East	40.7532719000000014	-73.9739110000000011
2224	Uncle Jack's Steakhouse	\N	44 W 56th St.	NY	New York	10019	(212) 245-1550	Midtown West	40.7629820000000009	-73.9766949999999923
2225	The Uncommons	\N	230 Thompson St.	NY	New York	10012	(646) 543-9215	Greenwich Village	40.7293436	-73.9987497999999988
2226	Uncorked Wine & Tapas	\N	344 E 59th St.	NY	New York	10022	(646) 429-8365	Midtown East	40.7596435999999969	-73.9626226000000031
2227	Underballs	\N	200 9th Ave.	NY	New York	10011	(212) 257-4363	Chelsea	40.7458728999999877	-74.0014410999999939
2228	Underdog Bar & Grill	\N	4 Church St.	NJ	Haledon	7508	(973) 720-5999	Haledon	40.9390071999999989	-74.1847197999999963
2229	Union Fare Restaurant	\N	6 E 18th St.	NY	New York	10003	(212) 633-6003	Flatiron	40.7381636	-73.9912582999999984
2230	Union Hall	\N	702 Union St.	NY	Brooklyn	11215	(718) 638-4400	Park Slope	40.676039099999997	-73.9801179999999903
2231	Union Pool	\N	484 Union Ave.	NY	Brooklyn	11211	(718) 609-0484	Williamsburg - North Side	40.7149649999999994	-73.9514638999999931
2232	Union Square Cafe	\N	101 E 19th St.	NY	New York	10003	(212) 243-4020	Flatiron	40.7377701999999999	-73.9878767000000011
2233	Uno Pizzeria & Grill	\N	9201 Fourth Ave.	NY	Brooklyn	11209	(718) 748-8667	Bay Ridge	40.6178829999999991	-74.0297941000000179
2234	Uno Pizzeria & Grill	\N	37-11 35th Ave.	NY	Long Island City	11101	(718) 706-8800	Astoria	40.7558003999999983	-73.923110400000013
2235	The Up & Up	\N	116 MacDougal St.	NY	New York	10012	(212) 260-3000	Greenwich Village	40.7296935000000033	-74.0004718999999938
2236	Up On 20 Rooftop Lounge	\N	30 West 31st Street	NY	New York	10001	(212) 330-1234	Koreatown	40.7469245999999998	-73.9877175999999963
2237	The Upholstery Store	\N	713 Washington St.	NY	New York	10014	(212) 352-2300	West Village	40.7352367000000015	-74.008208499999995
2238	Upright Brew House	\N	547 Hudson St.	NY	New York	10014	(212) 810-9944	West Village	40.7349338000000003	-74.0063662000000022
2239	The Upsider	\N	1004 2nd Ave.	NY	New York	10022	(646) 726-4760	Midtown East	40.7568008000000006	-73.9668025999999941
2240	Upstairs At the Kimberly	\N	145 E 50th St.	NY	New York	10022	(212) 888-1220	Midtown East	40.7563217000000009	-73.9714033999999998
2241	Upstairs Bar	\N	59 W 46th St.	NY	Manhattan	10036	(212) 719-2300	Midtown	40.7571869999999876	-73.9812455999999941
2242	Upstairs Restaurant	\N	608 Valley Rd.	NJ	Montclair	7043	(973) 744-4144	Montclair	40.7717874000000009	-74.2423055999999946
2243	Upstate	\N	95 1st Ave.	NY	New York	10003	(917) 408-3395	East Village	40.7263542000000029	-73.9865532999999971
2244	Uva	\N	1486 2nd Ave.	NY	New York	10075	(212) 472-4552	Upper East Side	40.7721589000000009	-73.9556048999999973
2245	V Bar	\N	132 1st Ave.	NY	New York	10009	(212) 473-7200	East Village	40.7274071000000006	-73.9851407999999964
2246	Vai	\N	429 Amsterdam Ave.	NY	New York	10023	(212) 362-4500	Upper West Side	40.7841238000000033	-73.9773210999999975
2247	Valhalla	\N	815 9th Ave.	NY	New York	10019	(212) 757-2747	Hell's Kitchen	40.7659887000000012	-73.9874077999999997
2248	Vamos! Tacos & Tequila	\N	348 First Ave.	NY	New York	10010	(212) 358-7800	Stuyvesant Town	40.7350121999999999	-73.9793327000000005
2249	Van Diemens	\N	383 3rd Ave.	NY	New York	10079	(212) 532-1123	Kips Bay	40.7415213000000023	-73.9808352999999954
2250	Vandal	\N	199 Bowery	NY	New York	10002	(212) 400-0199	Lower East Side	40.721067699999999	-73.9933534000000037
2251	The Vanderbilt	\N	570 Vanderbilt Ave.	NY	Brooklyn	11238	(718) 623-0570	Prospect Heights	40.6795992999999996	-73.9684431999999958
2252	Vanguard Wine Bar	\N	189 Amsterdam Ave.	NY	New York	10023	(212) 799-9463	Upper West Side	40.7763129000000006	-73.9830565999999976
2253	Vapiano	\N	113 University Pl	NY	New York	10003	(212) 777-9477	Union Square	40.7341503000000031	-73.9922801999999962
2254	Vauxhall	\N	26 Clinton Ave.	NY	Huntington	11743	(631) 425-0222	Huntington	40.8721127999999965	-73.4286910999999947
2255	Vazacs Horseshoe Bar	\N	108 Ave. B	NY	New York	10009	(212) 677-6742	East Village	40.7250067000000016	-73.9814599999999984
2256	Vbar St Marks	\N	132 1st Ave.	NY	New York	10009	(212) 473-7200	East Village	40.7274071000000006	-73.9851407999999964
2257	Vella Wine Bar+ Kitchen	\N	1480 2nd Ave.	NY	New York	10075	(212) 335-0456	Upper East Side	40.7720265999999967	-73.9557412999999997
2258	Velvet Rope Lounge	\N	3212-3214 Coney Island Ave.	NY	Brooklyn	11235	(347) 554-8511	Brighton Beach	40.5774692999999971	-73.9597377999999992
2259	Verde Wine Bar and Ristorante	\N	450 Commack Rd.	NY	Deer Park	11729	(631) 242-8902	Deer Park	40.7630063999999877	-73.3131073999999927
2260	Verlaine	\N	110 Rivington St.	NY	New York	10002	(212) 614-2494	Lower East Side	40.7200934999999973	-73.9877728000000019
2261	Vero Uptown	\N	1483 2nd Ave.	NY	New York	10021	(212) 452-3354	Upper East Side	40.7722562000000011	-73.9561680999999993
2262	Vespa Italian Kitchen & Bar	\N	282 Main St.	NY	Farmingdale	11735	(516) 586-8542	Farmingdale	40.7325526999999994	-73.4460849999999965
2263	Vetro by Russo's on the Bay	\N	164-49 Crossbay Blvd.	NY	Howard Beach	11414	(718) 843-8387	Howard Beach	40.649408600000001	-73.8370559999999898
2264	Vezzo Thin Crust Pizza	\N	178 Lexington Ave.	NY	New York	10016	(212) 839-8300	Midtown East	40.7444940999999972	-73.9813908999999938
2265	Via Brasil Restaurant	\N	34 W 46th St.	NY	New York	10036	(212) 997-1158	Midtown West	40.7565521000000004	-73.9807866000000018
2266	Vibes	\N	143-06 Liberty Ave.	NY	Jamaica	11435	(718) 262-0433	Jamaica	40.6920740000000123	-73.8093528999999933
2267	ViceVersa Restaurant	\N	325 W 51st St.	NY	New York	10019	(212) 399-9291	Hell's Kitchen	40.7635744999999972	-73.9867345000000114
2268	Victor's Cafe	\N	236 W 52nd St.	NY	New York	10019	(212) 586-7714	Theater District	40.762890800000001	-73.9841014000000001
2269	Vig Bar	\N	12 Spring St.	NY	New York	10012	(212) 625-0011	Nolita	40.7211135000000013	-73.9946422999999953
2270	Village Pourhouse	\N	64 3rd Ave.	NY	New York	10003	(212) 979-2337	East Village	40.7313532000000009	-73.9890327999999897
2271	The Village Tavern	\N	46 Bedford St.	NY	New York	10014	(212) 741-1935	West Village	40.730590399999997	-74.0041652000000028
2272	The Village Underground	\N	130 W 3rd St.	NY	New York	10012	(212) 777-7745	Greenwich Village	40.7306226999999978	-74.0009273999999948
2273	Village Vanguard	\N	178 7th Ave. S	NY	New York	10014	(212) 255-4037	West Village	40.7360402999999991	-74.0017240999999899
2274	The Villager	\N	260 Deer Park Ave.	NY	Babylon	11702	(631) 482-8585	Babylon	40.7003498999999991	-73.3225595999999911
2275	Vin Sur Vingt	\N	201 W 11th St.	NY	New York	10014	(212) 924-4442	West Village	40.7367058999999969	-74.001437199999998
2276	Vinateria	\N	2211 Federick Douglass Blvd.	NY	New York	10027	(212) 662-8462	Harlem	40.8065664000000012	-73.9541292999999911
2277	Vinegar Hill House	\N	72 Hudson Ave.	NY	Brooklyn	11201	(718) 522-1018	Vinegar Hill	40.702751499999998	-73.9813618000000019
2278	VinoTapa	\N	201 E 31st St.	NY	New York	10016	(212) 725-8466	Kips Bay	40.7437964999999878	-73.9791165999999976
2279	Vintage 1891 Larchmont Wine Lounge	\N	2098 Boston Post Rd.	NY	Larchmont	10538	(914) 834-9463	Larchmont Village	40.9285755999999878	-73.7517064999999974
2280	Vintry Wine and Whiskey	\N	57 Stone St.	NY	New York	10004	(212) 480-9800	Financial District	40.7045200000000023	-74.0102667999999966
2281	Virgil's Real Barbecue	\N	152 W 44th St.	NY	New York	10036	(212) 921-9494	Theater District	40.7567321000000007	-73.9851831999999945
2282	Virgola - Oysters & Italian Wine Bar	\N	28 Greenwich Ave.	NY	New York	10011		West Village	40.7351770000000002	-73.9999069999999932
2283	Vitae	\N	4 E 46th St.	NY	New York	10017	(212) 682-3562	Midtown East	40.7555989000000025	-73.9785292999999911
2284	Viva Tapas Bar and Lounge	\N	65 Sherman Ave.	NY	New York	10034	(212) 567-1084	Washington Heights	40.8631416999999999	-73.9266981999999899
2285	Viva Toro	\N	188 Berry St.	NY	Brooklyn	11249	(718) 384-2138	Williamsburg - North Side	40.7169874000000007	-73.9614382999999975
2286	Vivi Bubble Tea	\N	49 Bayard St.	NY	New York	10013	(212) 566-6833	Chinatown	40.7151056000000011	-73.997530900000001
2287	Vol de Nuit	\N	148 W 4th St.	NY	New York	10012	(212) 982-3388	Greenwich Village	40.7313613999999973	-74.0006504999999919
2288	Von	\N	3 Bleecker St.	NY	New York	10012	(212) 473-3039	NoHo	40.725475000000003	-73.9925899999999928
2289	VU Rooftop Bar	\N	17 W 32nd St.	NY	New York	10001	(212) 991-8842	Midtown West	40.7474873000000031	-73.9867170999999928
2290	Vynl	\N	756 9th Ave.	NY	New York	10019	(212) 974-2003	Hell's Kitchen	40.7639038000000085	-73.9882743000000005
2291	V{IV} Bar & Restaurant	\N	717 9th Ave.	NY	New York	10019	(212) 581-5999	Theater District	40.7628276000000014	-73.9898158000000024
2292	W New York	\N	541 Lexington Ave.	NY	New York	10022	(212) 755-1200	Midtown East	40.7561083000000011	-73.9722927999999911
2293	WA Bar & Chicken	\N	28 W 32nd St.	NY	New York	10001	(212) 967-2228	Korea Town	40.7475811999999991	-73.9870975999999985
2294	The Waiting Room	\N	66 E Cherry St.	NJ	Rahway	7065	(732) 382-0900	Rahway	40.6071341000000032	-74.2745858999999911
2295	Walker's	\N	16 N Moore St.	NY	New York	10013	(212) 941-0142	TriBeCa	40.7196856999999994	-74.0070319999999953
2296	Wallflower	\N	235 W 12th St.	NY	New York	10014	(646) 682-9842	West Village	40.7377851999999976	-74.0022319999999922
2297	Walter's	\N	166 DeKalb Ave.	NY	Brooklyn	11217	(718) 488-7800	Fort Greene	40.6896352999999991	-73.9732190999999943
2298	Walter's Bar	\N	389 8th Ave.	NY	New York	10001	(212) 502-4023	Chelsea	40.7493849000000026	-73.9958560000000034
2299	Warren 77	\N	77 Warren St.	NY	New York	10007	(212) 227-8994	TriBeCa	40.7150571000000028	-74.0103618999999924
2300	Washington Commons	\N	748 Washington Ave.	NY	Brooklyn	11238	(718) 230-3666	Prospect Heights	40.6754425999999967	-73.9634657000000004
2301	Wassail	\N	162 Orchard St.	NY	New York	10002	(646) 918-6835	Lower East Side	40.7210352000000029	-73.9885258999999991
2302	The Water Club	\N	500 E 30th St.	NY	New York	10016	(212) 683-3333	Stuyvesant Town	40.7403651999999994	-73.9723639999999989
2303	The Watering Hole	\N	106 E 19th St.	NY	New York	10003	(212) 674-5783	Flatiron	40.7372145000000003	-73.9874480000000005
2304	Waterzooi	\N	850 Franklin Ave.	NY	Garden City	11530	(516) 877-2177	Garden City	40.7273901000000009	-73.6351772000000153
2305	The Waverly Inn	\N	16 Bank St.	NY	New York	10014	(917) 828-1154	West Village	40.7369354000000001	-74.0022285999999951
2306	The Wayfarer	\N	101 W 57th St.	NY	New York	10019	(212) 691-0030	Midtown West	40.7646623999999989	-73.9773464000000018
2307	The Wayland	\N	700 E 9th St.	NY	New York	10009	(212) 777-7022	East Village	40.7250247999999999	-73.9777969000000013
2308	The Waylon	\N	736 10th Ave.	NY	New York	10019	(212) 265-0010	Midtown West	40.7647760999999988	-73.9914338999999899
2309	Welcome to the Johnsons	\N	123 Rivington St.	NY	New York	10002	(212) 420-9911	Lower East Side	40.719643099999999	-73.987252500000011
2310	The Well	\N	272 Meserole St.	NY	Brooklyn	11206	(347) 338-3612	East Williamsburg	40.7084722000000028	-73.9378743999999983
2311	West 3rd Common	\N	1 W 3rd St.	NY	New York	10012	(212) 529-2059	Greenwich Village	40.7280068000000028	-73.9949233999999905
2312	The West 79th Street Boat Basin Cafe	\N	W 79th St. at Riverside Dr.	NY	New York	10025	(212) 496-5542	Upper West Side	40.7849789999999999	-73.9826618000000025
2313	West Bank Cafe	\N	407 W 42nd St.	NY	New York	10036	(212) 695-6909	Hell's Kitchen	40.7588306999999972	-73.9928063999999921
2314	West End Bar & Grill	\N	813 8th Ave.	NY	New York	10019	(212) 707-8986	Hell's Kitchen	40.7616668000000004	-73.986857999999998
2315	West End Hall	\N	2756 Broadway	NY	New York	10025	(212) 662-7200	Manhattan Valley	40.8009369000000035	-73.9675440999999978
2316	The West End Lounge	\N	955 W End Ave.	NY	New York	10025	(212) 531-4759	Manhattan Valley	40.8022976999999969	-73.9683425999999997
2317	West Side Steakhouse	\N	597 10th Ave.	NY	New York	10036	(212) 564-4803	Hell's Kitchen	40.7606442000000015	-73.9951152999999948
2318	Westside Tavern	\N	360 W 23rd St.	NY	New York	10011	(212) 366-3738	Chelsea	40.7460535000000021	-74.0009749000000028
2319	The Wharf	\N	416 Beach 116th St.	NY	Rockaway Park	11694	(718) 474-8807	Rockaway Park	40.5825239999999994	-73.8384569999999911
2320	Wheated	\N	905 Church Ave.	NY	Brooklyn	11218	(347) 240-2813	Flatbush	40.6466824999999972	-73.9705289999999991
2321	The Wheeltapper Pub	\N	141 E 44th St.	NY	New York	10017	(212) 351-6800	Midtown East	40.7526808000000003	-73.9743874999999917
2322	While We Were Young	\N	183 W 10th St.	NY	New York	10014	(917) 675-6272	West Village	40.734391500000001	-74.0027084999999971
2323	Whiskey Blue	\N	541 Lexington Ave.	NY	New York	10022	(212) 407-2947	Midtown East	40.7561083000000011	-73.9722927999999911
2324	The Whiskey Brooklyn	\N	44 Berry St.	NY	Brooklyn	11211	(718) 387-8444	Williamsburg - North Side	40.7212096000000017	-73.9565601999999984
2325	The Whiskey Rebel	\N	129 Lexington Ave.	NY	New York	10016	(212) 686-3800	Flatiron	40.7429217999999977	-73.9819892999999951
2326	Whiskey Social	\N	35 W 8th St.	NY	New York	10011	(646) 726-4476	Greenwich Village	40.7331294000000028	-73.9980436000000026
2327	Whiskey Tavern	\N	79 Baxter St.	NY	New York	10013	(212) 374-9119	Chinatown	40.7164694000000011	-73.9997431999999975
2328	Whiskey Trader	\N	71 W 55th St.	NY	New York	10019	(212) 582-2223	Midtown West	40.7629305999999971	-73.9774850000000015
2329	The Whiskey Ward	\N	121 Essex St.	NY	New York	10002	(212) 477-2998	Lower East Side	40.7196488000000016	-73.987889899999999
2330	Whisper's Lounge	\N	1246 E Gun Hill Rd.	NY	Bronx	10469	(718) 944-1136	Pelham Gardens	40.8722143000000031	-73.8510004999999978
2331	White Horse Tavern	\N	567 Hudson St.	NY	New York	10014	(212) 989-3956	West Village	40.7356630000000024	-74.0061949999999911
2332	White Oak Oyster Bar & Cocktail Lounge	\N	818 10th Ave.	NY	New York	10019	(646) 692-9347	Midtown West	40.7673210000000026	-73.9894729999999896
2333	White Star Bar	\N	230 Brunswick St.	NJ	Jersey City	7302	(201) 653-9234	Jersey City	40.7279515000000032	-74.0500116999999989
2334	White Tiger	\N	601 Vanderbilt Ave.	NY	Brooklyn	11238	(718) 552-2272	Prospect Heights	40.6794845999999879	-73.9678990000000027
2335	Whitman & Bloom	\N	384 3rd Ave.	NY	New York	10016	(212) 725-4110	Murray Hill	40.7418327999999974	-73.9813998999999995
2336	Whitman's	\N	406 E 9th St.	NY	New York	10009	(212) 228-8011	East Village	40.7278172999999981	-73.9844375999999926
2337	The Wicked Monk	\N	9510 3rd Ave.	NY	Brooklyn	11209	(347) 497-5152	Bay Ridge	40.6171183000000013	-74.0339254000000011
2338	Wicked Willy's	\N	149 Bleecker St.	NY	New York	10012	(212) 254-8592	Greenwich Village	40.7283880999999965	-73.999298600000003
2339	The Wild Rover Pub	\N	7103 Park Ave.	NJ	Guttenberg	7093	(201) 662-9453	Guttenberg	40.7933933999999994	-74.0028728999999998
2340	Wilfie & Nell	\N	228 W 4th St.	NY	New York	10014	(212) 242-2990	West Village	40.7340486000000013	-74.003154600000002
2341	The Wilky	\N	108 Patchen Ave.	NY	Brooklyn	11221	(718) 484-7458	Bedford Stuyvesant	40.6880000000000024	-73.9273560000000032
2342	William Hallet	\N	36-10 30th Ave.	NY	Astoria	11106	(718) 269-3443	Astoria	40.7646773000000024	-73.9171280999999993
2343	Willie McBrides	\N	616 Grand St.	NJ	Hoboken	7030	(201) 610-1522	Hoboken	40.7451482000000027	-74.0346878000000004
2344	Windfall Restaurant	\N	23 W 39th St.	NY	New York	10018	(212) 869-4606	Midtown West	40.752308499999998	-73.9840015999999991
2345	Windies Restaurant & Bar	\N	21606 Jamaica Ave.	NY	Queens Village	11428	(718) 736-9414	Queens Village	40.7173687000000015	-73.7384838999999914
2346	The Windsor	\N	410 Park Ave. S	NY	New York	10016	(646) 380-5301	Chelsea	40.743711900000001	-73.9841428999999948
2347	Windy City Ale House	\N	7915 3rd Ave.	NY	Brooklyn	11209	(718) 630-5700	Bay Ridge	40.6280631000000128	-74.0289018999999939
2348	Wine Escape	\N	405 W 44th St.	NY	New York	10036	(212) 262-7000	Hell's Kitchen	40.7600791999999998	-73.992098900000002
2349	Wine Time	\N	40-45 235th St.	NY	Douglaston	11363	(347) 502-7274	Little Neck	40.768811399999997	-73.7488448999999946
2350	Wine:30	\N	41 E 30th St.	NY	New York	10016	(212) 481-0197	Midtown East	40.7449711999999877	-73.9837174000000175
2351	Wine:34	\N	127 E 34th St.	NY	New York	10016	(212) 213-1700	Murray Hill	40.7467287999999996	-73.9799579999999963
2352	Wined Up	\N	913 Broadway, 2nd FLOOR	NY	New York	10010	(212) 673-6333	Flatiron	40.739627200000001	-73.9898589999999956
2353	The Winery at St George	\N	1715 E Main St.	NY	Mohegan Lake	10547	(914) 455-4272	Mohegan Lake	41.3248231999999973	-73.8504533999999921
2354	The Winslow	\N	243 E 14th St.	NY	New York	10003	(212) 777-7717	Gramercy	40.7327780000000033	-73.9852113000000031
2355	Wise Men	\N	355 Bowery	NY	New York	10003	(646) 590-4244	NoHo	40.7266706999999997	-73.9913719999999984
2356	Wogies	\N	39 Greenwich Ave.	NY	New York	10014	(212) 229-2171	West Village	40.7353631999999877	-74.0006638999999922
2357	Wolf and Deer	\N	74 5th Ave.	NY	Brooklyn	11217	(718) 398-3181	Park Slope	40.6807506000000032	-73.9777421000000004
2358	Wondee Siam	\N	792 9th Ave.	NY	New York	10019	(212) 459-9057	Hell's Kitchen	40.7649602999999985	-73.9874930000000006
2359	Woodbines	\N	47-10 Vernon Blvd.	NY	Queens	11101	(718) 361-8488	Long Island City	40.7452285000000032	-73.9535010999999969
2360	Woodrow's	\N	43 Murray St.	NY	New York	10007	(212) 676-0300	TriBeCa	40.7141524999999973	-74.0091063999999932
2361	Woodwork	\N	583 Vanderbilt Ave.	NY	Brooklyn	11238	(718) 857-5777	Prospect Heights	40.680256	-73.967620299999993
2362	Woody McHale's	\N	234 West 14th St.	NY	New York	10011	(212) 206-0430	West Village	40.7391126999999997	-74.0015681999999941
2363	Woorijip Authentic Korean Food	\N	12 W 32nd St.	NY	New York	10001	(212) 244-1115	Midtown West	40.7473604999999992	-73.9865695000000017
2364	World Bar	\N	845 United Nations Plz	NY	New York	10017	(212) 935-9361	Midtown East	40.7525280999999993	-73.9676948999999979
2365	The Wren	\N	344 Bowery	NY	New York	10012	(212) 388-0148	East Village	40.7263220000000032	-73.9922009999999943
2366	The Writing Room	\N	1703 2nd Ave.	NY	New York	10128	(212) 335-0075	Upper East Side	40.7794475999999975	-73.9509231999999912
2367	The Wu Room	\N	93 Bowery	NY	New York	10002	323-309-9657	Chinatown	40.717010700000003	-73.9951884999999976
2368	WXOU Radio Bar	\N	558 Hudson St.	NY	New York	10014	(212) 206-0381	West Village	40.7354253999999969	-74.0058458999999971
2369	Xixa	\N	241 S 4th St.	NY	Brooklyn	11211	(718) 388-8860	Williamsburg - South Side	40.7104475999999877	-73.9585060999999939
2370	Yakiniku West	\N	218 E 9th St.	NY	New York	10003	(212) 979-9238	East Village	40.7295785000000024	-73.9885591999999974
2371	Yakitori Totto	\N	251 W 55th St.	NY	New York	10019	(212) 245-4555	Midtown West	40.7653005000000022	-73.9831453999999979
2372	Yankee Stadium	\N	1 E 161st St.	NY	Bronx	10451	(718) 293-4300	Concourse	40.8288189000000017	-73.9265690999999947
2373	Yard House	\N	237 Market St.	NY	Yonkers	10710	(914) 375-9273	Yonkers	40.9659878000000006	-73.8572934000000032
2374	Yerba Buena	\N	23 Ave. A	NY	New York	10009	(212) 529-2919	East Village	40.7229529999999968	-73.9860743999999926
2375	Yerba Buena Perry	\N	1 Perry St.	NY	New York	10014	(212) 620-0808	West Village	40.7359794999999991	-74.0010139999999978
2376	YN	\N	227 Mott St.	NY	New York	10012	(212) 226-3330	Nolita	40.7225042999999971	-73.9953768000000025
2377	Yopparai	\N	151 Rivington St.	NY	New York	10002	(212) 777-7253	Lower East Side	40.7191249999999982	-73.9857319999999987
2378	YOTEL New York	\N	570 10th Ave.	NY	New York	10036	(646) 449-7700	Midtown West	40.7591567999999995	-73.9954560999999984
2379	Yuca Bar & Restaurant	\N	111 Ave. A	NY	New York	10009	(212) 982-9533	East Village	40.7262058999999965	-73.9836212000000017
2380	Zagara Wine Bar & Ristorante	\N	216 7th Ave.	NY	New York	10011	(646) 490-8801	Chelsea	40.7438065999999992	-73.9962409999999977
2381	Zagursky's Bar & Grill	\N	43 Mount Pleasant Ave.	NJ	Whippany	7981	(973) 386-1412	Whippany	40.8238910000000033	-74.4196989999999943
2382	Zamaan Hookah Bar and Restaurant	\N	349 Broadway	NY	Brooklyn	11211	(718) 599-7979	South Williamsburg	40.7078778999999997	-73.955793099999994
2383	Zebu Grill Restaurant	\N	305 E 92nd St.	NY	New York	10128	(212) 426-7500	Upper East Side	40.7816315999999972	-73.948327699999993
2384	Zengo	\N	622 3rd Ave.	NY	New York	10017	(212) 808-8110	Murray Hill	40.7497506999999999	-73.9756082999999904
2385	Zenkichi	\N	77 N 6th St.	NY	New York	11230	(718) 388-8985	Williamsburg - North Side	40.7189722000000032	-73.9608300999999955
2386	Zeppelin Hall Biergarten and Restaurant	\N	88 Liberty View Dr.	NJ	Jersey City	7305	(201) 721-8888	Jersey City	40.7151159000000007	-74.0466610999999943
2387	Zero Otto Nove	\N	15 W 21st St.	NY	New York	10010	(212) 242-0899	Flatiron	40.7408622000000022	-73.9915326999999934
2388	Zest	\N	249 Broome St.	NY	New York	10002	(212) 677-3158	Lower East Side	40.7178538000000003	-73.9899604000000011
2390	Zinc Bar	\N	82 W 3rd St.	NY	New York	10012	(212) 477-9462	Greenwich Village	40.7296714000000009	-73.9989913000000001
2391	Zio Ristorante	\N	17 W 19th St.	NY	New York	10011	(212) 352-1700	Flatiron	40.7396687000000028	-73.9924795000000017
2392	Zombie Hut	\N	273 Smith St.	NY	Brooklyn	11231	(718) 875-3433	Gowanus	40.6825498999999979	-73.9930963999999989
2393	Zona Rosa	\N	571 Lorimer St.	NY	Brooklyn	11211	(917) 324-7423	Williamsburg - North Side	40.7139248000000009	-73.9495934999999918
2394	Zum Schneider	\N	107 Ave. C	NY	New York	10009	(212) 598-1098	East Village	40.7242198000000073	-73.9789571000000024
2395	Zutto Japanese American Pub	\N	77 Hudson St.	NY	New York	10013	(212) 233-3287	TriBeCa	40.7184743999999981	-74.009099699999993
2396	ZZ's Clam Bar	\N	169 Thompson St.	NY	New York	10012	(212) 254-3000	Greenwich Village	40.7276831000000001	-74.000454199999993
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flatironschool
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Name: specials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flatironschool
--

SELECT pg_catalog.setval('specials_id_seq', 3787, true);


--
-- Name: venues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flatironschool
--

SELECT pg_catalog.setval('venues_id_seq', 2396, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: specials specials_pkey; Type: CONSTRAINT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY specials
    ADD CONSTRAINT specials_pkey PRIMARY KEY (id);


--
-- Name: venues venues_pkey; Type: CONSTRAINT; Schema: public; Owner: flatironschool
--

ALTER TABLE ONLY venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

