//Depending on proba to die, estimate Q2 and Q3, see if related

//Q2
putdocx paragraph, halign(center) font( ,13)
graph box q4 if q2_r1=="No", ytitle("Probability in %") title("What do you think is the probability that you will die one ") subtitle("day from a coronavirus?", size(large) color(dknavy))
graph save ANAII1
graph box q4 if q2_r1!="No", ytitle("Probability in %") title("What do you think is the probability that you will die one ") subtitle("day from a coronavirus?", size(large) color(dknavy))
graph save ANAII2
graph combine ANAII1.gph ANAII2.gph
graph export ANAII1-ANAII2.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII1-ANAII2.png

graph pie if q1=="No", over(q2_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 billion to make the humanity disappear? Q1=No", size(medlarge) color(dknavy))  pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII3
graph pie if q1!="No", over(q2_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 billion to make the humanity disappear?", size(medlarge) color(dknavy))  pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII4
graph combine ANAII3.gph ANAII4.gph
graph export ANAII3-ANAII4.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII3-ANAII4.png

graph pie if q1=="No", over(q2_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 billion to make the humanity disappear? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII5
graph pie if q1!="No", over(q2_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 billion to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII6
graph combine ANAII5.gph ANAII6.gph
graph export ANAII5-ANAII6.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII5-ANAII6.png

graph pie if q1=="No", over(q2_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 million to make the humanity disappear? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII7
graph pie if q1!="No", over(q2_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 million to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII8
graph combine ANAII7.gph ANAII8.gph
graph export ANAII7-ANAII8.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII7-ANAII8.png

graph pie if q1=="No", over(q2_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 million to make the humanity disappear? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII9
graph pie if q1!="No", over(q2_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 million to make the humanity disappear?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII10
graph combine ANAII9.gph ANAII10.gph
graph export ANAII9-ANAII10.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII9-ANAII10.png

//Q3
putdocx pagebreak
putdocx paragraph, halign(center) font( ,13)
putdocx text ("Comparison between people who responded they did not care about the disappearing of humanity in 10,000 years and people who responded they did. Respective responses for Q3: Would you take the risk to use a vaccine if you had a probability to die from it?")
graph pie if q1=="No", over(q3_r1)title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 million to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII11
graph pie if q1!="No", over(q3_r1)title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 million to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII12
graph combine ANAII11.gph ANAII12.gph
graph export ANAII11-ANAII12.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII11-ANAII12.png

graph pie if q1=="No", over(q3_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 300 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII13
graph pie if q1!="No", over(q3_r2) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 300 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII14
graph combine ANAII13.gph ANAII14.gph
graph export ANAII13-ANAII14.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII13-ANAII14.png

graph pie if q1=="No", over(q3_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 000 to kill you? Q1=No", size(medlarge)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII15
graph pie if q1!="No", over(q3_r3) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 100 000 to kill you?", size(medlarge)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII16
graph combine ANAII15.gph ANAII16.gph
graph export ANAII15-ANAII16.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII15-ANAII16.png

graph pie if q1=="No", over(q3_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII17
graph pie if q1!="No", over(q3_r4) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 10 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII18
graph combine ANAII17.gph ANAII18.gph
graph export ANAII17-ANAII18.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII17-ANAII18.png

graph pie if q1=="No", over(q3_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 000 to kill you? Q1=No", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII19
graph pie if q1!="No", over(q3_r5) title("Would you use the vaccine if it had 1 chance", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle(" over 1 000 to kill you?", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII20
graph combine ANAII19.gph ANAII20.gph
graph export ANAII19-ANAII20.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII19-ANAII20.png
