function [Image_RGB] = rgb_from_31(Image_reflectance,CMF)
    Image_reflectance = double(Image_reflectance);
    [m,n,~] = size(Image_reflectance);
    Image_RGB = zeros(m,n,3);
    
    % RVB ==> XYZ
    RVB_XYZ = [0.429 0.343 0.178;0.222 0.7070 0.071;0.0190 0.132 0.939];
    % XYZ ==> RVB
    XYZ_RVB = inv(RVB_XYZ);
    for i = 1 : m
        for j = 1 : n
            vecteur_reflectance(:) = Image_reflectance(i,j,:);
            Image_RGB(i, j, :) = abs((vecteur_reflectance*CMF*0.00169)*(XYZ_RVB'));
        end
    end
    Image_RGB = uint8(Image_RGB*255);
    %figure,imshow(Image_RGB)
end