function PlotCostPoint(vector,x_cost,y_cost)
%Inputs:
%vector:mitone vector ya hata struct bashe khob
    if nargin<3;y_cost=2;end
    if nargin<2;x_cost=1;end
    if isstruct(vector);vector=VectorizeStruct(vector,'Cost');end
    plot(vector(:,x_cost),vector(:,y_cost),'o','markerfacecolor','y','markersize',15)
end
