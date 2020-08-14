//Compare responses for humanity and individual
cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
putdocx begin, font(, 12) landscape
//Combine graph 1 and graph 2. Graph 1=graph pie Q3 if Q2=Yes, and graph if Q3=No etc..
graph pie if q2_r1=="No", over(q3_r1)title("Would you use the vaccine if it had 1/1 million", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered No for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII1
graph pie if q2_r1=="Yes", over(q3_r1)title("Would you use the vaccine if it had 1/1 million", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered Yes for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII2
graph combine ANAII1.gph ANAII2.gph
graph export ANAII1-ANAII2.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII1-ANAII2.png

graph pie if q2_r2=="No", over(q3_r2) title("Would you use the vaccine if it had 1/300 000 ", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered No for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII3
graph pie if q2_r2=="Yes", over(q3_r2) title("Would you use the vaccine if it had 1/300 000  ", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered Yes for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII4
graph combine ANAII3.gph ANAII4.gph
graph export ANAII3-ANAII4.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII3-ANAII4.png

graph pie if q2_r3=="No", over(q3_r3) title("Would you use the vaccine if it had 1/100 000 ", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered No for humanity)", size(medlarge)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII5
graph pie if q2_r3=="Yes", over(q3_r3) title("Would you use the vaccine if it had 1/100 000", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered Yes for humanity)", size(medlarge)) pie(1, color("110 0 0")) pie(2, color(navy))
graph save ANAII6
graph combine ANAII5.gph ANAII6.gph
graph export ANAII5-ANAII6.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII5-ANAII6.png

graph pie if q2_r4=="No", over(q3_r4) title("Would you use the vaccine if it had 1/10 000", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered No for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII7
graph pie if q2_r4=="Yes", over(q3_r4) title("Would you use the vaccine if it had 1/10 000", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered Yes for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII8
graph combine ANAII7.gph ANAII8.gph
graph export ANAII7-ANAII8.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII7-ANAII8.png

graph pie if q2_r5=="No", over(q3_r5) title("Would you use the vaccine if it had 1/1 000", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered No for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII9
graph pie if q2_r5=="Yes", over(q3_r5) title("Would you use the vaccine if it had 1/1 000", size(medlarge)) cw plabel(_all percent, color(white) size(vlarge)) subtitle("to kill you? (Answered Yes for humanity)", size(medlarge) color(dknavy)) pie(1, color("110 0 0")) pie(2, color(navy)) 
graph save ANAII10
graph combine ANAII9.gph ANAII10.gph
graph export ANAII9-ANAII10.png, replace
putdocx paragraph, halign(center)
putdocx image ANAII9-ANAII10.png

//People who answer yes for humanity but no for themselves
tab q3_r1 if q2_r1=="Yes"

putdocx paragraph



putdocx save ANA3.docx, replace
