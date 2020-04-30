function [Image_RGB] = rgb_from_7(I_mult,r,g,b)
   R=I_mult(:,:,r);
   G=I_mult(:,:,g);
   B=I_mult(:,:,b);
   Image_RGB= uint8(cat(3,R,G,B));
   %figure,imshow(Image_RGB)
end