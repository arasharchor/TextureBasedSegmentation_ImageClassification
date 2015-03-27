function v = computeFeatureVector(A)
%
% Describe an image A using texture features.
%   A is the image
%   v is a 1xN vector, being N the number of features used to describe the
% image
%

if size(A,3) > 1
    mr = mean((A(:,:,1)));
    mg = mean((A(:,:,2)));
    mb= mean((A(:,:,3)));
	A = rgb2gray(A);
 end
gray_m = mean(mean(A));
d=1;
%[0 d; -d d; -d 0; -d -d]
glcm = graycomatrix(A,'NumLevels',8,'offset',  [0 1], 'Symmetric', false);
stats=graycoprops(glcm);       
v=[gray_m];%.6750
%v =[mr mb mg];%1
%v = [extractfield(stats,'Contrast')];%35%
%v = [extractfield(stats,'Correlation')];%20
%v = [extractfield(stats,'Energy')];%3875
%v =[extractfield(stats,'Homogeneity')];%38.75%
%v =[entropy(glcm)];%25
%v = [extractfield(stats,'Contrast') extractfield(stats,'Homogeneity') ];% 0.4875
%v =[extractfield(stats,'Contrast') extractfield(stats,'Correlation') extractfield(stats,'Energy') extractfield(stats,'Homogeneity')];%7375
%v = [extractfield(stats,'Contrast') extractfield(stats,'Correlation') extractfield(stats,'Energy') extractfield(stats,'Homogeneity') entropy(glcm)];%78.75
%v = [mr,mg,mb,extractfield(stats,'Contrast')  extractfield(stats,'Energy') extractfield(stats,'Correlation') extractfield(stats,'Homogeneity') entropy(glcm)];%78.75
