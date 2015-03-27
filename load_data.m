function v=load_data(im_name)
    switch(im_name)
        case 'feli'
           v= load('./mat file/feature_vectors_feli_15_2_RGB'); %load('./mat file/feature_vectors_feli_21_1_RGB')
         case 'hand'
            v=load('./mat file/feature_vectors_hand_15_2_RGB');%load('./mat file/feature_vectors_hand_15_1_RGB');%
         case 'mozaic'
             disp('mozaic');
            v= load('./mat file/fv_mozaic_30_2_all'); %load('./mat file/fv_mozaic_30_3_all');
         case 'pingpong'
           v=  load('./mat file/feature_vectors_ping_13_2_RGB');
        otherwise
            v =disp('Feature vector is not available');
    end   
end
