function norm_features = normalize_features( feature_vectors )  
    [r,c,t] = size(feature_vectors);
     
    features = reshape(feature_vectors, r*c, t);  
    
    mean_f = mean(features);
    norm_features = bsxfun( @minus, features, mean_f );
    
    std_f = std(features);
    norm_features = bsxfun( @rdivide, norm_features, std_f );  
    
    norm_features = reshape(norm_features, r, c, t);
    plot_feature_vectors(norm_features)
end