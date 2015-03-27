function [segmented_image, region_total, e] = region_growing_color_static_queue (I, threshold, neighbours )
%%
% This function will segment a color image using region growing method with one
% seed point in (1,1) and eucledian distance.
% INPUT
%   I = Color image to be segmented
%   threshold = Positive integer representing the threshold of regions
%   neighbours = Positive integer representing the neighbours computation (
%   4 or 8 )
% OUTPUT
%   segmented_image = Segmented image
%   region_total = Total region generated
%   e = Computation time
%
% EXAMPLE OF USAGE
%   Suppose one wants to segment an image, I, using region growing method
%   with 50 threshold, and 4-connected neighbourhood.
%   The callback of this function can be as follows:
%       region_growing_color_static_queue( I, 50 , 4 )
%
% This function will utilize static array to store the queue. Another
% function utilizing dynamic array is also implemented. The reason is to see
% the comparisan of computation time between them.
%%
% Start the cpu clock
t = cputime;

I = double(I);


% Extract image size
[i_height, i_width, ~ ] = size(I);
i_size = i_height * i_width;

%Initiate the parameters and variables
seed_point = [1,1];
I_temp=zeros(i_height, i_width);
region_total = 1;
region_size = 1;

% Set the current intensity to store first value
u_ri = squeeze(I(1,1,:)); 

% Define a static queue to store the evaluation sequence
queue = zeros(i_size,2);
queue_last = 1;
queue(1,:) = seed_point;

% Set the type of neighbours
if( neighbours == 8 )
    neighbours = [-1 0; -1 1;0 1; 1 1;1 0; 1 -1;0 -1;-1 -1 ];
else
    neighbours = [-1 0; 0 1; 1 0; -1 0 ];
end
%mean_pix =  current_intensity;
% Start growing the region sequentially
for im_counter_w = 1 : i_width
    for im_counter_h = 1 : i_height
        % Check whether the pixel has ever been evaluated before
        if( I_temp(im_counter_h, im_counter_w) == 0 )
            % Check whether the pixel is within the same region using
            % eucledian distance
            pix_intent =  squeeze(I(im_counter_h, im_counter_w,:));
            
            eucle_distance= norm(  (u_ri - pix_intent),2 );
            same_region = eucle_distance <= threshold;
            
            if ~same_region
                %Initiate all the parameter again for the new region
                u_ri = squeeze(I(im_counter_h, im_counter_w,:));
                queue = zeros(i_size,2);
                queue(1,:) = [im_counter_h, im_counter_w];
                region_size = 1;
                queue_last = 1;
                % Increase number of region
                region_total = region_total + 1;
                
            else
                % If it is the same region, labelled the pixel
                I_temp(im_counter_h, im_counter_w ) = region_total;
            end
            
            % Start exploring the neighbour until it reaches the end of the
            % queue or the region size is the same as the image size
            while queue_last <= region_size && region_size <= i_size
                % Get the index of the next pixel from the queue
                i = queue(queue_last, 1);
                j = queue(queue_last, 2);
                % Labelled this pixel to be on the same region
                I_temp(i,j ) = region_total;
                
                % Start exploring the neighbours
                for n = 1 : size(neighbours)
                    neighbour_position = [i j] + neighbours(n,:);
                    
                    %Check if it is stil within image
                    if (neighbour_position(1)>= 1 && neighbour_position(2)>=1....
                       && neighbour_position(1) <= i_height && neighbour_position(2)<= i_width )    
                          
                        pix_intent =  squeeze(I(neighbour_position(1), neighbour_position(2),:));
                        
                        eucle_distance= norm( (u_ri - pix_intent),2);
                        
                        same_region = eucle_distance <= threshold;
                        
                        %If it is in the same region and it is not labelled
                        %yet
                        if same_region 
                            if(  I_temp(neighbour_position(1),neighbour_position(2)) == 0)
                                % Labelled the pixel
                                u_ri = ( double(u_ri*region_size) + double(pix_intent) ) / (region_size+1);
                                I_temp( neighbour_position(1), neighbour_position(2) ) = region_total;
                                % Update region size
                                region_size = region_size + 1;
                                % Update the queue list
                                queue(region_size , : )  = [neighbour_position(1),neighbour_position(2)];
                            end
                        end
                    end
                end
                %Go to the next qeue
                queue_last =  queue_last +1 ;
            end
        end
        
    end
end

%Labelled the image
segmented_image = label2rgb(uint8(I_temp));
%Calculate the computation time
e = cputime - t;

figure
subplot( 1,2, 1); imshow( I_temp, []);
subplot( 1,2, 2); imshow( segmented_image, []);
end

