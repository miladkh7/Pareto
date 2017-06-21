%%
%%When I wrote this, only God and I understood what I was doing
%%Now, God only knows




%%
% in barname vase namayesh parto ba 2 ravesh motafavet va minimon kardan
% tavabe kast mibashad vali ke parto ra ba asase cost(1) va cost(2) neshon
% mide




clc;
clear;
close all;


%% Creat Cost
[pop,pop_v]=CreatCost([1 10],[9 2]);
%  pop=TestCost()
% load test1  %this line for load the parameters
%%
pop2=pop;
pop3=pop;
pop4=pop;
% PlotCostPoint(pop);
hold on
[pop,F]=NonDominatedSorting2(pop);%% pop_vertical ro ezafe kardam ta bein halate amodi va ofoghie cost tasmim begiram
[pop2,F2]=NonDominatedSorting2(pop2,'max');%% pop_vertical ro ezafe kardam ta bein halate amodi va ofoghie cost tasmim begiram
[pop3,F3]=NonDominatedSorting2(pop3,2);%% pop_vertical ro ezafe kardam ta bein halate amodi va ofoghie cost tasmim begiram
[pop4,F4]=NonDominatedSorting2(pop4,1);%% pop_vertical ro ezafe kardam ta bein halate amodi va ofoghie cost tasmim begiram

subplot(2,2,1)
PlotParto(pop,F,1,2)
% % xlabel('f1 Goal:min')
% % ylabe('f2 Goal:min')
title('f1:min f2:min')

subplot(2,2,2)
PlotParto(pop2,F2)
% % xlabel('f1 Goal:max')
% % ylabe('f2 Goal:max')
title('f1:max f2:max')

subplot(2,2,3)
PlotParto(pop3,F3)
% xlabel('f1 Goal:min')
% ylabe('f2 Goal:max')
title('f1:min f2:max')

subplot(2,2,4)
PlotParto(pop4,F4)
% xlabel('f1 Goal:max')
% ylabe('f2 Goal:min')
title('f1:max f2:min')