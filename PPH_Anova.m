% Anova Test

%% Causes
clear
y = [82.4 13.5 2.7 1.4 0 0 0 21.4 28.6 28.6 0 7.1 7.1 7.2 78.3 0 17.2 0.6 0 0 3.9 51.2 15 26.5 1.3 0.4 3.7 1.9 31.6 10 24.5 0 0 0 33.9 56.5 19.9 17.1 0 0 0 6.5]';
g1 = {'Uterine Atony','Perineal Trauma', 'Retained Placenta', 'Bleeding Disorder','Uterine Inversion','Abnormal Placentation','Other','Uterine Atony','Perineal Trauma', 'Retained Placenta', 'Bleeding Disorder','Uterine Inversion','Abnormal Placentation','Other','Uterine Atony','Perineal Trauma', 'Retained Placenta', 'Bleeding Disorder','Uterine Inversion','Abnormal Placentation','Other','Uterine Atony','Perineal Trauma', 'Retained Placenta', 'Bleeding Disorder','Uterine Inversion','Abnormal Placentation','Other','Uterine Atony','Perineal Trauma', 'Retained Placenta', 'Bleeding Disorder','Uterine Inversion','Abnormal Placentation','Other','Uterine Atony','Perineal Trauma', 'Retained Placenta', 'Bleeding Disorder','Uterine Inversion','Abnormal Placentation','Other'};
g2 = {'Zimbabwe','Zimbabwe','Zimbabwe','Zimbabwe','Zimbabwe','Zimbabwe','Zimbabwe','Karachi','Karachi','Karachi','Karachi','Karachi','Karachi','Karachi','British Columbia','British Columbia','British Columbia','British Columbia','British Columbia','British Columbia','British Columbia','Norway','Norway','Norway','Norway','Norway','Norway','Norway','Sweden','Sweden','Sweden','Sweden','Sweden','Sweden','Sweden','Netherlands','Netherlands','Netherlands','Netherlands','Netherlands','Netherlands','Netherlands'};

p = anovan(y, {g1,g2})

%% Mode of Delivery
y1 = [75.7 24.3 76.6 23.4 88.4 11.6 67.6 31.9 10.3 89.7];
g11 = {'Vaginal','C-section','Vaginal','C-section','Vaginal','C-section','Vaginal','C-section','Vaginal','C-section'};
g21 = {'Zimbabwe','Zimbabwe','Uganda','Uganda','British Columbia','British Columbia','Norway','Norway','California','California'};

p1 = anovan(y1, {g11,g21})

%% Parity
y2 = [29 71 55.4 44.6 86.3 13.6 64.8 35.2 59.7 40.3 47.3 52.7];
g12 = {'Primi','Multi','Primi','Multi','Primi','Multi','Primi','Multi','Primi','Multi','Primi','Multi'};
g22 = {'Uganda','Uganda','British Columbia','British Columbia','Norway','Norway','Sweden','Sweden','California','California','Japan','Japan'};

p2 = anovan(y2, {g12,g22})

%% Age
y3 = [20.7 70.7 8.5 4.3 75.3 20.4 1.1 65.3 33.6 1.5 80.8 17.7 3.2 66.7 30.1];
g13 = {'14-19','20-34','>35','14-19','20-34','>35','14-19','20-34','>35','14-19','20-34','>35','14-19','20-34','>35'};
g23 = {'Uganda','Uganda','Uganda','British Columbia','British Columbia','British Columbia','Norway','Norway','Norway','Sweden','Sweden','Sweden','Japan','Japan','Japan'};

p3 = anovan(y3, {g13,g23})

%% BMI
y4 = [6.6 64 19.1 10.2 83.4 7.7 2.4 0.7 62.3 23.5 8.4 5.8];
g14 = {'<30','30-35','35-40','>40','<30','30-35','35-40','>40','<30','30-35','35-40','>40'};
g24 = {'British Columbia','British Columbia','British Columbia','British Columbia','Norway','Norway','Norway','Norway','California','California','California','California'};

p4 = anovan(y4, {g14,g24})

%% Ethnicity
y5 = [78.8 10.5 1.3 9.3 26.4 6.9 36.5 30.2];
g15 = {'White','Black','Hispanic','Asian','White','Black','Hispanic','Asian'};
g25 = {'Norway','Norway','Norway','Norway','California','California','California','California'};

p5 = anovan(y5, {g15,g25})

