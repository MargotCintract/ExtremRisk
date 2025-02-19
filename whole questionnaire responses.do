//putdocx save myreport.docx, replace
//graph drop _all
//colors  pie(1, color("110 0 0")) pie(2, color(navy)) 
// pie(1, color(navy)) pie(2, color(forest_green))  pie(3, color("119 9 9 %80"))
cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"

putdocx begin, font(, 12) landscape
putdocx paragraph
putdocx paragraph
putdocx paragraph
putdocx paragraph
putdocx paragraph
putdocx paragraph
putdocx paragraph, halign(center) font( ,20)
putdocx text ("Report for the Whole Questionnaire"), bold
		// I PART
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Part I "), bold 		
//Question 1 and expectations
putdocx paragraph, font( ,14)
putdocx text ("Question I-1: "), bold
putdocx paragraph
putdocx text ("Suppose that the scientific community announces that humanity will end in 10,000 years. Their conclusions are indisputable. How do you react?") 

graph pie, over(q1) title("Do you feel concerned by the disappearing", size(medlarge)) subtitle("of human beings in 10 000 years?", size(medlarge) color(dknavy)) cw plabel(_all percent, color(white) size(medium)) legend(on cols(1))
graph export q1_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q1_v1.png

graph pie if att_q1_c!=. , over(q1) title("Do you feel concerned by the disappearing", size(medlarge)) subtitle("of human beings in 10 000 years?", size(medlarge) color(dknavy)) cw plabel(_all percent, color(white) size(medium)) legend(on cols(1)) note("This graph concerns only the respondents who completed the questions", size(medsmall)) caption("about expectations.")
graph save q1
graph export q1.png, replace

graph bar (mean) att_q1_a (mean) att_q1_b (mean) att_q1_c, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("How much do you expect others to feel", size(medlarge)) legend(on order(1 "No" 2 "Yes, but it has no consequences" 3 "Yes, it has consequences")) subtitle("concerned about it?", size(medlarge) color(dknavy)) legend(on cols(1)) plegend(on rows(2) keygap(medlarge)) 
graph save att_q1
graph export att_q1.png, replace

graph combine q1.gph att_q1.gph
graph export q1-att_q1.png, replace
putdocx paragraph, halign(center)
putdocx image q1-att_q1.png

graph box att_q1_a att_q1_b att_q1_c, ytitle("Percentage") title("Do you think others will feel concerned about", size(medlarge)) legend(on cols(1)) subtitle("the disappearing of humanity?", size(medlarge) color(dknavy))
graph export att_q1_box.png, replace
putdocx paragraph, halign(center)
putdocx image att_q1_box.png

//Question 2 and expectations
putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question I-2: "), bold
putdocx paragraph
putdocx text ("Would you use a vaccine if it has the following probability to make the humanity disappear? ")

//R1
putdocx paragraph
graph pie, over(q2_r1)title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 billion to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph export q2_r1_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r1_v1.png

graph pie if att_q2_r1_b!=., over(q2_r1) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 billion to make the humanity disappear?", size(medlarge) color(dknavy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.") pie(1, color("110 0 0")) pie(2, color(navy))
graph save q2_r1
graph export q2_r1.png, replace

graph bar (mean) att_q2_r1_a (mean) att_q2_r1_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 100 billion: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q2_r1
graph export att_q2_r1.png, replace

graph combine q2_r1.gph att_q2_r1.gph
graph export q2_r1-att_q2_r1.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r1-att_q2_r1.png

graph box att_q2_r1_a att_q2_r1_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 100 billion to make the humanity disappear?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q2_r1.png, replace
putdocx paragraph, halign(center)
putdocx image att_q2_r1.png

//R2
putdocx paragraph
graph pie, over(q2_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 billion to make the humanity disappear?", size(medlarge) color(dknavy))  pie(1, color("110 0 0")) pie(2, color(navy))
graph export q2_r2_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r2_v1.png

graph pie if att_q2_r2_b!=., over(q2_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 billion to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q2_r2
graph export q2_r2.png, replace

graph bar (mean) att_q2_r2_a (mean) att_q2_r2_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 10 billion: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q2_r2
graph export att_q2_r2.png, replace

graph combine q2_r2.gph att_q2_r2.gph
graph export q2_r2-att_q2_r2.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r2-att_q2_r2.png

graph box att_q2_r2_a att_q2_r2_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 10 billion to make the humanity disappear?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q2_r2.png, replace
putdocx paragraph, halign(center)
putdocx image att_q2_r2.png

//R3
putdocx paragraph
graph pie, over(q2_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 billion to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph export q2_r3_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r3_v1.png

graph pie if att_q2_r3_b!=., over(q2_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 billion to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q2_r3
graph export q2_r3.png, replace

graph bar (mean) att_q2_r3_a (mean) att_q2_r3_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 1 billion: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q2_r3
graph export att_q2_r3.png, replace

graph combine q2_r3.gph att_q2_r3.gph
graph export q2_r3-att_q2_r3.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r3-att_q2_r3.png

graph box att_q2_r3_a att_q2_r3_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 1 billion to make the humanity disappear?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q2_r3.png, replace
putdocx paragraph, halign(center)
putdocx image att_q2_r3.png

//R4
putdocx paragraph
graph pie, over(q2_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 million to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph export q2_r4_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r4_v1.png

graph pie if att_q2_r4_b!=., over(q2_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 million to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q2_r4
graph export q2_r4.png, replace

graph bar (mean) att_q2_r4_a (mean) att_q2_r4_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 100 million: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q2_r4
graph export att_q2_r4.png, replace

graph combine q2_r4.gph att_q2_r4.gph
graph export q2_r4-att_q2_r4.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r4-att_q2_r4.png

graph box att_q2_r4_a att_q2_r4_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 100 million to make the humanity disappear?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q2_r4.png, replace
putdocx paragraph, halign(center)
putdocx image att_q2_r4.png

//R5
putdocx paragraph
graph pie, over(q2_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 million to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph export q2_r5_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r5_v1.png

graph pie if att_q2_r5_b!=., over(q2_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 million to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q2_r5
graph export q2_r5.png, replace

graph bar (mean) att_q2_r5_a (mean) att_q2_r5_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 10 million: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q2_r5
graph export att_q2_r5.png, replace

graph combine q2_r5.gph att_q2_r5.gph
graph export q2_r5-att_q2_r5.png, replace
putdocx paragraph, halign(center)
putdocx image q2_r5-att_q2_r5.png

graph box att_q2_r5_a att_q2_r5_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 10 million to make the humanity disappear?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q2_r5.png, replace
putdocx paragraph, halign(center)
putdocx image att_q2_r5.png

putdocx paragraph, font( ,14)
putdocx text ("Overall expectations for each different risk:"), bold
graph box att_q2_r1_a att_q2_r2_a att_q2_r3_a att_q2_r4_a att_q2_r5_a, ytitle(Expectations for the response Yes) title(Expectations for responses Yes depending on the probability) subtitle(that it can make the humanity disappear, size(large) color(dknavy)) legend(order(1 "risk 1/100 billion" 2 "risk 1/10 billion" 3 "risk 1/1 billion" 4 "risk 1/100 million" 5 "risk 1/10 million"))
graph export new.png, replace
putdocx paragraph, halign(center)
putdocx image new.png
graph box att_q2_r1_b att_q2_r2_b att_q2_r3_b att_q2_r4_b att_q2_r5_b, ytitle(Expectations for the response No) title(Expectations for responses No depending on the probability) subtitle(that it can make the humanity disappear, size(large) color(dknavy)) legend(order(1 "risk 1/100 billion" 2 "risk 1/10 billion" 3 "risk 1/1 billion" 4 "risk 1/100 million" 5 "risk 1/10 million"))
graph export new2.png, replace
putdocx paragraph, halign(center)
putdocx image new2.png

//Question 3 and expectations
putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question I-3: "), bold
putdocx paragraph
putdocx text ("Would you use a vaccine if it had the following probability to kill you? ")

//R1
putdocx paragraph
graph pie, over(q3_r1)title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 million to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph export q3_r1_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r1_v1.png

graph pie if att_q3_r1_b!=., over(q3_r1) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 million to kill you?", size(medlarge) color(dknavy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.") pie(1, color("110 0 0")) pie(2, color(navy))
graph save q3_r1
graph export q3_r1.png, replace

graph bar (mean) att_q3_r1_a (mean) att_q3_r1_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 1 million: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q3_r1
graph export att_q3_r1.png, replace

graph combine q3_r1.gph att_q3_r1.gph
graph export q3_r1-att_q3_r1.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r1-att_q3_r1.png

graph box att_q3_r1_a att_q3_r1_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 1 million to kill them?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q3_r1.png, replace
putdocx paragraph, halign(center)
putdocx image att_q3_r1.png

//R2
putdocx paragraph
graph pie, over(q3_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 300 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph export q3_r2_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r2_v1.png

graph pie if att_q3_r2_b!=., over(q3_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 300 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q3_r2
graph export q3_r2.png, replace

graph bar (mean) att_q3_r2_a (mean) att_q3_r2_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 300 000: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q3_r2
graph export att_q3_r2.png, replace

graph combine q3_r2.gph att_q3_r2.gph
graph export q3_r2-att_q3_r2.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r2-att_q3_r2.png

graph box att_q3_r2_a att_q3_r2_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 300 000 to kill them?", size(medlarge)) legend(on order(1 "Yes" 2 "No"))
graph export att_q3_r2.png, replace
putdocx paragraph, halign(center)
putdocx image att_q3_r2.png

//R3
putdocx paragraph
graph pie, over(q3_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 000 to kill you?", size(medlarge)) pie(1, color("110 0 0")) pie(2, color(navy))
graph export q3_r3_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r3_v1.png

graph pie if att_q3_r3_b!=., over(q3_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q3_r3
graph export q3_r3.png, replace

graph bar (mean) att_q3_r3_a (mean) att_q3_r3_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 100 000: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q3_r3
graph export att_q3_r3.png, replace

graph combine q3_r3.gph att_q3_r3.gph
graph export q3_r3-att_q3_r3.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r3-att_q3_r3.png

graph box att_q3_r3_a att_q3_r3_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 100 000 to kill them?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q3_r3.png, replace
putdocx paragraph, halign(center)
putdocx image att_q3_r3.png

//R4
putdocx paragraph
graph pie, over(q3_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph export q3_r4_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r4_v1.png

graph pie if att_q3_r4_b!=., over(q3_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q3_r4
graph export q3_r4.png, replace

graph bar (mean) att_q3_r4_a (mean) att_q3_r4_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 10 000: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q3_r4
graph export att_q3_r4.png, replace

graph combine q3_r4.gph att_q3_r4.gph
graph export q3_r4-att_q3_r4.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r4-att_q3_r4.png

graph box att_q3_r4_a att_q3_r4_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 10 000 to kill them?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q3_r4.png, replace
putdocx paragraph, halign(center)
putdocx image att_q3_r4.png

//R5
putdocx paragraph
graph pie, over(q3_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph export q3_r5_v1.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r5_v1.png

graph pie if att_q3_r5_b!=., over(q3_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) note("This graph concerns only the respondents who completed ", size(medsmall)) caption("the questions about expectations.")
graph save q3_r5
graph export q3_r5.png, replace

graph bar (mean) att_q3_r5_a (mean) att_q3_r5_b, blabel(bar, size(vlarge) color(white) position(inside)) ytitle(Mean percentage) ylabel(, labels labsize(small) valuelabel) title("1 chance over 1 000: Do you", size(medlarge)) legend(on order(1 "Yes use it" 2 "No don't use it") colfirst colgap(large)) plegend(on rows(2) keygap(medlarge)) subtitle("expect others to use the vaccine?", size(medlarge) color(dknavy))
graph save att_q3_r5
graph export att_q3_r5.png, replace

graph combine q3_r5.gph att_q3_r5.gph
graph export q3_r5-att_q3_r5.png, replace
putdocx paragraph, halign(center)
putdocx image q3_r5-att_q3_r5.png

graph box att_q3_r5_a att_q3_r5_b, ytitle("Percentage") title("Do you think others will use the vaccine if it had", size(medlarge)) subtitle("1 chance over 1 000 to kill them?", size(medlarge) color(dknavy)) legend(on order(1 "Yes" 2 "No"))
graph export att_q3_r5.png, replace
putdocx paragraph, halign(center)
putdocx image att_q3_r5.png

putdocx paragraph, font( ,14)
putdocx text ("Overall expectations for each different risk:"), bold
graph box att_q3_r1_a att_q3_r2_a att_q3_r3_a att_q3_r4_a att_q3_r5_a, ytitle(Expectations for the response Yes) title(Expectations for responses Yes depending on the) subtitle(probability that that the vaccine can kill you, size(large) color(dknavy)) legend(order(1 "risk 1/1 million" 2 "risk 1/300 000" 3 "risk 1/100 000" 4 "risk 1/10 000" 5 "risk 1/1 000"))
graph export new3.png, replace
putdocx paragraph, halign(center)
putdocx image new3.png
graph box att_q3_r1_b att_q3_r2_b att_q3_r3_b att_q3_r4_b att_q3_r5_b, ytitle(Expectations for the response No) title(Expectations for responses No depending on the) subtitle(probability that the vaccine can kill you, size(large) color(dknavy)) legend(order(1 "risk 1/1 million" 2 "risk 1/300 000" 3 "risk 1/100 000" 4 "risk 1/100 000" 5 "risk 1/1 000"))
graph export new4.png, replace
putdocx paragraph, halign(center)
putdocx image new4.png

//Question 4
putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question I-4: "), bold
putdocx paragraph
putdocx text ("What do you think is the probability that you will die one day from the coronavirus?")
graph box q4, ytitle("Probability in %") title("What do you think is the probability that you will die one ") subtitle("day from a coronavirus?", size(large) color(dknavy))
graph export q4.png, replace
putdocx paragraph, halign(center)
putdocx image q4.png

			// II PART
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Part II"), bold
			
putdocx paragraph, font( ,14)
putdocx text ("Question II-1: "), bold
putdocx paragraph
putdocx text ("There are 2 villages A and B with respectively 100 and 200 residents. They are both exposed to the same severe incurable disease. How would you allocate 100 vaccines between the two villages?")
graph box pii_q1_a pii_q1_b, title("Number of vaccines distributed for villages A and B") ytitle("Number of vaccines")
graph export pii_q1.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q1.png

putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question II-2: "), bold
putdocx paragraph
putdocx text ("Consider again the question II-1, but now assume that, before choosing the allocation, you know that you will live in village A during the epidemic. How would you allocate the 100 preventive vaccines between the two villages?")
graph box pii_q3_a pii_q3_b, title("Number of vaccines distributed for villages A and B") ytitle("Number of vaccines")
graph export pii_q2.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q2.png

putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question II-3: "), bold
putdocx paragraph
putdocx text ("3 villages are about to be exposed by the same disease: villages A and B have 200 habitants and village C has 600 habitants. You are living in village A and your most important relative is in village B. How would you allocate 100 preventive vaccines between the three villages?")
graph box pii_q4_a pii_q4_b pii_q4_c, title("Number of vaccines distributed for villages A, B and C") ytitle("Number of vaccines")
graph export pii_q4.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q4.png

putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question II-4: "), bold
putdocx paragraph
putdocx text ("Two villages C and D contaminated water. This contamination causes 200 persons in village C to become ill (representing 50% of village C’s 400 resident) and 150 persons in village D to become ill (representing 75% of village D’s 200 residents). The doctor can only treat 100 sick persons, how would advise him to treat?")
graph box pii_q5_a pii_q5_b, title("Percentage of treated persons in village C and D") ytitle("Percentage of treated persons")
graph export pii_q5.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q5.png

putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question II-5: "), bold
putdocx paragraph
putdocx text ("Consider the question 5 again, but now assume that the 200 sick persons in village C are women and the 150-sick person in village D are men. How would you advise the doctor to allocate the treatments?")
graph box pii_q6_a pii_q6_b, title("Percentage of treated persons in village C and D") ytitle("Percentage of treated persons")
graph export pii_q6.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q6.png

putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question II-6: "), bold
putdocx paragraph
putdocx text ("There are only two possible road for monthly convoys containing hazardous materials. Road E, which passes through village E is safer (1 chance in 1,000 of having an accident) than road F, which passes through village F (2 chances in 1,000 to having an accident). If an accident occurs, it will cause 100 deaths in the village that convoy passes through. If you were the only decision maker, which road(s) would you recommend for the convoys?")
graph pie, over(pii_q7) title("Road(s) reccomended for the convoy") cw plabel(_all percent, color(white) size(medlarge))
graph export pii_q7.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q7.png

putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question II-7: "), bold
putdocx paragraph
putdocx text ("Consider question 7 again, but now assume that the risks of having an accident are the same for each road. If you were the only decision maker, which road(s) would you recommend for the convoys?")
graph pie, over(pii_q8) title("Road(s) reccomended for the convoy") cw plabel(_all percent, color(white) size(medlarge))
graph export pii_q8.png, replace
putdocx paragraph, halign(center)
putdocx image pii_q8.png

				//PART III
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Part III"), bold

//Question III-1
putdocx paragraph, font( ,14)
putdocx text ("Question III-1: "), bold
putdocx paragraph
putdocx text ("According to the World Bank, in 2015, 736 million people lived in extreme poverty (with less than $1,90 per day). The OECD countries provide $130 billion per year in aid and development. An additional $260 billion would be needed each year to eliminate extreme poverty. ")
putdocx paragraph
putdocx text ("Now consider the introduction of a tax within OECD countries, levied on the income of households above a given threshold. Collected funds would be entirely transferred to a Poverty Fund and distributed to people living in extreme poverty. ")
putdocx text ("For example, if the threshold is €1,000 of income per month, for an income of €1,500 a 5% tax would cost €25 per month (5% of 1,500-1,000=€500 correspond to €25).")
putdocx paragraph
putdocx text ("What percentage of your income would you agree to pay to the Poverty Fund?")

graph box piv_q1_a piv_q1_b, title("Percentage of the income given to the Poverty Fund") ytitle("Percentage of income") legend(cols(1))
graph export piv_q1.png, replace
putdocx paragraph, halign(center)
putdocx image piv_q1.png

//Question III-2
putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question III-2: "), bold
putdocx paragraph
putdocx text ("If you were the only person to decide the tax for all the OECD countries, which tax rate would you impose on monthly net income above the threshold?")
graph box piv_q2_a piv_q2_b, title("tax rate imposed on monthly net income") ytitle("Percentage of income") legend(cols(1))
graph export piv_q2.png, replace
putdocx paragraph, halign(center)
putdocx image piv_q2.png

//Question III-3
putdocx pagebreak
putdocx paragraph, font( ,14)
putdocx text ("Question III-3: "), bold
putdocx paragraph
putdocx text ("Assume that renowned experts have estimated that a 1% tax would decrease the risk of major war between wealthy and poor countries by 10%. A 10% tax would decrease this risk by 100%. If you were the only person to decide the tax level for all OECD countries, which tax rate would you impose on monthly net income above €1,000?")
graph box piv_q3, title("Tax rate imposed on monthly net income above €1,000") ytitle("Percentage of income") legend(cols(1))
graph export piv_q3.png, replace
putdocx paragraph, halign(center)
putdocx image piv_q3.png

putdocx save myreport.docx, replace

