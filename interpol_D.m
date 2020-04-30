function res = interpol_D(D)    
    x = 400:50:700;
    xq = 400:10:700;
    
    D = D.';
    
    res = interp1(x, double(D), xq, 'spline');
    res = res.';
end