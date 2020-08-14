//Labels

cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
//import delimited db_questionnaire_v7, delimiter(";")
//net install fillmissing, from(https://fintechprofessor.com) replace
//supprimer les 35 premières observations, contiennent de la religion
drop if _n <= 35
drop id_db_religion

//Pas de contenu pour id_db_pays_origine??
drop id_db_pays_origine
//Question does not exist
drop piv_q3_b
ren piv_q3_a piv_q3

//variables socio-démographiques, analyse

//age
replace id_db_age=. if id_db_age==0
#delimit ;
label define labage 
1 "<14" 
2 "14-19"
3 "20-25"
4 "26-30"
5 "31-35"
6 "36-40"
7 "41-45"
8 "46-50" 
9 "51-55" 
10 "56-60"
11 "61-65"
12 "66-70"
13 "71-75"
14 "76-80"
15 "81-85"
16 "86-90"
17 ">90"
18 "NA"
;
#delimit cr
label values id_db_age labage
tab id_db_age

//Job of people
replace id_db_profession=. if id_db_profession==0
#delimit ;
label define labjob 
1 "Craftsmen" 
2 "Trade, entrepreneurs"
3 "Higher intellectual professions"
4 "Intermediate"
5 "Employees"
6 "Workers"
7 "Retirees"
8 "Other without professional activity" 
9 "Farmers" 
10 "Other"
11 "None"
12 "NA"
;
#delimit cr
label values id_db_profession labjob
tab id_db_profession

//Look at the job of young people, need label for job
tab id_db_profession id_db_age if id_db_age==3, column

//Pays residence
replace id_db_pays_residence=. if id_db_pays_residence==0
tab id_db_profession
#delimit ;
label define labpays
1 "Afghanistan" 
2 "Aland Islands"
4 "Algeria"
10 "Antigua and Barbuda"
11 "Argentina"
13 "Aruba"
14 "Australia" 
22 "Belgium" 
41 "Canada"
51 "Congo"
53 "Cook Islands"
57 "Cuba"
72 "Ethiopia"
76 "Finland"
77 "France"
83 "Georgia"
104 "India"
111 "Italy"
137 "Mali"
159 "New Zealand"
178 "Poland"
182 "Reunion"
197 "Senegal"
201 "Singapore"
210 "Spain"
227 "Tunisia"
228 "Turkey"
235 "UK"
237 "US"
238 "Uruguay"
240 "Vanuatu"
249 "Zimbabwe"
250 "NA"
;
#delimit cr
label values id_db_pays_residence labpays
tab id_db_pays_residence

//Gender
replace id_db_gender=. if id_db_gender==0
#delimit ;
label define labelgender
1 "men"
2 "women"
3 "other"
4 "prefer not to say"
;
#delimit cr
label values id_db_gender labelgender
tab id_db_gender

//City
replace id_db_density=. if id_db_density==0
#delimit ;
label define labdensity
1 "Rural area, village" 
2 "Small city"
3 "Average-size city"
4 "Suburbs of large city"
5 "Large city"
6 "NA"
;
#delimit cr
label values id_db_density labdensity
tab id_db_density

//Studies
replace id_db_study=. if id_db_study==0
#delimit ;
label define labstudy
1 "Primary School" 
2 "High school"
3 "College"
4 "Bachelor's degree "
5 "Master's degree "
6 "PhD or equivalent  "
7 "NA"
;
#delimit cr
label values id_db_study labstudy
tab id_db_study

//Field
replace id_db_field=. if id_db_field==0
#delimit ;
label define labfield
1 "Business and Economics" 
2 "Accounting and Finance"
3 "Business and Management"
4 "Economics and Econometrics"
5 "Life sciences"
6 "Agriculture and Forestry"
7 "Biological Sciences" 
9 "Veterinary Science" 
10 "Art and humanities"
11 "Archeology"
12 "Architecture"
13 "Art, Performing Arts and Design"
14 "History, Philosophy and Theology"
15 "Languages, Literature and Linguistics"
16 "Engineering & technology"
17 "Chemical Engineering"
18 "Civil Engineering"
19 "Electrical & Electronic"
20 "General Engineering"
21 "Mechanical & Aerospace"
22 "Physical sciences"
23 "Chemistry"
24 "Geology, Environmental, Earth & Marine Sciences"
25 "Mathematics & Statistics"
26 "Physics & Astronomy"
27 "Social sciences"
28 "Communication & Media Studies"
29 "Geography"
30 "Politics & International Studies"
31 "Sociology"
32 "Computer science"
33 "Education"
34 "Law"
35 "Clinical, pre-clinical and Health"
36 "Medicine and Dentistry"
37 "Other Health"
38 "Psychology"
39 "Other"
40 "NA"
;
#delimit cr
label values id_db_field labfield
tab id_db_field
//Pie chart, could try to put together fields...ask Nathalie and André


//Revenu
//Besoin de comparer à la monnaie utilisée, prendre en compte le niveau de vie dans le pays?
replace id_db_revenu=. if id_db_revenu==0
#delimit ;
label define labrevenu
1 "0-1000" 
2 "1.001-2.000"
3 "2.001-3.000"
4 "3.001-4.000"
5 "4.001-5.000"
6 "5.001-6.000"
7 "6.001-7.000"
8 "7.001-8.000"
9 "8.001-9.000"
10 "9.001-10.000"
11 ">10.000"
12 "NA"
;
#delimit cr
label values id_db_revenu labrevenu
tab id_db_revenu

//Currency
replace id_db_currency=. if id_db_currency==0
#delimit ;
label define labcurrency
1 "Afghani" 
3 "Baht"
5 "Birr"
8 "Cedi"
19 "Algerian Dinar"
21 "Iraqi Dinar"
28 "Moroccan Dirham"
30 "Australian Dollar"
34 "Canadian Dollar"
49 "New-Zealand Dollar"
52 "US Dollar"
56 "Euro"
61 "CFA Franc"
64 "Congolese Franc"
69 "Gourde"
93 "Pound Sterling"
96 "Turkish Lira"
104 "Nafka"
122 "Omani Rial"
127 "Saudi Riyal"
130 "Indian Rupee"
135 "Seychelles Rupee"
136 "Sri Lanka Rupee"
154 "Yen"
156 "Zloty"
157 "NA"
;
#delimit cr
label values id_db_currency labcurrency
tab id_db_currency

//Kid
replace id_db_kid=. if id_db_kid==0
#delimit ;
label define labkid 
1 "0"
2 "1"
3 "2"
4 "3"
5 "4"
6 "5"
7 "6"
8 "7"
9 "8"
10 "9"
11 "10+"
12 "NA"
;
#delimit cr
label values id_db_kid labkid
tab id_db_kid

//Statutm
replace id_db_statutm=. if id_db_statutm==0
#delimit ;
label define labstatutm 
2 "Married"
3 "Common-law relationship"
4 "Divorced, seperated"
5 "Widowed"
6 "Single"
7 "NA"
;
#delimit cr
label values id_db_statutm labstatutm
tab id_db_statutm

//Trip
replace id_db_trip=. if id_db_trip==0
replace id_db_trip=id_db_trip-1
#delimit ;
label define labtrip
70 "70+"
71 "NA"
;
#delimit cr
label values id_db_trip labtrip
tab id_db_trip

//Person
replace id_db_person=. if id_db_person==0
#delimit ;
label define labperson
10 "10+"
11 "NA"
;
#delimit cr
label values id_db_person labperson
tab id_db_person

//Create dummy variable: finished, unfinished
gen finish=. 
replace finish=2 if id_db_density>=1&id_db_density<=6
replace finish=0 if q1!="a"&q1!="b"&q1!="c"
replace finish=1 if finish==.
tab finish
label define labfinish 0 "didn't start" 1 "unfinished" 2 "finished"
label values finish labfinish
tab finish

//Create variable with countries: France, Italy,Others and NA
gen country_of_residency=.
replace country_of_residency=0 if id_db_pays_residence==77
replace country_of_residency=1 if id_db_pays_residence==111
replace country_of_residency=2 if id_db_pays_residence!=77&id_db_pays_residence!=111&finish!=0&id_db_pays_residence!=250
replace country_of_residency=3 if id_db_pays_residence==250
#delimit ;
label define labv2pays
0 "France"
1 "Italy"
2 "Others"
3 "NA"
;
#delimit cr
label values country_of_residency labv2pays

//Regrouper mou et durs
gen moudur=.
replace moudur=0 if id_db_field<=2
replace moudur=0 if id_db_field==4
replace moudur=0 if id_db_field==5
replace moudur=0 if id_db_field==7
replace moudur=0 if id_db_field==12
replace moudur=0 if id_db_field>15&id_db_field<24
replace moudur=0 if id_db_field==25
replace moudur=0 if id_db_field==26
replace moudur=0 if id_db_field==32

replace moudur=2 if id_db_field==39
replace moudur=3 if id_db_field==40

replace moudur=1 if id_db_field==3
replace moudur=1 if id_db_field==6
replace moudur=1 if id_db_field>7&id_db_field<12
replace moudur=1 if id_db_field>12&id_db_field<=15
replace moudur=1 if id_db_field==24
replace moudur=1 if id_db_field>26&id_db_field<32
replace moudur=1 if id_db_field>32&id_db_field<39

#delimit ;
label define labmou
0 "Hard Science"
1 "Soft Science"
2 "Others"
3 "NA"
;
#delimit cr
label values moudur labmou
tab moudur

//Cross graph

//Changement date
generate double newdate = clock(date_questionnaire, "YMDhms")
format newdate %td
tab newdate
gen date = dofc(newdate)
format date %tdM_D_CY
tab date
format date %9.0g
gen grdate=.
replace grdate=1 if date<=22045
replace grdate=2 if date>=22046&date<22060
replace grdate=3 if date>=22060
#delimit ;
label define labgrdate
1 "20/04-11/05" 
2 "11/05-2/06" 
3 "2/06-22/05"
;
#delimit cr
label values grdate labgrdate
tab grdate

//Rename variables 
ren id_db_currency currency
ren id_db_density density
ren id_db_trip trip
ren id_db_revenu income
ren id_db_person household_size
ren id_db_profession job
ren id_db_pays_residence country
ren id_db_field field
ren id_db_study study
ren id_db_kid kid
ren id_db_statutm marital_status
ren id_db_gender gender
ren id_db_age age

//Labéliser les variables
label variable currency "currency"
label variable density "density"
label variable trip "trip"
label variable income "income"
label variable household_size "household size"
label variable job "job"
label variable field "field"
label variable study "study"
label variable kid "kid"
label variable marital_status "marital status"
label variable gender "gender"
label variable age "age"
label var country "country of residency"

//Labéliser les questions FIRST PART
label var q1 "Do you feel concerned by the disappearing of human beings?"
replace q1="No" if q1=="a"
replace q1="Yes but it has no consequences" if q1=="b"
replace q1="Yes, it has consequences" if q1=="c"

label var att_q1_a "No"
label var att_q1_b "Yes but it has no consequences"
label var att_q1_c "Yes, it has consequences"

label var q2_r1 "Would you use a vaccine which could cause the disappearing of humanity (1/100 billion)?"
label var q2_r2 "Would you use a vaccine which could cause the disappearing of humanity (1/10 billion)?"
label var q2_r3 "Would you use a vaccine which could cause the disappearing of humanity (1/1 billion)?"
label var q2_r4 "Would you use a vaccine which could cause the disappearing of humanity (1/100 million)?"
label var q2_r5 "Would you use a vaccine which could cause the disappearing of humanity (1/10 million)?"

label var att_q2_r1_a "How many respondents would use a vaccine if it could make the humanity disappear (1/1 million)?"
label var att_q3_r1_b "How many respondents would not use a vaccine if it could kill them (1/1 million)?"
label var att_q3_r2_a "How many respondents would use a vaccine if it could kill them (1/300 000)?"
label var att_q3_r2_b "How many respondents would not use a vaccine if it could kill them (1/300 000)?"
label var att_q3_r3_a "How many respondents would use a vaccine if it could kill them (1/100 000)?"
label var att_q3_r3_b "How many respondents would not use a vaccine if it could kill them (1/100 000)?"
label var att_q3_r4_a "How many respondents would use a vaccine if it could kill them (1/10 000)?"
label var att_q3_r4_b "How many respondents would not use a vaccine if it could kill them (1/10 000)?"
label var att_q3_r5_a "How many respondents would use a vaccine if it could kill them (1/1 000)?"
label var att_q3_r5_b "How many respondents would not use a vaccine if it could kill them (1/1 000)?"

/*ren att_q1_a Expectations_Q1_a
ren att_q1_b Expectations_Q1_b
ren att_q1_c Expectations_Q1_c
ren att_q2_r1_a Expectations_Q2_r1_a
ren att_q2_r1_b Expectations_Q2_r1_b
ren att_q2_r2_a Expectations_Q2_r2_a
ren att_q2_r2_b Expectations_Q2_r2_b
ren att_q2_r3_a Expectations_Q2_r3_a
ren att_q2_r3_b Expectations_Q2_r3_b
ren att_q2_r4_a Expectations_Q2_r4_a
ren att_q2_r4_b Expectations_Q2_r4_b
ren att_q2_r5_a Expectations_Q2_r5_a
ren att_q2_r5_b Expectations_Q2_r5_b*/

foreach var of varlist q2_r1-q2_r5{
replace `var'="Yes" if(`var'=="a")
replace `var'="No" if(`var'=="b")
} 

label var q3_r1 "Would you use a vaccine if it could kill you (1/1 million)?"
label var q3_r2 "Would you use a vaccine if it could kill you (1/300 00)?"
label var q3_r3 "Would you use a vaccine if it could kill you (1/100 00)?"
label var q3_r4 "Would you use a vaccine if it could kill you (1/10 00)?"
label var q3_r5 "Would you use a vaccine if it could kill you (1/1 000)?"
label var q3_r5 "Would you use a vaccine if it could kill you (1/1 000)?"

foreach var of varlist q3_r1-q3_r5{
replace `var'="Yes" if(`var'=="a")
replace `var'="No" if(`var'=="b")
} 

label var att_q3_r1_a "How many respondents would use a vaccine if it could kill them (1/1 million)?"
label var att_q3_r1_b "How many respondents would not use a vaccine if it could kill them (1/1 million)?"
label var att_q3_r2_a "How many respondents would use a vaccine if it could kill them (1/300 000)?"
label var att_q3_r2_b "How many respondents would not use a vaccine if it could kill them (1/300 000)?"
label var att_q3_r3_a "How many respondents would use a vaccine if it could kill them (1/100 000)?"
label var att_q3_r3_b "How many respondents would not use a vaccine if it could kill them (1/100 000)?"
label var att_q3_r4_a "How many respondents would use a vaccine if it could kill them (1/10 000)?"
label var att_q3_r4_b "How many respondents would not use a vaccine if it could kill them (1/10 000)?"
label var att_q3_r5_a "How many respondents would use a vaccine if it could kill them (1/1 000)?"
label var att_q3_r5_b "How many respondents would not use a vaccine if it could kill them (1/1 000)?"

label var q4 "What do you think is the probability that you would die one day from the coronavirus?"

//Labéliser les questions SECOND PART
label var pii_q1_a "Village A"
label var pii_q1_b "Village B"
label var pii_q2_a "Unusefull question"
label var pii_q2_b "Unusefull question"
label var pii_q3_a "Village A"
label var pii_q3_b "Village B"
label var pii_q4_a "Village A"
label var pii_q4_b "Village B"
label var pii_q4_c "Village C"
label var pii_q5_a "Village C"
label var pii_q5_b "Village D"
label var pii_q6_a "Village C"
label var pii_q6_b "Village D"

label var pii_q7 "Which road(s) would you choose?"
replace pii_q7="Always road E" if(pii_q7=="a")
replace pii_q7="E 6 months, F 6 months" if(pii_q7=="b")
replace pii_q7="E 8 months, F 4 months" if(pii_q7=="c")
replace pii_q7="Other" if(pii_q7=="d")

label var pii_q8 "Which road(s) would you choose?"
replace pii_q8="Always road E" if(pii_q8=="a")
replace pii_q8="Always road F" if(pii_q8=="b")
replace pii_q8="E 6 months, F 6 months" if(pii_q8=="c")
replace pii_q8="Other" if(pii_q8=="d")

//Labéliser les questions PART III
label var piv_q1_a "% of the monthly income over €1,000 (nothing below)"
label var piv_q1_b "% of the monthly income over €2,000 (nothing below)" 
label var piv_q2_a "% of the monthly income over €1,000 (nothing below)"
label var piv_q2_b "% of the monthly income over €2,000 (nothing below)" 

//Regroupe moins de 14 avec 14-19
gen Age=.
replace Age=1 if age<3
replace Age=2 if age==3
replace Age=3 if age==4
replace Age=4 if age==5|age==6
replace Age=5 if age==7|age==8
//replace Age=6 if age==9|age==10
replace Age=6 if age>9&age<18
replace Age=7 if age==18
#delimit ;
label define labage2 
1 "0-19"
2 "20-25"
3 "26-30"
4 "31-40"
5 "41-50"
6 "+51" 
7 "NA"
;
#delimit cr
label values Age labage2
tab Age

//label kids
gen Kid=.
replace Kid=0 if kid==1
replace Kid=1 if kid==2
replace Kid=2 if kid==3
replace Kid=3 if kid==4
replace Kid=4 if kid>4&kid<12
replace Kid=5 if kid==12
#delimit ;
label define kidlabel
0 "0 child"
1 "1 child"
2 "2 children"
3 "3 children"
4 "4+ children"
5 "NA" 
;
#delimit cr
label values Kid kidlabel
tab Kid

//label marital status
gen Marital_Status=.
replace Marital_Status=2 if marital_status==2
replace Marital_Status=3 if marital_status==3
replace Marital_Status=4 if marital_status==4|marital_status==5
replace Marital_Status=5 if marital_status==6
replace Marital_Status=6 if marital_status==7

#delimit ;
label define Statutlab 
2 "Married"
3 "Common-law relationship"
4 "Divorced, seperated widowed"
5 "Single"
6 "NA"
;
#delimit cr
label values Marital_Status Statutlab
tab Marital_Status

//Label income
gen Income=.
replace Income=1 if income==1
replace Income=2 if income==2
replace Income=3 if income==3
replace Income=4 if income==4
replace Income=5 if income==5
replace Income=6 if income>5&income<12
replace Income=7 if income==12
#delimit ;
label define labincome
1 "0-1000" 
2 "1.001-2.000"
3 "2.001-3.000"
4 "3.001-4.000"
5 "4.001-5.000"
6 "+5.001"
7 "NA"
;
#delimit cr
label values Income labincome
tab Income

//People dropping survey
net install fillmissing, from(https://fintechprofessor.com) replace
gen dropping=.
replace dropping=1 if q1!="No"&q1!="Yes but it has no consequences"&q1!="Yes, it has consequences"
replace dropping=2 if q2_r2!="No"&q2_r2!="Yes"&dropping!=1
replace dropping=3 if q3_r2!="No"&q3_r2!="Yes"&dropping!=1&dropping!=2
replace dropping=4 if att_q1_a==.&dropping!=1&dropping!=2&dropping!=3
replace dropping=5 if pii_q1_a==.&dropping!=1&dropping!=2&dropping!=3&dropping!=4
replace dropping=6 if pii_q5_a==.&dropping!=1&dropping!=2&dropping!=3&dropping!=4&dropping!=5
replace dropping=7 if (pii_q7!="Always road E"&pii_q7!="E 6 months, F 6 months"&pii_q7!="E 8 months, F 4 months"&pii_q7!="Other")&dropping!=1&dropping!=2&dropping!=3&dropping!=4&dropping!=5&dropping!=6
replace dropping=8 if (pii_q8!="Always road E"&pii_q8!="E 6 months, F 6 months"&pii_q8!="EAlways road F"&pii_q8!="Other")&dropping!=1&dropping!=2&dropping!=3&dropping!=4&dropping!=5&dropping!=6&dropping!=7
replace dropping=9 if piv_q1_a==.&dropping!=1&dropping!=2&dropping!=3&dropping!=4&dropping!=5&dropping!=6&dropping!=7&dropping!=8
replace dropping=10 if age==.&dropping!=1&dropping!=2&dropping!=3&dropping!=4&dropping!=5&dropping!=6&dropping!=7&dropping!=8&dropping!=9

tab dropping

#delimit ;
label define labdrop
1 "drop before Q1" 
2 "drop before the end of Q2"
3 "drop before the end of Q3"
4 "drop before the expectations of Q1"
5 "drop before II-Q1"
6 "Drop before II-Q5"
7 "Drop before II-Q7"
8 "Drop before II-Q8"
9 "Drop before III-Q1"
10 "Drop before socio-demographic questions"
;
#delimit cr
label values dropping labdrop
tab dropping

gen dropPartI=dropping if dropping<5
#delimit ;
label define labdropI
1 "drop before Q1" 
2 "drop before the end of Q1"
3 "drop before the end of Q3"
4 "drop before the expectations of Q1"
;
#delimit cr
label values dropPartI labdropI

//Qualité SD
gen qualité_SD=.
replace qualité_SD=0 if age==.&gender==.&marital_status==.&kid==.&study==.&field==.&country==.&job==.&household_size==.&income==.&trip==.&density==.&currency==.
replace qualité_SD=1 if (age==.|gender==.|marital_status==.|kid==.|study==.|field==.|country==.|job==.|household_size==.|income==.|trip==.|density==.|currency==.)&qualité_SD!=0
replace qualité_SD=2 if (age<3&kid==11)|(marital_status==5&age<4)
replace qualité_SD=3 if qualité_SD==.&density!=.
//Changement manuels, gens bizarres
replace qualité_SD=2 if ïid_questionnaire==90|ïid_questionnaire==104

#delimit ;
label define labquali
0 "SD all missing"
1 "SD partly missing" 
2 "Weird/Jokes"
3 "Good"
;
#delimit cr
label values qualité_SD labquali
tab qualité_SD

//Sum att_Q2
gen sum_att_Q2_r1=att_q2_r1_a+att_q2_r1_b
gen sum_att_Q2_r2=att_q2_r2_a+att_q2_r2_b
gen sum_att_Q2_r3=att_q2_r3_a+att_q2_r3_b
gen sum_att_Q2_r4=att_q2_r4_a+att_q2_r4_b
gen sum_att_Q2_r5=att_q2_r5_a+att_q2_r5_b

//Sum att_Q3
gen sum_att_Q3_r1=att_q3_r1_a+att_q3_r1_b
gen sum_att_Q3_r2=att_q3_r2_a+att_q3_r2_b
gen sum_att_Q3_r3=att_q3_r3_a+att_q3_r3_b
gen sum_att_Q3_r4=att_q3_r4_a+att_q3_r4_b
gen sum_att_Q3_r5=att_q3_r5_a+att_q3_r5_b

//Sum att_q1
gen sum_att_Q1=att_q1_a+att_q1_b+att_q1_c

//Sum part II
gen sum_IIQ1=pii_q1_a+pii_q1_b
gen sum_IIQ2=pii_q2_a+pii_q2_b
gen sum_IIQ3=pii_q3_a+pii_q3_b
gen sum_IIQ4=pii_q4_a+pii_q4_b+pii_q4_c

//Verif Part III
tab piv_q1_a
tab piv_q1_b
tab piv_q2_a
tab piv_q2_b
tab piv_q3

//Gens bizarres?
tab ïid_questionnaire if piv_q2_b==99
tab ïid_questionnaire if piv_q2_b==100

rename ïid_questionnaire ID_questionnaire

//Sum errors
gen nbErrQ2=(sum_att_Q2_r1==0)+(sum_att_Q2_r2==0)+(sum_att_Q2_r3==0)+(sum_att_Q2_r4==0)+(sum_att_Q2_r5==0)
gen nbErrQ3=(sum_att_Q3_r1==0)+(sum_att_Q3_r2==0)+(sum_att_Q3_r3==0)+(sum_att_Q3_r4==0)+(sum_att_Q3_r5==0)
gen nbErrTot=nbErrQ2+nbErrQ3+(sum_att_Q1==0)

//Sum errors
gen nbErrpii=(sum_IIQ1==0)+(sum_IIQ2==0)+(sum_IIQ3==0)+(sum_IIQ4==0)

/*
//Personnes qui arrêtent de répondre
//Part I
egen start=count(ID_questionnaire)
egen Q1=count(q1)
egen Q2r1=count(q2_r1)
egen Q2r2=count(q2_r2)
egen Q2r3=count(q2_r3)
egen Q2r4=count(q2_r4)
egen Q2r5=count(q2_r5)
egen Q3r1=count(q3_r1)
egen Q3r2=count(q3_r2)
egen Q3r3=count(q3_r3)
egen Q3r4=count(q3_r4)
egen Q3r5=count(q3_r5)
egen attQ1a=count(att_q1_a)

//part II
egen IIQ1a=count(pii_q1_a)
egen IIQ5a=count(pii_q5_a)
egen IIQ7=count(pii_q7)
egen IIQ8=count(pii_q8)

//part III
egen IIIQ1=count(piv_q1_a)

//Socio demo
egen countage=count(age)
egen countgender=count(gender)
egen countstatus=count(marital_status)
egen countkid=count(kid)
egen countstudy=count(study)
egen countfield=count(field)
egen countcountry=count(country)
egen countjob=count(job)
egen countsize=count(household_size)
egen countincome=count(income)
egen counttrip=count(trip)
egen countdensity=count(density)
egen countcurrency=count(currency)

gen dropping=0 if ID_questionnaire !=.
replace dropping=1 if (q1!="Yes but it has no consequences"&q1!="No"&q1!="Yes, it has consequences")
replace dropping=2 if (q2_r1!="Yes"&q2_r1!="No")
replace dropping=3 if (q3_r1!="Yes"&q3_r1!="No")
*/

histogram dropPartI [fweight = dropPartI], discrete percent ytitle(Percentage) xlabel(, labels labsize(medsmall) angle(forty_five) valuelabel) title(Distribution of respondents who dropped the survey) 


