function deltaE = DeltaE(patchRef,patchRes)
    cform = makecform('srgb2lab');
	lab_I1 = double(applycform(patchRef,cform));
    lab_I2 = double(applycform(patchRes,cform));
    
    LChannel = lab_I1(:, :, 1); LChanne2 = lab_I2(:, :, 1); 
	aChannel = lab_I1(:, :, 2); aChanne2 = lab_I2(:, :, 2);
	bChannel = lab_I1(:, :, 3); bChanne2 = lab_I2(:, :, 3);
	
    deltaL = (LChannel - LChanne2).^ 2;
	deltaa = (aChannel - aChanne2).^ 2;
	deltab = (bChannel - bChanne2).^ 2;
    
    deltaE = mean(mean(sqrt(deltaL + deltaa + deltab )));
    
end