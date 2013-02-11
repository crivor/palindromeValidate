palindromeValidate
==================

Simple script to read a one line .txt file and validate weather a line is a palindrome or not. 


Literal String Evaluation
==================

Once a file is read in with Slurp, it is stored as the string, $forward. Perl's reverse function is applied to the forward string and stores as the string $reverse. Both strings are printed to stanard output. Once both strings have been printed, the eq operator is called between $forward and $reverse. The eq function validates the strings literal equality by looking into the strings contents. This is different from the = operator which would count the characters in the string without validating the strings content.

Space, punctuation and line endings are considered characters at this time. Will add handler at a later time to disregard these characters.