%NOTE: The img_path variable needs to be changed according to the location
%of the image to be used


%img_path = ('H:\storage\Google Drive\Project\Images\coronary2.jpg');
%img_path = ('H:\storage\Google Drive\Project\Images\straight.png');
%img_path = ('C:\Documents and Settings\Admin\Desktop\Project\coronary2.jpg')
%img_path = ('Brain_vessels.jpg')
img_path = ('images (4).jpg')
%img_path = ('images (5).jpg')

%img_path = ('Images/download.jpg')
img=imread(img_path);

imshow(img);
hold on;

%user defined start and next points(graphically indicated) in [Y,X]
[x,y]=ginput(2);
start=[round(x(1)) round(y(1))];
next=[round(x(2)) round(y(2))];

plot(start(1), start (2) ,'r*');
plot(next(1), next (2) ,'r*');

for p = 1:50 ;
    new_point = sector_search(img,10,70, start, next);
        
    start = next;
    next = new_point;
    
end
