function gfc_courbes(Rm,Rr1,Rr2)
    
    for c = 1 : 24         
        gfc1 = GFC(Rm,Rr1,c);
        gfc2 = GFC(Rm,Rr2,c);        
        if c<10
            espace='  ';
        else
            espace=' ';
        end
        
        disp(['Courbe:',num2str(c),espace,'| GFC (Rm et Rr1)= ',num2str(gfc1, '%0.5f'),' | GFC(Rm et Rr2)= ',num2str(gfc2, '%0.5f')]);         
    end

end