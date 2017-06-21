function [pop,pop_vertical]=CreatCost(range,sizze)

    people.Cost=[];
    f=randi(range,sizze);  
     f_vertical=f';% for vertical cost
    si=size(f(:,1));
  
    pop=repmat(people,[si,1]);

    for i=1:si%%% mostaghiman mishod nevest size f
        pop(i).Cost=f(i,:);
%          pop(i).Cost=f(i,:);   for vertical cost
    end
    
    %dar hale hazer faaal vali badan bayad yeki ro negah dasht va on yeki f
    %ro pak kard
    %dalilamam in bod ke moghe joda kardan hes mikonam amodi rahat tare
    pop_vertical=repmat(people,[si,1]);
    for i=1:size(f)
        pop_vertical(i).Cost=f_vertical(:,i);
    end
end