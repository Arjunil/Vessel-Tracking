
% NOTE: X direction is the direction of columns and Y is the direction
% along rows. Modify code accordingly

function point = sector_search(img1, radius, angle, start, next)


%direction vector
v = next - start;
%unit vector in that direction
v_dir=v/norm(v);
min_pos= [0 0];
%RADIUS=5;
%ANGLE=90;
min_val= 255;
perimeter_point_LI = min_pos;
% count =0 ;
% count2 =0 ;

for theta = -angle:5:angle ;
%     count = count +1; To count no. of iterations of loop
    rotation_matrix = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
    %roatating direction vector
    rotated_vdir = v_dir * rotation_matrix;
    %finding new point in image matrix 'Radius' distance ahead of current
    %point
    
    perimeter_point = next + round(rotated_vdir .* radius);
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
plot(min_pos(1),min_pos(2), 'g*');
point = min_pos;
% count
% count2
end    
