function [rgbInterpol,rgbInvIndirect] = deltaE_patchs(ImgRef,ImgInterpol,ImgInvIndirect)
    
    rgbRef=rgb_from_7(ImgRef,7,4,1);
    rgbInterpol=rgb_from_7(ImgInterpol,31,15,7);
    rgbInvIndirect=rgb_from_7(ImgInvIndirect,31,15,7);
     
    fig=figure;imshow(rgbRef)
    suptitle('Selectionnez des rectangles à partir 24 patch');
    for p=1:24
        rect = getrect;
        patchRef=rgbRef(rect(2):rect(2)+rect(4), rect(1):rect(1)+rect(3),:);               
        patchInterpol=rgbInterpol(rect(2):rect(2)+rect(4), rect(1):rect(1)+rect(3),:);               
        patchInvIndirec=rgbInvIndirect(rect(2):rect(2)+rect(4), rect(1):rect(1)+rect(3),:);                       
        
        DE1 = DeltaE(patchRef,patchInterpol);
        DE2 = DeltaE(patchRef,patchInvIndirec);
        
        if p<10
            espace='  ';
        else
            espace=' ';
        end
        
        disp(['Patch:',num2str(p),espace,' | DELTA E ( Inversion indirect )= ',num2str(DE2, '%09.4f'),'| DELTA E ( Interpolation )= ',num2str(DE1, '%09.4f')]);             
    end
    close(fig)
end