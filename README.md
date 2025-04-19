# encryptions
Encryptions

These are a pair of functions that can be used to encrypt and decrypt messages using the hill algorithm. 
It is dependant on the two algorithms using the same matrix. 


Encyption ***********************************************************

The function takes a string of lower-case letters and spaces as input,

and finds the corresponding numbers such that
a = 1, b = 2, ..., z = 26, and {space} = 27. *^

It then creates a matrix with compatible dimensions to
our matrix of transformation and finds their product. 

Then it outputs the entries as a single row vector.


Decryption **********************************************************

The function takes a row vector as input,

and creates a matrix with compatible dimensions to the inverse
of our matrix of transformations and finds their product.

It then finds the letters corresponding to the product, such that
1 = a, 2 = b, 26 = z, 27 = {space}. *^^

Then it outputs the corrresponding string.




*^ this will also work for other characters, but their values will not be in [1,27].
  
*^^ the converse of *^
