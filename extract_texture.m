function feature_vectors = extract_texture (im, w, d, numlvl) 
%Extracted features
    %   - Contrast
    %   - Homogeneity
    %   - Energy

%I_gray = rgb2gray(im);
I_gray = double( rgb2gray(im) );
I_gray = mat2gray(I_gray);

[m ,n] = size(I_gray);
orient = size(d,1);
feature_vectors = zeros(m,n, orient*3 +3 );
feature_vectors(:,:,1) = im(:,:,1);
feature_vectors(:,:,2) = im(:,:,2);
feature_vectors(:,:,3) = im(:,:,3);

wsize_2 = floor(w/2);
I_padded = padarray(I_gray,[wsize_2,wsize_2]);

for  i = wsize_2+1:m
   for j = wsize_2+1:n
       img_window = I_padded(i-wsize_2:i+wsize_2,j-wsize_2:j+wsize_2);
       glcm = graycomatrix(img_window,'NumLevels',numlvl,'offset', d, 'Symmetric', true);
       stats=graycoprops(glcm);
       con = extractfield(stats,'Contrast');
       homo = extractfield(stats,'Homogeneity');
       energy = extractfield(stats,'Energy');
       
       for p = 1:orient
      feature_vectors(i-wsize_2 , j - wsize_2 , 1 + 3*p) = con(p);
       feature_vectors(i-wsize_2 , j - wsize_2 , 2 + 3*p ) = homo(p);
       feature_vectors(i-wsize_2 , j - wsize_2 , 3 + 3*p ) = energy(p);
       end
   end
end

end

