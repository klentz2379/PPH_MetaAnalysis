clear

str = string({'PPH';'PPH';'PPH'})
pph = categorical(str)

% California, Norway, B.C.
gdp = [2751; 398.8; 246.26];
bmi30 = [37.7; 10.8; 93.4];
multipara = [13.6; 40.3; 44.6];
csection = [89.7; 31.9; 11.6];
ethnic = [73.6; 21.1; 30.3];

factors = horzcat(gdp, bmi30, multipara, csection, ethnic)

[B,dev,stats] = mnrfit(factors,pph);
B
stats.p
stats.se
LL = stats.beta - 1.96.*stats.se
UL = stats.beta + 1.96.*stats.se
[LL(:,1) UL(:,1)];
[LL(:,2) UL(:,2)];