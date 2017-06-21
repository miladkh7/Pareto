function vector=VectorizeStruct(struct,fieldname)  %#ok %bayad bar hasb filde delkhah bashe vase hamin bayad ke feval ha kone
%Input
%strct:
%fieldname: filidi ke mikhaym on ro matrisi konim
    fildlenght=eval(['length(struct(1).',fieldname,');']);
    vector=eval(['[struct(:).',fieldname,']']);
    vector=reshape(vector,fildlenght,[]);
    vector=vector';

end