
x = csvread('exampleSignal.csv');

N = 30;

x_axis = 1:N;
y_axis = zeros(N);

for index = x_axis
    windowSize = index;
    b = (1/windowSize)*ones(1,windowSize);
    a = 1;
    y = filter(b,a,x);
    number_of_peaks = findpeaks(y);
    y_axis(index) = numel(number_of_peaks);
end

plot(x_axis,y_axis)
