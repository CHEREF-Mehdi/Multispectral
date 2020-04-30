function res = GFC(Rm,Rr,p)
   
    s = 0; v1 = 0;v2 = 0;
    for j = 1 : 31
        s = s + Rm(j,p)*Rr(j,p);
        v1 = v1 + power(Rm(j,p),2);
        v2 = v2 + power(Rr(j,p),2);
    end
    
    s = abs(s);    
    res = s / sqrt(v1*v2);

end