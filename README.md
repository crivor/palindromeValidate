palindromeValidate
==================

Simple script to read a .txt file and validate whether a line is a palindrome or not. Script is now tolerant of line endings and will remove them with chomp.


Literal String Evaluation
==================

Once a file is read in, it is stored as the pre-defined string, $forward. Perl's reverse function is applied to the forward string and the output is stored as the string $reverse. Both strings are printed to stanard output. Once both strings have been printed, the eq operator is called between $forward and $reverse. The eq function validates the strings literal equality by looking into the strings contents. This is different from the = operator which would count the characters in the string without validating the strings content.