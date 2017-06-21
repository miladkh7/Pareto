function vectorPareto=SortPareto(pop,F,x_cost)
%Input:
%pop:bayad havasam bashe ke in pope amodi migire
%F:
    if nargin<3 ;x_cost=1;end
    vectorPareto=zeros(100,3);
    k=0; %parto number
    m=0;
    for i=1:numel(F)
        k=k+1;
        j=F{i};
        jj=[];
        for j=F{i}
            jj=[jj pop(j).Cost(x_cost)];
        end
        [jj order]=sort(jj);
        j=F{i};
        j=j(order);
        for l=1:length(j)-1
            m=m+1;
            vectorPareto(m,1)=k;
            vectorPareto(m,2)=j(l);
            vectorPareto(m,3)=j(l+1);
        end
    end
    vectorPareto(m+1:end,:)=[];
end