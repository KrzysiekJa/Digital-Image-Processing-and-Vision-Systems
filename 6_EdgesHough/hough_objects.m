%% Hough transform for a single object
close all; clearvars; clc;

image = imread('squares.png');


edge = edge(image, 'canny', 0.5, 2);
edge  = bwmorph(edge, 'thin', Inf);
hough = hough(edge);


subplot(1,3,1), imshow(image), title('original');
subplot(1,3,2), imshow(edge), title('Canny detection');
subplot(1,3,3), imshow(hough, [],'XData', [1 640],'YData', [1 640]), title('Hough space');


%% Hough transform and output peaks
close all; clearvars; clc;

image = imread('squares.png');


edge  = edge(image, 'canny', 0.5, 2);
edge  = bwmorph(edge, 'thin', Inf);
hough = hough(edge);
peaks = houghpeaks(hough, 8);


subplot(1,2,1), imshow(edge), title('Canny detection');
subplot(1,2,2), imshow(hough, [],'XData', [1 640],'YData', [1 640]), title('Hough space and peaks');
hold on;
plot(peaks(:,2) *3.55, peaks(:,1) *0.889, 'ro');
hold off;


%% Hough transform for a single object
close all; clearvars; clc;

I = imread('squares.png');
I = imrotate(I,33,'crop');


BW = edge(I,'canny');

[H,T,R] = hough(BW);
figure(1), imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P = houghpeaks(H,8,'threshold',ceil(0.3*max(H(:))));
x = T(P(:,2));
y = R(P(:,1));
plot(x,y,'s','color','white');
hold off;


% Find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
figure(2), imshow(I), hold on;
max_len = 0;
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    figure(2), plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

    % plot beginnings and ends of lines
    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

    % determine the endpoints of the longest line segment 
    len = norm(lines(k).point1 - lines(k).point2);
    if ( len > max_len)
        max_len = len;
        xy_long = xy;
    end
end


% highlight the longest line segment
figure(2), plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');


