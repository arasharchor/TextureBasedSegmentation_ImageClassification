function [] = plot_feature_vectors( feature_vectors )
%PLOT_FEATURE_VECTORS Summary of this function goes here
%   Detailed explanation goes here
tot_v = size(feature_vectors,3);
row_size = ceil(tot_v/3);
figure
subplot(row_size,3,1), imshow(feature_vectors(:,:,1),[]);title('R');
subplot(row_size,3,2), imshow(feature_vectors(:,:,2),[]);title('G');
subplot(row_size,3,3), imshow(feature_vectors(:,:,3),[]);title('B');
for p = 1 :ceil((tot_v-4)/3)
    subplot(row_size,3,1 + 3*p), imshow(feature_vectors(:,:,1 + 3*p),[]);title('Contrast');
    subplot(row_size,3,2 + 3*p), imshow(feature_vectors(:,:,2 + 3*p),[]);title('Homogeneity'); 
    subplot(row_size,3,3 + 3*p), imshow(feature_vectors(:,:,3 + 3*p),[]);title('Energy');
end
end

