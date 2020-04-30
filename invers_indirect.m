function [Image_reflectance2,D] = invers_indirect(I_mult,R)
    
    D=zeros(24,7);     
    fig=figure;imshow(uint8(I_mult(:,:,1))) 
    suptitle('Selectionnez des rectangles à partir 24 patch');
    [r,c,z]=size(I_mult);
    
    for i=1:24
        disp(['Patch ',num2str(i)]);
        rect = getrect;
        D(i,:)=mean(mean(I_mult(rect(2):rect(2)+rect(4), rect(1):rect(1)+rect(3),:))) ;               
    end
    close(fig);
    
    invD = pinv(D);
    Q = invD * R;    
    im=reshape(I_mult,r*c,z);
    Image_reflectance2=double(im)*Q;
    Image_reflectance2=reshape(Image_reflectance2,r,c,31);
    Image_reflectance2=normalize(Image_reflectance2);
end