
:- dynamic satvenοusmean/2, calciummean/2, calciummin/2, phvenousmean/2, phvenousmax/2, satarterialmean/2, heartratemean/2, bloodpressuresismean/2, lactatemean/2, lactatemax/2, dimermedian/2, respiratorymin/2, neutrophilesmean/2, heartratemax/2, ureamean/2, respiratorymean/2.

rule(r1(Patient),noticu(Patient),[]):- satvenοusmean(Patient,Satvenmean), calciummin(Patient,Calmin), Satvenmean > 0.91, Calmin =< 0.32 .
rule(r2(Patient),icu(Patient),[]):- satarterialmean(Patient,Satartmean), Satartmean =< 0.92.
rule(r3(Patient),noticu(Patient),[]):- lactatemax(Patient,Lactmax), bloodpressuresismean(Patient,Blood), Lactmax > 0.36, Blood > 0.04.
rule(r4(Patient),icu(Patient),[]):- heartratemean(Patient,Heart), Heart > 0.14.
rule(r5(Patient),noticu(Patient),[]):- phvenousmean(Patient,Phmean),phvenousmax(Patient,Phmax),satvenοusmean(Patient,Satvenmean),
Phmean =< 0.38, Phmax > 0.35, Satvenmean > 0.25.
rule(r6(Patient),icu(Patient),[]):- lactatemean(Patient,Lactmean), calciummean(Patient,Calmean), Lactmean =< 0.36, Calmean =< 0.34.
rule(r7(Patient),icu(Patient),[]):- satvenοusmean(Patient,Satvenmean), Satvenmean < 10.

rule(r8(Patient),icu(Patient),[]):- respiratorymean(Patient,Respmean), Respmean > 0.1.
rule(r9(Patient),icu(Patient),[]):- respiratorymean(Patient,Respmean), Respmean < -0.8.
rule(r10(Patient),icu(Patient),[]):- respiratorymean(Patient,Respmean), Respmean > -0.38.
rule(r11(Patient),icu(Patient),[]):- ureamean(Patient,Ureamean), Ureamean > -0.75.
rule(r12(Patient),noticu(Patient),[]):- neutrophilesmean(Patient,Neutromean), heartratemax(Patient,Heartmax), Neutromean < -0.82613, Heartmax >= -0.5074.
rule(r13(Patient),icu(Patient),[]):- respiratorymin(Patient,Respmin), dimermedian(Patient,Dimermed), Respmin > -0.46428, Dimermed > -0.9904.

rule(pr1(Patient), prefer(r10(Patient), r1(Patient)),[]).
rule(pr2(Patient), prefer(r10(Patient), r2(Patient)),[]).
rule(pr3(Patient), prefer(r10(Patient), r3(Patient)),[]).
rule(pr4(Patient), prefer(r10(Patient), r4(Patient)),[]).
rule(pr5(Patient), prefer(r10(Patient), r5(Patient)),[]).
rule(pr6(Patient), prefer(r10(Patient), r6(Patient)),[]).
rule(pr7(Patient), prefer(r10(Patient), r7(Patient)),[]).
rule(pr8(Patient), prefer(r10(Patient), r8(Patient)),[]).
rule(pr9(Patient), prefer(r10(Patient), r9(Patient)),[]).
rule(pr10(Patient), prefer(r10(Patient), r12(Patient)),[]).
rule(pr11(Patient), prefer(r10(Patient), r13(Patient)),[]).

rule(pr12(Patient), prefer(r11(Patient), r1(Patient)),[]).
rule(pr13(Patient), prefer(r11(Patient), r2(Patient)),[]).
rule(pr14(Patient), prefer(r11(Patient), r3(Patient)),[]).
rule(pr15(Patient), prefer(r11(Patient), r4(Patient)),[]).
rule(pr16(Patient), prefer(r11(Patient), r5(Patient)),[]).
rule(pr17(Patient), prefer(r11(Patient), r6(Patient)),[]).
rule(pr18(Patient), prefer(r11(Patient), r7(Patient)),[]).
rule(pr19(Patient), prefer(r11(Patient), r8(Patient)),[]).
rule(pr20(Patient), prefer(r11(Patient), r9(Patient)),[]).
rule(pr21(Patient), prefer(r11(Patient), r12(Patient)),[]).
rule(pr22(Patient), prefer(r11(Patient), r13(Patient)),[]).


rule(pr23(Patient), prefer(r1(Patient), r2(Patient)),[]).
rule(pr24(Patient), prefer(r1(Patient), r3(Patient)),[]).
rule(pr25(Patient), prefer(r1(Patient), r4(Patient)),[]).
rule(pr26(Patient), prefer(r1(Patient), r5(Patient)),[]).
rule(pr27(Patient), prefer(r1(Patient), r6(Patient)),[]).
rule(pr28(Patient), prefer(r1(Patient), r7(Patient)),[]).
rule(pr29(Patient), prefer(r1(Patient), r8(Patient)),[]).
rule(pr30(Patient), prefer(r1(Patient), r9(Patient)),[]).
rule(pr31(Patient), prefer(r1(Patient), r12(Patient)),[]).
rule(pr32(Patient), prefer(r1(Patient), r13(Patient)),[]).

rule(pr33(Patient), prefer(r2(Patient), r3(Patient)),[]).
rule(pr34(Patient), prefer(r2(Patient), r4(Patient)),[]).
rule(pr35(Patient), prefer(r2(Patient), r5(Patient)),[]).
rule(pr36(Patient), prefer(r2(Patient), r6(Patient)),[]).
rule(pr37(Patient), prefer(r2(Patient), r7(Patient)),[]).
rule(pr38(Patient), prefer(r2(Patient), r8(Patient)),[]).
rule(pr39(Patient), prefer(r2(Patient), r9(Patient)),[]).
rule(pr40(Patient), prefer(r2(Patient), r12(Patient)),[]).
rule(pr41(Patient), prefer(r2(Patient), r13(Patient)),[]).

rule(pr42(Patient), prefer(r3(Patient), r4(Patient)),[]).
rule(pr43(Patient), prefer(r3(Patient), r5(Patient)),[]).
rule(pr44(Patient), prefer(r3(Patient), r6(Patient)),[]).
rule(pr45(Patient), prefer(r3(Patient), r7(Patient)),[]).
rule(pr46(Patient), prefer(r3(Patient), r8(Patient)),[]).
rule(pr47(Patient), prefer(r3(Patient), r9(Patient)),[]).
rule(pr48(Patient), prefer(r3(Patient), r12(Patient)),[]).
rule(pr49(Patient), prefer(r3(Patient), r13(Patient)),[]).

rule(pr50(Patient), prefer(r4(Patient), r5(Patient)),[]).
rule(pr51(Patient), prefer(r4(Patient), r6(Patient)),[]).
rule(pr52(Patient), prefer(r4(Patient), r7(Patient)),[]).
rule(pr53(Patient), prefer(r4(Patient), r8(Patient)),[]).
rule(pr54(Patient), prefer(r4(Patient), r9(Patient)),[]).
rule(pr55(Patient), prefer(r4(Patient), r12(Patient)),[]).
rule(pr56(Patient), prefer(r4(Patient), r13(Patient)),[]).

rule(pr57(Patient), prefer(r5(Patient), r6(Patient)),[]).
rule(pr58(Patient), prefer(r5(Patient), r7(Patient)),[]).
rule(pr59(Patient), prefer(r5(Patient), r8(Patient)),[]).
rule(pr60(Patient), prefer(r5(Patient), r9(Patient)),[]).
rule(pr61(Patient), prefer(r5(Patient), r12(Patient)),[]).
rule(pr62(Patient), prefer(r5(Patient), r13(Patient)),[]).

rule(pr63(Patient), prefer(r6(Patient), r7(Patient)),[]).
rule(pr64(Patient), prefer(r6(Patient), r8(Patient)),[]).
rule(pr65(Patient), prefer(r6(Patient), r9(Patient)),[]).
rule(pr66(Patient), prefer(r6(Patient), r12(Patient)),[]).
rule(pr67(Patient), prefer(r6(Patient), r13(Patient)),[]).

rule(pr68(Patient), prefer(r7(Patient), r8(Patient)),[]).
rule(pr69(Patient), prefer(r7(Patient), r9(Patient)),[]).
rule(pr70(Patient), prefer(r12(Patient), r7(Patient)),[]).
rule(pr71(Patient), prefer(r13(Patient), r7(Patient)),[]).

rule(pr72(Patient), prefer(r12(Patient), r8(Patient)),[]).
rule(pr73(Patient), prefer(r12(Patient), r9(Patient)),[]).
rule(pr74(Patient), prefer(r13(Patient), r8(Patient)),[]).
rule(pr75(Patient), prefer(r13(Patient), r9(Patient)),[]).

rule(pr76(Patient), prefer(r8(Patient), r3(Patient)),[]):- lactatemax(Patient,Lactmax), bloodpressuresismean(Patient,Blood), Lactmax > 0.36, Blood > 0.04.
rule(pr77(Patient), prefer(r9(Patient), r3(Patient)),[]):- lactatemax(Patient,Lactmax), bloodpressuresismean(Patient,Blood), Lactmax > 0.36, Blood > 0.04.

rule(c1(Patient), prefer(pr76(Patient), pr46(Patient)), []):- lactatemax(Patient,Lactmax), bloodpressuresismean(Patient,Blood), Lactmax > 0.36, Blood > 0.04.
rule(c2(Patient), prefer(pr77(Patient), pr47(Patient)), []):- lactatemax(Patient,Lactmax), bloodpressuresismean(Patient,Blood), Lactmax > 0.36, Blood > 0.04.

complement(icu(Patient),noticu(Patient)).
complement(noticu(Patient),icu(Patient)).

