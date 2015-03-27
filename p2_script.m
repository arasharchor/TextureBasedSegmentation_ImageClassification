%%%
clear all; clc;
im_name = 'mozaic'; %feli, hand,pingpong,mozaic;
vector =load_data(im_name);
plot_feature_vectors(vector.feature_vectors);
segment_image(vector.feature_vectors , im_name);





