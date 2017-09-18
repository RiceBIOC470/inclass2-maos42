%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

x=1;
x
for ii=(1:20);
    x=x+2;
    if x<20;
        display(x)
end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement

for ii=(1:10);
    odd=ii*2-1;
    display(odd)
end


% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

c=[1:2:20]';
disp(num2str(c))



%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100;
    z(ii) = ii*ii
end

%Miguel Angel: I will change the result to V, that way you can compare it
%against Z easier than rewriting Z everytime I put the vectorized code.
%Miguel angel:

x=[1:100];
v=x.^2

if v==z;
    display('Code has been vectorized')
else
    display('NOT EQUAL')
end;

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

%Miguel Angel:

y=1:100;
v2=sum(y)

if v2==z;
    display('Code has been vectorized')
else
    display('NOT EQUAL')
end;

%c.

xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

%Miguel Angel:

xxsquared =xx.^2;
ZV=sqrt(sum(xxsquared,2));
ZV

if ZV==z'
    display('Code has been vectorized')
else
    display('NOT WORKING')
end

% d. what is the formula in c computing?

%Miguel Angel: The formula in C is generating a matrix of 50 rows
%and 2 columns with random values (all values should be between 0-1
%exclusive). Then you're making an index of 50, meaning that the loop will
%repeat 50 times. Then you are telling that each value of the column 1 (of xx),
%square it and sum the squared values of column 2 (each value squared, same
%as column1), after that, you're doing the square root of that sum, thus
%generating 50 values as a result. The formula you're putting is
%c^2=a^2+b^2. So you could say that with creating xx = random(50,2),
%esentially you are making first column a and the second column b, and the
%result z, is c. 



%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

x=linspace(0,4*pi,400);
y=cos(x);
y2=sin(x);


plot(x,y, 'color','b'); hold on;
plot(x,y2,'color','r');
xlim([0 12.6]);

%or

plot(x,y,'b',x,y2,'r')
xlim([0 12.6]);

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

x=linspace(0,4*pi,400);
y=cos(x);
y2=sin(x);

subplot(2,1,1);
plot(x,y);
xlim([0 12.6]);
title('Cos(X)');

subplot (2,1,2);
plot(x,y2,'r');
xlim([0 12.6]);
title('Sin(x)');

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.

xdat=xy_dat(:,1);
ydat=xy_dat(:,2);

plot(xdat,ydat);
xlim([0 1]);

%Miguel Angel: alternatevely, for less messy graph:

scatter(xdat,ydat);

%now imagine there is some fluorescence data corresponding to the same
%cells
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.

xdat=xy_dat(:,1);
ydat=xy_dat(:,2);

plot(xdat,ydat);
xlim([0 1]);

%Miguel Angel: alternatevely, for less messy graph:

scatter(xdat,ydat);

%now imagine there is some fluorescence data corresponding to the same
%cells
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command
%Miguel Angel:

fluor = rand(100,1);
xy_dat = rand(100,2);

xdat=xy_dat(:,1);
ydat=xy_dat(:,2);

plot(xdat,ydat);
hold on;
scatter(fluor,ydat,24,fluor,'filled');
xlim([0 1]);
title('XY data plotted and Fluorescence dotted');

