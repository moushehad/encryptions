function msg = unhill(codes)

%build the matrix A
%find its size
%reshape the code to allow for mat mult
%multiply
%change the 27 back to -64
%add 96 to return to ascii
%return to letters and list the elements of the product matrix

%build the matrix A
A = [3 2
     1 1];

%find its size
[rows_A,cols_A] = size(A);

%reshape the code to allow for mat mult
shaped = reshape(codes, rows_A, numel(codes) / rows_A);

%multiply
numCode = round(inv(A) * shaped);

%change the 27 back to -64
numCode(numCode == 27) = -64;

%add 96 to return to ascii
numCode = numCode + 96;

%list the elements of the product matrix
msg = char(numCode(:)');

inv(A)