% Code By: Keshav Sinha, Edited by Mausami Karmakar, Problem Defined and Edited by Gopal rawat
% Define the number of columns in the magic cube
cols = 10;
range_r = 10;
% Define the desired sum of each column
desired_sum = [97
96
93
95
97
98
98
98
0
98
96
97
0
99
92
98
97
98
98
98
98
97
97
91
96
94
95
96
98
98
20
93
97
97
96
98

];
tt = length(desired_sum);
magic_cube = zeros(tt, cols);
% Generate the magic cube

for stu = 1:tt
    stu
for col = 1:cols
    % Generate a random value within the specified range
    col_value = randi([1, range_r]);

    % Assign the random value to the column
    magic_cube(stu, col) = col_value;
end
% Create a matrix to store the magic cube

% Calculate the current sum of all column values
current_sum = sum(magic_cube(stu,:));
% Adjust the column values to ensure the desired sum
while current_sum ~= desired_sum(stu)

    % Calculate the difference between the current sum and the desired sum
    diff = desired_sum(stu) - current_sum;
    if desired_sum(stu) ==0
    magic_cube(stu,:) = 0
    break;
    end
    % Randomly select a column index
    col_index = randi(cols);

    % Check if the difference is positive or negative
    if diff > 0
        % Increase the column value if the difference is positive
        if magic_cube(stu, col_index) < range_r
            magic_cube(stu, col_index) = magic_cube(stu, col_index) + 1;
            current_sum = current_sum + 1;
        end
    else
        % Decrease the column value if the difference is negative
        if magic_cube(stu, col_index) > 1
            magic_cube(stu, col_index) = magic_cube(stu, col_index) - 1;
            current_sum = current_sum - 1;
        end
    end
end

end
% Display the magic cube
disp(magic_cube);
