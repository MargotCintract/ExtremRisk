//ANALYSIS THINGS DEPENDING ON OTHER THINGS
cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
putdocx begin, font(, 12) landscape

//People who say no to Q1, take more risk or not for Q2 and Q3, see Q4 too
//Q2
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Comparison between people who responded they did not care about the disappearing of humanity in 10,000 years and people who responded they did. Respective responses for Q2: Would you take the risk to use a vaccine if it could make the humanity disappear?"), bold
graph pie if q1=="No", over(q2_r1)title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/100 billion? Q1=No", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII1, replace
graph pie if q1!="No", over(q2_r1)title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/100 billion? Q1=Yes", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII2, replace
graph combine ANAII1.gph ANAII2.gph
graph export ANAII1-ANAII2.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII1-ANAII2.png

graph pie if q1=="No", over(q2_r2) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/10 billion? Q1=No", size(med) color(dknavy))  pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII3
graph pie if q1!="No", over(q2_r2) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/100 billion? Q1=Yes", size(med) color(dknavy))  pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII4
graph combine ANAII3.gph ANAII4.gph
graph export ANAII3-ANAII4.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII3-ANAII4.png

graph pie if q1=="No", over(q2_r3) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/1 billion? Q1=No", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII5
graph pie if q1!="No", over(q2_r3) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/1 billion? Q1=Yes", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII6
graph combine ANAII5.gph ANAII6.gph
graph export ANAII5-ANAII6.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII5-ANAII6.png

graph pie if q1=="No", over(q2_r4) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/100 million? Q1=No", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII7
graph pie if q1!="No", over(q2_r4) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/100 million? Q1=Yes", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII8
graph combine ANAII7.gph ANAII8.gph
graph export ANAII7-ANAII8.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII7-ANAII8.png

graph pie if q1=="No", over(q2_r5) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/10 million? Q1=No", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII9
graph pie if q1!="No", over(q2_r5) title("Would you use the vaccine if it the probability that", size(med)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("the humanity disappear was 1/10 million? Q1=Yes", size(med) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII10
graph combine ANAII9.gph ANAII10.gph
graph export ANAII9-ANAII10.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII9-ANAII10.png

//Q3
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Comparison between people who responded they did not care about the disappearing of humanity in 10,000 years and people who responded they did. Respective responses for Q3: Would you take the risk to use a vaccine if you had a probability to die from it?"), bold
graph pie if q1=="No", over(q3_r1)title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 million to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII11
graph pie if q1!="No", over(q3_r1)title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 million to kill you? Q1=Yes", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII12
graph combine ANAII11.gph ANAII12.gph
graph export ANAII11-ANAII12.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII11-ANAII12.png

graph pie if q1=="No", over(q3_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 300 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII13
graph pie if q1!="No", over(q3_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 300 000 to kill you? Q1=Yes", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII14
graph combine ANAII13.gph ANAII14.gph
graph export ANAII13-ANAII14.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII13-ANAII14.png

graph pie if q1=="No", over(q3_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII15
graph pie if q1!="No", over(q3_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 000 to kill you? Q1=Yes", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII16
graph combine ANAII15.gph ANAII16.gph
graph export ANAII15-ANAII16.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII15-ANAII16.png

graph pie if q1=="No", over(q3_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII17
graph pie if q1!="No", over(q3_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 000 to kill you? Q1=Yes", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII18
graph combine ANAII17.gph ANAII18.gph
graph export ANAII17-ANAII18.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII17-ANAII18.png

graph pie if q1=="No", over(q3_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII19
graph pie if q1!="No", over(q3_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 000 to kill you? Q1=Yes", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII20
graph combine ANAII19.gph ANAII20.gph
graph export ANAII19-ANAII20.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII19-ANAII20.png

//Q4
putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Comparison between people who responded they did not care about the disappearing of humanity in 10,000 years and people who responded they did. Respective responses for Q4: What do you think is the probability that you would die one day from the coronavirus?"), bold
graph box q4 if q1=="No", ytitle("Probability in %") title("What do you think is the probability that you will die one ") subtitle("day from a coronavirus? Q1=No", size(large) color(dknavy))
graph export ANAII21-ANAII22.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII21-ANAII22.png

graph box q4 if q1!="No", ytitle("Probability in %") title("What do you think is the probability that you will die one ") subtitle("day from a coronavirus? Q1=Yes", size(large) color(dknavy))
graph export ANAII23-ANAII24.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII23-ANAII24.png

putdocx save ANA1.docx, replace
