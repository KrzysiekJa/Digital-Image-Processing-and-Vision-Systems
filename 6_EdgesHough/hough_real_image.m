%% lab112.png
close all; clearvars; clc;

I  = imread('lab112.png');


BW = edge(I,'canny', [0.2 0.8], 4);
BW = bwmorph(BW, 'thin', Inf);

[H,T,R] = hough(BW);
figure(1), imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P = houghpeaks(H, 8, 'threshold', ceil(0.3*max(H(:))));
x = T(P(:,2));
y = R(P(:,1));
plot(x,y,'s','color','white');
hold off;


% Find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
figure(2), imshow(I), hold on
max_len = 0;
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    figure(2), plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green'), hold on;

    % plot beginnings and ends of lines
    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow'), hold on;
    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red'), hold on;

    % determine the endpoints of the longest line segment 
    len = norm(lines(k).point1 - lines(k).point2);
    if ( len > max_len)
        max_len = len;
        xy_long = xy;
    end
end


% highlight the longest line segment
figure(2), plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');



%% house.png
close all; clearvars; clc;

I  = imread('house.png');


BW = edge(I, 'sobel');
BW = bwmorph(BW, 'thin', Inf);

[H,T,R] = hough(BW);
figure(1), imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P = houghpeaks(H, 20, 'threshold', ceil(0.3*max(H(:))));
x = T(P(:,2));
y = R(P(:,1));
plot(x,y,'s','color','white');
hold off;


% Find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
figure(2), imshow(I), hold on
max_len = 0;
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    figure(2), plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green'), hold on;

    % plot beginnings and ends of lines
    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow'), hold on;
    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red'), hold on;

    % determine the endpoints of the longest line segment 
    len = norm(lines(k).point1 - lines(k).point2);
    if ( len > max_len)
        max_len = len;
        xy_long = xy;
    end
end


% highlight the longest line segment
figure(2), plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');


