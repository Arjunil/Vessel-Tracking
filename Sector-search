%Program to detect black line in white background

% NOTE: X direction is the direction of columns and Y is the direction
% along rows. Modify code accordingly

img_path = ('L:\storage\Google Drive\Project\Images\straight.png');
img1=imread(img_path);
imshow(img1);
hold on
%user defined start and stop points(manually indicated) in [Y,X]
start=[48 52];
stop=[81 58];
%direction vector
v = stop - start;
%unit vector in that direction
v_dir=v/norm(v);
min_pos= [0 0];
RADIUS=5;
ANGLE=90;
min_val= 255;
perimeter_point_LI = min_pos;
% count =0 ;
% count2 =0 ;

for theta = -ANGLE:ANGLE ;
%     count = count +1; To count no. of iterations of loop
    rotation_matrix = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
    %roatating direction vector
    rotated_vdir = v_dir * rotation_matrix;
    %finding new point in image matrix 'Radius' distance ahead of current
    %point
    
    perimeter_point = start + round(rotated_vdir .* RADIUS);
    %If same point detected again, continue to next iteration
    if (perimeter_point_LI == perimeter_point)
        continue
    end
    
    perimeter_point_LI=perimeter_point;
    
    plot(perimeter_point(1),perimeter_point(2),'b*');
    hold on
    %storing value of pixel at new point in pix_val
    pix_val=img1(perimeter_point(2),perimeter_point(1));
    if min_val >= pix_val
%         count2 = count2+1; count no. of comparisons
        min_val = pix_val;
        min_pos = perimeter_point;
    end
end
disp('The minimum position is')
min_pos
disp('The pixel value at this position')
img1(min_pos(2),min_pos(1))
% count
% count2
    


