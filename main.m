warning off;
clc; clear all; close all;

load flowers_7.mat
im_multi_flowers=flowers;

load macbeth_7.mat
im_multi_macbeth=a;

load Macbeth_31_24.mat
R=Macbeth_31_24;

load CMF.mat

load Illu_D65.mat

Image_reflectance=interpolation(im_multi_flowers);
imwrite(rgb_from_7(im_multi_flowers,7,4,1),'res/from_multispec_flowers.jpg')

Image_reflectance1=interpolation(im_multi_macbeth);
imwrite(rgb_from_7(im_multi_macbeth,7,4,1),'res/from_multispec_macbeth.jpg');

imwrite(rgb_from_31(Image_reflectance,CMF),'res/from_reflectance_flowers.jpg');
imwrite(rgb_from_31(Image_reflectance1,CMF),'res/from_reflectance_macbeth.jpg');

[Image_reflectance2,D]=invers_indirect(im_multi_macbeth,R);

[R,Rr1,Rr2]=createRr(D,R,Illu_D65);

reflectance_courbe(R,Rr1,Rr2);

fprintf('\n\n')
gfc_courbes(R,Rr1,Rr2);

fprintf('\n\n')
[rgbInterpol,rgbInvIndirect]=deltaE_patchs(im_multi_macbeth,Image_reflectance1,Image_reflectance2);
imwrite(rgbInterpol,'res/Rr2_macbeth_31_15_7.jpg');
imwrite(rgbInvIndirect,'res/Rr1_macbeth_31_15_7.jpg');





