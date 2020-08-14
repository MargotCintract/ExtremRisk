cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data\data\db_questionnaire_v6.csv"
import delimited db_questionnaire_v7, delimiter(";")

//regarder quand les gens arrêtent de répondre
sum
tab q1 q2_r1,m
tab q1
tab q2_r1
tab q3_r1

gen abandon=0
replace abandon=1 if q1==""
replace abandon=2 if q2_r1==""
replace abandon=3 if pii_q1_a==.
replace abandon=4 if pii_q5_a==.
replace abandon=5 if piv_q1_a==.
replace abandon=6 if id_db_age==.
tab abandon

//enlever les observations avec religion
drop if id_db_religion!=.

//recall the age 

//enlever l'âge = 0. N'a pas de sens
drop if id_db_age==0


//enlever density=0, pas de sens
drop if id_db_density==0

//Combien de personnes ont arrêté de répondre avant la fin?
tab q1
tab id_db_currency

//Quel âge ont les respondents?
tab id_db_age
graph box id_db_age

//Comment ont répondu les respondents à la question att_q1 en fonction de leur réposne à q1
drop if att_q1_a==.
//tab att_q1_a q1 if q1==a
//appliquer code perc des variables
tab percatt_q1_a q1 if q1=="a", column

//pareil pour b
drop if att_q1_b==.
tab percatt_q1_b q1 if q1=="b", column


set dp comma
//Changer la date en valeur numérique
generate double newdate = clock(date_questionnaire, "MDYhm")
format newdate %td
gen date = dofc(newdate)
format date %tdM_D_CY

//Reprendre un format float pour les dates
format date %9.0g 

//date par partie
gen grdate=.
replace grdate=1 if date<=22034
replace grdate=2 if date>=22035&date<22047
replace grdate=3 if date>=22047&date<22060
#delimit ;
label define gr_date
1 "20-30/04" 
2 "1-11/05" 
3 "12-25/05"
;
#delimit cr
label values grdate gr_date
tab grdate

//Reprendre la date en jour
format date %tdD_M_CY
tab date

//Changer la question 1 en float: a=1 b=2 c=3
/*gen q1_f=.
replace q1_f=1 if q1=="a"
replace q1_f=2 if q1=="b"
replace q1_f=3 if q1=="c"*/

//Remplacer les pourcentages des questions en portions de 10 pourcentages
foreach var of varlist att_q1_a-pii_q6_b{
generate perc`var'=1 if(`var'<=10)
replace perc`var'=2 if(`var'>10&`var'<=20)
replace perc`var'=3 if(`var'>20&`var'<=30)
replace perc`var'=4 if(`var'>30&`var'<=40)
replace perc`var'=5 if(`var'>40&`var'<=50)
replace perc`var'=6 if(`var'>50&`var'<=60)
replace perc`var'=7 if(`var'>60&`var'<=70)
replace perc`var'=8 if(`var'>70&`var'<=80)
replace perc`var'=9 if(`var'>80&`var'<=90)
replace perc`var'=10 if(`var'>90&`var'<=100)
} 
foreach var of varlist piv_q1_a-piv_q3_b{
generate perc`var'=1 if(`var'<=2)
replace perc`var'=2 if(`var'>2&`var'<=4)
replace perc`var'=3 if(`var'>4&`var'<=6)
replace perc`var'=4 if(`var'>6&`var'<=8)
replace perc`var'=5 if(`var'>8&`var'<=10)
replace perc`var'=6 if(`var'>10&`var'<=12)

} 

//question 4 pourcentage: en portion - test si a deja cette variable?
generate percq4=0 if(q4<=5)
replace percq4=1 if(q4>5&q4<=10)
replace percq4=2 if(q4>10&q4<=20)
replace percq4=3 if(q4>20&q4<=30)
replace percq4=4 if(q4>30&q4<=40)
replace percq4=5 if(q4>40&q4<=50)
replace percq4=6 if(q4>50&q4<=60)
replace percq4=7 if(q4>60&q4<=70)
replace percq4=8 if(q4>70&q4<=80)
replace percq4=9 if(q4>80&q4<=90)
replace percq4=10 if(q4>90&q4<=100)

#delimit ;
label define labelq4
0 "0-5" 
1 "5-10" 
2 "10-20"
3 "20-30"
4 "30-40"
5 "40-50"
6 "50-60"
7 "60-70"
8 "70-80" 
9 "80-90" 
10 "90-100"
;
#delimit cr
label values percq4 labelq4
tab percq4

//tab q1 dépendant des dates
tab q1 grdate, column

//tab des gens qui n'ont pas arrêté de répondre
tab q1 if id_db_density==0|id_db_density==1|id_db_density==2|id_db_density==3|id_db_density==4|id_db_density==5|id_db_density==6
//tab des gens qui ont arrêté de répondre
tab q1 if id_db_density!=0&id_db_density!=1&id_db_density!=2&id_db_density!=3&id_db_density!=4&id_db_density!=5&id_db_density!=6

//meme tab mais pour la question 4
tab percq4 if id_db_density==0|id_db_density==1|id_db_density==2|id_db_density==3|id_db_density==4|id_db_density==5|id_db_density==6
tab percq4 if id_db_density!=0&id_db_density!=1&id_db_density!=2&id_db_density!=3&id_db_density!=4&id_db_density!=5&id_db_density!=6
//compare the mean
sum percq4 if id_db_density==0|id_db_density==1|id_db_density==2|id_db_density==3|id_db_density==4|id_db_density==5|id_db_density==6
sum percq4 if id_db_density!=0&id_db_density!=1&id_db_density!=2&id_db_density!=3&id_db_density!=4&id_db_density!=5&id_db_density!=6

//tableau mean q1 bis
mean(att_q1_a)
mean(att_q1_b)
mean(att_q1_c)

//Genre
tab id_db_gender
drop if id_db_gender==0
tab id_db_gender

#delimit ;
label define labelgender
1 "men"
2 "women"
3 "other"
4 "prefer not to say"
;
#delimit cr
label values id_db_gender labelgender

//Supp toutes les var qui sont pas de France ou d'Italie
drop if id_db_pays_residence!=77&id_db_pays_residence!=111
#delimit ;
label define labcountry
77 "France"
111 "Italy"
;
#delimit cr
label values id_db_pays_residence labcountry
tab q1 id_db_pays_residence, column

tab percatt_q1_a id_db_pays_residence, column

//analyse de la q1 en fonction du pays (france ou Italy) et du genre (men ou women)
drop if id_db_gender!=1&id_db_gender!=2
table percatt_q1_a id_db_pays_residence id_db_gender, contents(freq)
table att_q1_a id_db_pays_residence id_db_gender, contents(freq)

//means for a,b,c question1
table q1 id_db_pays_residence id_db_gender, contents(freq)
bysort id_db_pays_residence id_db_gender: sum att_q1_a
bysort id_db_pays_residence id_db_gender: sum att_q1_b
bysort id_db_pays_residence id_db_gender: sum att_q1_c

//renommer variables pii_q1_a et pii_q1_b
ren pii_q1_a Q5a
ren pii_q1_b Q5b
//graph box Q5
graph box Q5a Q5b
graph box pii_q2_a pii_q2_b
sum Q5a pii_q2_a, detail
sum Q5b pii_q2_b, detail

//meme chose avec pii q3
graph box pii_q3_a pii_q3_b
//Comparaison q1 et q3
graph box pii_q3_a Q5a pii_q3_b Q5b

//des gens ont arrêté le survey entre q1 et q3?
tab Q5a
tab pii_q3_b

//repartition des coryances pour q1 dependant de la réponse donnée
gr box att_q1_a, over(q1)
gr box att_q1_b, over(q1)
gr box att_q1_c, over(q1)

tab id_db_age
histogram id_db_age if id_db_pays_residence==77|id_db_pays_residence==11, by(id_db_pays_residence) discrete

//ce que les gens répondent à q1 est indépendant de la densité à ce qu'ils pensent que la population va répondre
tab id_db_density q1,m all

//regarder si la somme q5 fait 100
gen test= pii_q1_a + pii_q1_b
tab test

