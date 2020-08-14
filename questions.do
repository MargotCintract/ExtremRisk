//Questions

cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data\data\db_questionnaire_v6.csv"
import delimited db_questionnaire_v7, delimiter(";")

set dp comma
//Question 1
tab q1
tab att_q1_a
tab att_q1_b
tab att_q1_c

graph box att_q1_a att_q1_b att_q1_c, ytitle("Percentage of responses' expectation") title("Expectation for the responses to Q1 (in perc)")
graph box att_q1_a att_q1_b att_q1_c if finish==0, ytitle("Percentage of responses' expectation") title("Expectation for the responses to Q1 (in perc)")
graph box att_q1_a att_q1_b att_q1_c if finish==1, ytitle("Percentage of responses' expectation") title("Expectation for the responses to Q1 (in perc)")

graph box att_q1_a, over(q1, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph box att_q1_b, over(q1, label(labsize(small))) ytitle(Expectations for the response Yes without consequences) title(Expectations for the response -Yes without consequences-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph box att_q1_c, over(q1, label(labsize(small))) ytitle(Expectations for the response Yes with consequences) title(Expectations for the response -Yes with consequences-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))

//Bias of dropping survey Q1
tab q1 if finish==0
tab q1 if finish==1
graph box att_q1_a att_q1_b att_q1_c if finish==1, ytitle("Percentage of responses' expectation") title("Expectation for the responses to Q1 (finished)")
graph box att_q1_a att_q1_b att_q1_c if finish==0, ytitle("Percentage of responses' expectation") title("Expectation for the responses to Q1 (unfinished)")


//Question 2
tab q2_r1
tab q2_r2
tab q2_r3
tab q2_r4
tab q2_r5
graph pie, over(q2_r1) title("Responses to Q2 R1") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q2_r2) title("Responses to Q2 R2") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q2_r3) title("Responses to Q2 R3") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q2_r4) title("Responses to Q2 R4") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q2_r5) title("Responses to Q2 R5") cw plabel(_all percent, color(white) size(medium)) 
//Expectation
graph box att_q2_r1_a att_q2_r2_a att_q2_r3_a att_q2_r4_a att_q2_r5_a, title("Expectations for response a")
sum att_q2_r1_a att_q2_r2_a att_q2_r3_a att_q2_r4_a att_q2_r5_a
graph bar (mean) att_q2_r1_a (mean) att_q2_r1_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R1")
graph bar (mean) att_q2_r2_a (mean) att_q2_r2_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R2")
graph bar (mean) att_q2_r3_a (mean) att_q2_r3_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R3")
graph bar (mean) att_q2_r4_a (mean) att_q2_r4_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R4")
graph bar (mean) att_q2_r5_a (mean) att_q2_r5_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R5")

//What people expect depending on their response:
graph box att_q2_r1_a, over(q2_r1, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))


//See diff btw soft and hard
graph pie if moudur==0, over(q2_r1) plabel(_all percent, color(white) size(large)) title("Responses to Q2 R1 from the hard sciences")
graph pie if moudur==1, over(q2_r1) plabel(_all percent, color(white) size(large)) title("Responses to Q2 R1 from the soft sciences")
graph bar (mean) att_q2_r1_a (mean) att_q2_r1_b if moudur==0, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R1 from hard sciences")
graph bar (mean) att_q2_r1_a (mean) att_q2_r1_b if moudur==1, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R1 from soft sciences")

//Graph des réponses que pour ceux qui sont allés jusqu'au bout.
graph pie if finish==1, over(q2_r1) title("Responses to Q2 R1 from respondents who finished") cw plabel(_all percent, color(white) size(medium)) 




//Question 3
graph pie, over(q3_r1) title("Responses to Q3 R1") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q3_r2) title("Responses to Q3 R2") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q3_r3) title("Responses to Q3 R3") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q3_r4) title("Responses to Q3 R4") cw plabel(_all percent, color(white) size(medium)) 
graph pie, over(q3_r5) title("Responses to Q3 R5") cw plabel(_all percent, color(white) size(medium)) 
//Expectation
graph box att_q3_r1_a att_q3_r2_a att_q3_r3_a att_q3_r4_a att_q3_r5_a, title("Expectations for response a")
sum att_q3_r1_a att_q3_r2_a att_q3_r3_a att_q3_r4_a att_q3_r5_a
graph bar (mean) att_q3_r1_a (mean) att_q3_r1_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R1")
graph bar (mean) att_q3_r2_a (mean) att_q3_r2_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R2")
graph bar (mean) att_q3_r3_a (mean) att_q3_r3_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R3")
graph bar (mean) att_q3_r4_a (mean) att_q3_r4_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R4")
graph bar (mean) att_q3_r5_a (mean) att_q3_r5_b, blabel(bar, size(vlarge) color(white) position(center)) ytitle("Percent") title("Expectations to R5")

//Question 4
tab q4
graph box q4, ytitle("Probability") title("Expected probability to die from coronavirus")
sum q4, detail
graph box q4, over(id_db_gender) title("Epected probability to die from coronavirus (gender)")
graph box q4, over(id_db_profession, label(angle(forty_five))) ytitle("Probability") ylabel(, valuelabel) title("Expected probability to die from coronavirus (profession)")
graph box q4, over(id_db_age, label(angle(forty_five))) ytitle("Probability") ylabel(, valuelabel) title("Expected probability to die from coronavirus (age)")
graph box q4, over(id_db_density, label(angle(forty_five))) ytitle("Probability") ylabel(, valuelabel) title("Expected probability to die from coronavirus (density)")
graph box q4, over(id_db_trip, gap(1.4) label(angle(vertical))) ytitle("Probability") ylabel(, valuelabel) title("Expected probability to die from coronavirus (trips)")

graph box q4, over(grdate, gap(1.4) label(angle(45))) ytitle("Probability") ylabel(, valuelabel) title("Expected probability to die from coronavirus (date)")


//Bias of dropping survey Q4
graph box q4, over(finish) ytitle("Probability") ylabel(, valuelabel) title("Expected probability to die from coronavirus")
sum q4 if finish==0
sum q4 if finish==1

//Deuxième partie, première question:
graph box pii_q1_a pii_q1_b, title("Number of vaccines distributed for villages a and b")
graph box pii_q3_a pii_q3_b, title("Number of vaccines distributed for villages a and b")
graph box pii_q1_a pii_q1_b pii_q3_a pii_q3_b, title("Number of vaccines distributed for villages a and b")
sum pii_q1_a pii_q3_a

bys id_db_person: sum id_db_age
tab id_db_person id_db_age
gr box id_db_age, over(id_db_person) 
tab id_db_age

