%% Causes
figure(1);

% Uterine Atony
GDP1 = [17.85, 114, 246.26, 398.8, 538, 826.2];
UA = [82.4, 21.4, 78.3, 51.2, 31.6, 56.5];
plot(GDP1,UA,'*-');
hold on

% Perineal Trauma
GDP2 = [17.85, 114, 246.26, 398.8, 538, 826.2];
PT = [13.5, 28.6, 0, 15, 10, 19.9];
plot(GDP2,PT,'*-');
hold on

% Retained Placenta
GDP3 = [17.85, 114, 246.26, 398.8, 538, 826.2];
RP = [2.7, 28.6, 17.2, 26.5, 24.5, 17.1];
plot(GDP3,RP,'*-');
hold on

% Set up axes.
xticks([17.85, 25.89, 114, 246.26, 398.8, 538, 826.2, 2751, 4872]);
xticklabels({'17.85','','114', '246.26','398.8','538','826.2','2751','4872'});
%xticklabels({'Zimbabwe','Uganda','Karachi', 'British Columbia','Norwary','Sweden','Netherlands','California','Japan'});
legend('Uterine Atony', 'Perineal Trauma', 'Retained Placenta');
ylim([0 100]);
xlabel('Region Gross Domestic Product (Billions USD)');
ylabel('Percentage of Cases with This Trait (%)');

%% Mode of Delivery
figure(2);
% C-section
GDP4 = [17.85, 25.89, 246.26, 398.8, 2751];
CSect = [24.3, 23.4, 11.6, 31.9, 89.7];
plot(GDP4,CSect,'*-');
hold on

ylim([0 100]);
xticks([17.85, 25.89, 114, 246.26, 398.8, 538, 826.2, 2751, 4872]);
xticklabels({'17.85','','', '','','','826.2','2751','4872'});
xlabel('Region Gross Domestic Product (Billions USD)');
ylabel('Percentage of Cases with This Trait (%)');

%% Demographics
figure(3);
% Multipara
GDP5 = [25.89, 246.26, 398.8, 538, 2751, 4872];
Multi = [71, 44.6, 13.6, 35.2, 40.3, 52.7];
plot(GDP5,Multi,'*-');
hold on

% Under 20 years old
GDP6 = [25.89, 246.26, 398.8, 538, 4872];
Age = [20.7, 4.3, 1.1, 1.5, 3.2];
plot(GDP6,Age,'*-');
hold on

% BMI > 30
GDP7 = [246.26, 398.8, 2751];
BMI = [93.4, 16.6, 37.7];
plot(GDP7,BMI,'*-');
hold on

% Set up axes.
xticks([17.85, 25.89, 114, 246.26, 398.8, 538, 826.2, 2751, 4872]);
xticklabels({'17.85','','', '','','','826.2','2751','4872'});
legend('Multiparity', 'Under 20 years old', 'BMI > 30');
ylim([0 100]);
xlabel('Region Gross Domestic Product (Billions USD)');
ylabel('Percentage of Cases with This Trait (%)');
