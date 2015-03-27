function [o_im, reg_tot, e]= segment_image(feature_vectors, im_name)
threshold = 0;
neighbours = 8;
seed_point = [1,1];
switch(im_name)
    case 'feli'
        %feature_vectors = feature_vectors(:,:,[1,2,3,4]);
        feature_vectors =feature_vectors(:,:,[1,2,3,10]);
       threshold =145 ; %90;
       [o_im, reg_tot, e] = region_growing_color_static_queue(feature_vectors, threshold,neighbours );
    case 'hand'
        %feature_vectors = feature_vectors(:,:,[1,2,3,13,14,15]);
        feature_vectors = feature_vectors(:,:,[1,2,3,13]);
        threshold = 75; %55;
        [o_im, reg_tot, e] = region_growing_color_static_queue(feature_vectors, threshold,neighbours );
    case 'mozaic'
        feature_vectors = normalize_features( feature_vectors );
        threshold = 5; seed_point = [128, 128];
        [o_im, reg_tot, e] =region_growing_color_static_queue_seed_point(feature_vectors,seed_point, threshold,neighbours );
        
    case 'pingpong'
        %feature_vectors = feature_vectors(:,:,[1,2,3,10,11,12]);
        feature_vectors = feature_vectors(:,:,[1,2,3,13]);
        threshold = 55; %65; 
        [o_im, reg_tot, e] = region_growing_color_static_queue(feature_vectors, threshold,neighbours );
end
end

