# ExtremRisk
ID_questionnaire	number of completed questionnaire

Part I
q1	question 1 
q2_r1 	question 2 first answer
q2_r2 	question 2 second answer
q2_r3 	question 2 third answer
q2_r4 	question 2 fourth answer
q2_r5 	question 2 fifth answer
q3_r1 	question 3 first answer
q3_r2 	question 3 second answer
q3_r3 	question 3 third answer
q3_r4 	question 3 fourth answer
q3_r5 	question 3 fifth answer
att_q1_a	expectations question 1 response a
att_q1_b	expectations question 1 response b
att_q1_c	expectations question 1 response c
att_q2_r1_a	expectations question 2 response a
att_q2_r1_b	expectations question 2 response b
(same for att_q2_r2 until att_q2_r5 and att_q3_r1 to att_q3_r5)
q4 	question 4

Part II
pii_q1_a	question 1 response a
pii_q1_b	question 1 response b
pii_q2_a	question 2 response a
pii_q2_b	question 2 response b
(same for q3 until q6)
pii_q7	question 7
pii_q8	question 8

Part III
piv_q1_a	question 1 response a
piv_q1_b 	question 1 response b
piv_q2_a	question 2 response a
piv_q2_b	question 2 response b
piv_q3	question 3

Socio-demographic variables
age	age
gender	gender
marital_status	marital status
kid	number of children in household
study	education level
field 	academic field
country	country of residency
job	main occupation
household_size	size of the household including yourself
income	monthly income
trip	number of weekly trips
density	density of the city in which you live
currency	currency of your monthly income

Simplified socio-demographic variables (regrouped categories because too few observations)
Age	age
Marital_status	marital status
Kid	number of children in household
Income	monthly income

Added variables
finish	completion or not of the survey
country_of_residency	country of residency (either France Italy Others or NA)
moudur	hard or soft science
grdate	date of completion of the survey
dropping	when respondent dropped the survey
qualité_SD	quality of socio-demographic responses
nbErrQ2	number of times the respondent answered 0 for both responses a and b   for Q2
nbErrQ3	number of times the respondent answered 0 for both responses a and b   for Q3
nbErrQ3	number of times the respondent answered 0 for both responses a and b   for all questions Part I
nbErrpii	number of times the respondent answered 0 for all questions in part II

Prelec Index
ResQ1a	Dummy variable, 1 if respondents answered a to Q1, 0 if they did not
ResQ1b	Dummy variable, 1 if respondents answered b to Q1, 0 if they did not
ResQ1c	Dummy variable, 1 if respondents answered c to Q1, 0 if they did not
xQ1a 	frequence of response to Q1 a
xQ1af	frequence of response to Q1 a for women
xQ1ah	frequence of response to Q1 a for men
xQ1am	frequence of response to Q1 a for soft science
xQ1ad	frequence of response to Q1 a for hard science
ScoreResp_Q1a	Score for Q1 a 
ScoreResp_Q1b	Score for Q1 b
ScoreResp_Q1c	Score for Q1 c
SocreResp_Q1	Score for Q1
ScoreResp_Q1f	Score of women for Q1 (input to whole respondents)
ScoreQ1f	Score of women for Q1 (input only to women)
ScoreResp_Q1h	Score of men for Q1 (input to whole respondents)
ScoreQ1h	Score of men for Q1 (input only to men)
ScoreResp_Q1m	Score of soft science for Q1 (input to whole respondents)
ScoreQ1m	Score of soft science for Q1 (input only to soft science)
ScoreResp_Q1d	Score of hard science for Q1 (input to whole respondents)
ScoreQ1d	Score of hard science for Q1 (input only to hard science)
ScoreResp_Q2_r1	Score for Q2 response 1
ScoreResp_Q2_r1f	Score of women for Q2 response 1 (input to whole respondents)
ScoreQ2r1f	Score of women for Q2 response 1 (input only to women)
(Same for men, soft and hard sciences. Same for Q2_r2 until Q2_r5 and Q3_r1 until Q3_r5)

