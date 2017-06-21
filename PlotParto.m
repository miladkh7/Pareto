function PlotParto(pop,fronts,x_cost,y_cost)
    if nargin<4;y_cost=2;end
    if nargin<3;x_cost=1;end
    PlotCostPoint(pop,x_cost,y_cost);
    hold on
    A=[];
    for i=1:numel(fronts)
        j=fronts{i};
        for k=1:numel(j); A =[A ;pop(j(k)).Cost];end %#ok
        PlotSpecify(A,i,x_cost,y_cost);
        A=[];
    end
    % % PlotPartoLine(vector,0,pop)
    sortP=SortPareto(pop,fronts,x_cost);
    PlotPartoLine2(sortP,0,pop,x_cost,y_cost);
    ShowPopNumber(pop,x_cost,y_cost);
end