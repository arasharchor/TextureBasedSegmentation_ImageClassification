function feature_vectors = extract_feature_vectors(im, im_name, save_file_name)

numLvl = 8;
switch(im_name)
    case 'feli'
       offset = [0 2]; window_size =15;
    case 'hand'
       offset = [-2 2]; window_size =15;
    case 'mozaic'
       offset = [0 2; -2 2; -2 0; -2 -2]; window_size = 30;
    case 'pingpong'
       offset = [2 0]; window_size =15;      
end
 tic
 feature_vectors = extract_texture(im, window_size, offset, numLvl);
 toc
 
 save(save_file_name,'feature_vectors');
 
end

