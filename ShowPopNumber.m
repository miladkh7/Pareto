function ShowPopNumber(vector,x_cost,y_cost)
    if nargin<3;y_cost=2;end
    if nargin<2;x_cost=1;end    
    if isstruct(vector);vector=VectorizeStruct(vector,'Cost');end
    for i=1:size(vector)
        text(vector(i,x_cost),vector(i,y_cost),num2str(i),'HorizontalAlignment','center','fontweight','bold');
    end
end