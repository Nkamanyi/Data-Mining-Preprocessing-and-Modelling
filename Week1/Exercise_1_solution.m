%% Question 1.

% Integers from 100 to 1
t1 = 100:-1:1;

% Integers from 1 to 100 with intervals of 2
t2 = 1:2:100;

%% Question 2.

t1 = 1:100

f=50
F=8192
y=sin(2*pi*t1*(f/F))

y2=cos(2*pi*t1*(f/F))

plot(t1,y)
hold on
plot(t1,y2,'g')
xlabel('Time instant');
ylabel('Amplitude')
legend('Sine','Cosine');

diff = abs(y-y2);
[min_value, min_index] = min(diff);
intersection_point = t1(min_index)
plot(intersection_point)
% The intersection point of the signal visually is where y == y2 which is
% intersection_point(t1=20).

% Calculating the exact intersection point involves numerical analysis
% taking into account mathematical properties paterning to sine and
% cosine function respectively making it a complex procedure.

%% Question 3.

t1 = 1:100;
y1 = sin(2*pi*t1*(f/F));

% Calculate the derivative using finite differences
derivative_y1 = y1(2:end) - y1(1:end-1);

% Calculate the difference
diff_y1 = y1(2:end) - y1(1:end-1);

plot(t1(2:end),derivative_y1)
hold on
plot(t1(2:end),diff_y1,"g")
xlabel('Time instant');
ylabel('Derivative/Difference');
legend("derivative","Difference")

%% Question 4.

% Load Data
matrix = load('Matrix.txt')

% Locate 5th Row
fifth_row = matrix(5,:)
plot(fifth_row)

% Sound of 5th Row
soundsc(fifth_row)

% Mean of Row, Column, and Whole Matrix
row_mean = mean(matrix, 2);
column_mean = mean(matrix, 1);
matrix_mean = mean(matrix,"all");

disp('Row Mean:'); disp(row_mean);
disp('Column Mean:'); disp(column_mean);
disp('Matrix Mean:'); disp(matrix_mean);

%% Question 5.

% Step 1: Load Data
data = load('Matrix.txt');

% Step 2: Determine Amplitude
amplitudes = rms(data, 2);

% Step 3: Signal with min Amplitude
[min_amplitude, signal_index] = min(amplitudes);

% Signal sound
soundsc(data(3,:))

%% Question 6.

% Step 1: Import Data
data = importdata('inco13par.txt');
numeric_data = data.data

% Step 2: Get Number of Cases and Variables
[num_row, num_col] = size(numeric_data)

% Step 3: Count Missing Values for Each Variable
numb_missing_values = sum(isnan(numeric_data));
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 

disp(['Number of Cases: ', num2str(num_row)]);
disp(['Number of Variables: ', num2str(num_col)]);
disp('Number of Missing Values for Each Variable:');
disp(numb_missing_values);


