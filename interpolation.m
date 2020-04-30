function [Image_reflectance1] = interpolation(I_mult)
    x = 400:50:700;
    xq = 400:10:700;
    [r,c,z]=size(I_mult);

    ReI_mult=reshape(I_mult,r*c,z);
    
    IM_REFLE = interp1(x,double(ReI_mult'),xq,'spline');
    Image_reflectance1=reshape(IM_REFLE',r,c,31);
    Image_reflectance1=normalize(Image_reflectance1);
end