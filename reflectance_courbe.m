function reflectance_courbe(Rm,Rr1,Rr2)    
    x = 1:31;
    
    for i = 1 : 24                 
        patch_Rm = Rm(:,i);  patch_Rr1 = Rr1(:,i);  patch_Rr2 = Rr2(:,i); 
        
        subplot(4,6,i),plot(x,patch_Rm,x,patch_Rr1,x,patch_Rr2),title(['Patch:',num2str(i)]);
    end
    suptitle('Bleu => patch Rm || Rouge => patch Rr1 || Orange => patch Rr2')
end