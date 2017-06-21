function PlotPartoLine2(vector,k,pop,x_cost,y_cost)
%%% vector[4*n] front|baseNode|node1|node2
%     n=length(vector);% #Test
% vector
% pop %#test
   myColor=colormap(prism);

    if nargin<5;y_cost=2;end
    if nargin<4;x_cost=1;end
   for i=1:size(vector)% #Description kilid vaje pop baraye test ast va bayad in tabe eslah shavad

       x=[pop(vector(i,2)).Cost(x_cost), pop(vector(i,3)).Cost(x_cost)];
       y=[pop(vector(i,2)).Cost(y_cost), pop(vector(i,3)).Cost(y_cost)];
       line(x,y,'color',myColor(vector(i,1),:),'linewidth',2);
           
   end
end
