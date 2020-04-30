function [R,Rr1,Rr2]=createRr(D,R,Illu_D65)
    D=D/255;
    Di=interpol_D(D);
    Rr1=Di.*(Illu_D65/255)';
    Q = D \ R;
    Rr2=(D)*Q;
    R=R'; Rr1=Rr1'; Rr2=Rr2';
end