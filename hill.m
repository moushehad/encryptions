function code = hill(msg)

%build the matrix A
%find its size
%add spaces to prep for mat mult
%change the ascii to letter region
%change ascii -64 to our code 27 for spaces
%reshape the vector to a matrix for mat mult
%multiply
%list code

%build the matrix A
A = [3 2
     1 1];

%find its size
[rows_A,cols_A] = size(A);

%add spaces to prep for mat mult
while rem(numel(msg), cols_A) ~= 0;
    msg = [msg, ' '];
end;

%change the ascii to letter region
chars = double(msg) - 96;

%change ascii -64 to our code 27 for spaces
chars(chars == -64) = 27;

%reshape the vector to a matrix for mat mult
matChars = reshape(chars, rows_A, numel(msg) / rows_A);

%multiply
coded = A * matChars;

%list code
code = coded(:)';