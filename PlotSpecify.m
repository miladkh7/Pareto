

function PlotSpecify(vector,k,x_cost,y_cost)
    if nargin<4;y_cost=2;end
    if nargin<3;x_cost=1;end
    myColor=colormap(prism);
    
%     myColor(7:end,:)=[];
    %  plot(vector(:,1),vector(:,2),'o','markersize',15,'markeredgecolor','b')
    plot(vector(:,x_cost),vector(:,y_cost),'o','markerfacecolor',myColor(k,:),'markersize',12)

end
