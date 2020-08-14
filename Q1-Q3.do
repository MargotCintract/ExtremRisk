		//ANALYSIS
		
cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
putdocx begin, font(, 12) landscape

//Q1 what people expect depending on their answer
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Q1: Do you feel concern about the disappearing of humanity in 10,000 years? "), bold 
putdocx paragraph, halign(center)
putdocx text ("Comparison of respondents' expectations depending on their individual answers")
graph box att_q1_a, over(q1, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph export ANA1.png, replace
putdocx paragraph, halign(center)
putdocx image ANA1.png
graph box att_q1_b, over(q1, label(labsize(small))) ytitle(Expectations for the response Yes without consequences) title(Expectations for the response -Yes without consequences-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph export ANA2.png, replace
putdocx paragraph, halign(center)
putdocx image ANA2.png
graph box att_q1_c, over(q1, label(labsize(small))) ytitle(Expectations for the response Yes with consequences) title(Expectations for the response -Yes with consequences-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph export ANA3.png, replace
putdocx paragraph, halign(center)
putdocx image ANA3.png

//Q2 what people expect depending on their answer
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Q2: Would you use a vaccine if it had the following probability to make the humanity disappear? "), bold 
putdocx paragraph, halign(center)
putdocx text ("Comparison of respondents' expectations depending on their individual answers")
graph box att_q2_r1_a, over(q2_r1, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/100 billion, size(large) color(dknavy))
graph export ANA4.png, replace
putdocx paragraph, halign(center)
putdocx image ANA4.png
graph box att_q2_r1_b, over(q2_r1, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/100 billion, size(large) color(dknavy))
graph export ANA5.png, replace
putdocx paragraph, halign(center)
putdocx image ANA5.png
graph box att_q2_r2_a, over(q2_r2, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/10 billion, size(large) color(dknavy))
graph export ANA5.png, replace
putdocx paragraph, halign(center)
putdocx image ANA5.png
graph box att_q2_r2_b, over(q2_r2, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/10 billion, size(large) color(dknavy))
graph export ANA5.png, replace
putdocx paragraph, halign(center)
putdocx image ANA5.png
graph box att_q2_r3_a, over(q2_r3, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/1 billion, size(large) color(dknavy))
graph export ANA6.png, replace
putdocx paragraph, halign(center)
putdocx image ANA6.png
graph box att_q2_r3_b, over(q2_r3, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/1 billion, size(large) color(dknavy))
graph export ANA7.png, replace
putdocx paragraph, halign(center)
putdocx image ANA7.png
graph box att_q2_r4_a, over(q2_r4, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/100 million, size(large) color(dknavy))
graph export ANA8.png, replace
putdocx paragraph, halign(center)
putdocx image ANA8.png
graph box att_q2_r4_b, over(q2_r4, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/100 million, size(large) color(dknavy))
graph export ANA9.png, replace
putdocx paragraph, halign(center)
putdocx image ANA9.png
graph box att_q2_r5_a, over(q2_r5, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/10 million, size(large) color(dknavy))
graph export ANA10.png, replace
putdocx paragraph, halign(center)
putdocx image ANA10.png
graph box att_q2_r5_b, over(q2_r5, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/10 million, size(large) color(dknavy))
graph export ANA11.png, replace
putdocx paragraph, halign(center)
putdocx image ANA11.png

//Q3 what people expect depending on their answergraph box att_q2_r1_a, over(q2_r1, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/100 billion, size(large) color(dknavy))
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Q3: Would you use a vaccine if it had the following probability to make you die? "), bold 
putdocx paragraph, halign(center)
putdocx text ("Comparison of respondents' expectations depending on their individual answers")
graph box att_q3_r1_a, over(q3_r1, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q3 with a risk of 1/1 million, size(large) color(dknavy))
graph export ANA12.png, replace
putdocx paragraph, halign(center)
putdocx image ANA12.png
graph box att_q3_r1_b, over(q3_r1, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q3 with a risk of 1/1 million, size(large) color(dknavy))
graph export ANA12.png, replace
putdocx paragraph, halign(center)
putdocx image ANA12.png
graph box att_q3_r2_a, over(q3_r2, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q3 with a risk of 1/300 000, size(large) color(dknavy))
graph export ANA13.png, replace
putdocx paragraph, halign(center)
putdocx image ANA13.png
graph box att_q3_r2_b, over(q3_r2, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q3 with a risk of 1/300 000, size(large) color(dknavy))
graph export ANA14.png, replace
putdocx paragraph, halign(center)
putdocx image ANA14.png
graph box att_q3_r3_a, over(q3_r3, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q3 with a risk of 1/100 000, size(large) color(dknavy))
graph export ANA15.png, replace
putdocx paragraph, halign(center)
putdocx image ANA15.png
graph box att_q3_r3_b, over(q3_r3, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q3 with a risk of 1/100 000, size(large) color(dknavy))
graph export ANA16.png, replace
putdocx paragraph, halign(center)
putdocx image ANA16.png
graph box att_q3_r4_a, over(q3_r4, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q3 with a risk of 1/10 000, size(large) color(dknavy))
graph export ANA17.png, replace
putdocx paragraph, halign(center)
putdocx image ANA17.png
graph box att_q3_r4_b, over(q3_r4, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q3 with a risk of 1/10 000, size(large) color(dknavy))
graph export ANA18.png, replace
putdocx paragraph, halign(center)
putdocx image ANA18.png
graph box att_q3_r5_a, over(q3_r5, label(labsize(small))) ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q3 with a risk of 1/1 000, size(large) color(dknavy))
graph export ANA19.png, replace
putdocx paragraph, halign(center)
putdocx image ANA19.png
graph box att_q3_r5_b, over(q3_r5, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q3 with a risk of 1/1 000, size(large) color(dknavy))
graph export ANA20.png, replace
putdocx paragraph, halign(center)
putdocx image ANA20.png

putdocx save Q1-Q3.docx, replace
