%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
%           Generated by MATLAB 9.4 and Fixed-Point Designer 6.1           %
%                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function netScores = lenetSynthMatlab_wrapper_fixpt(inputImg)
    fm = get_fimath();
    inputImg_in = fi( inputImg, 0, 8, 0, fm );
    global biasConv1 biasConv2 biasFC1 biasFC2 biasFC3 weightsConv1 weightsConv2 weightsFC1 weightsFC2 weightsFC3 biasConv1_g biasConv2_g biasFC1_g biasFC2_g biasFC3_g weightsConv1_g weightsConv2_g weightsFC1_g weightsFC2_g weightsFC3_g
    biasConv1_g = fi( biasConv1, 1, 16, 27, fm );
    biasConv2_g = fi( biasConv2, 1, 16, 25, fm );
    biasFC1_g = fi( biasFC1, 1, 16, 25, fm );
    biasFC2_g = fi( biasFC2, 1, 16, 23, fm );
    biasFC3_g = fi( biasFC3, 1, 16, 18, fm );
    weightsConv1_g = fi( weightsConv1, 1, 16, 16, fm );
    weightsConv2_g = fi( weightsConv2, 1, 16, 17, fm );
    weightsFC1_g = fi( weightsFC1, 1, 16, 18, fm );
    weightsFC2_g = fi( weightsFC2, 1, 16, 18, fm );
    weightsFC3_g = fi( weightsFC3, 1, 16, 17, fm );
    [netScores_out] = lenetSynthMatlab_fixpt( inputImg_in );
    biasConv1 = single( biasConv1_g );
    biasConv2 = single( biasConv2_g );
    biasFC1 = single( biasFC1_g );
    biasFC2 = single( biasFC2_g );
    biasFC3 = single( biasFC3_g );
    weightsConv1 = single( weightsConv1_g );
    weightsConv2 = single( weightsConv2_g );
    weightsFC1 = single( weightsFC1_g );
    weightsFC2 = single( weightsFC2_g );
    weightsFC3 = single( weightsFC3_g );
    netScores = single( netScores_out );
end

function fm = get_fimath()
	fm = fimath('RoundingMethod', 'Floor',...
	     'OverflowAction', 'Wrap',...
	     'ProductMode','FullPrecision',...
	     'SumMode','FullPrecision');
end
