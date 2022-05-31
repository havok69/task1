# Problem 4

## Single quotes:
Enclosing characters in single quotation marks (‘) holds onto the literal value of each character within the quotes.  In simpler words, the shell will interpret the enclosed text within single quotes literally and will not interpolate anything including variables, backticks, certain \ escapes, etc. No character in the single quote has special meaning. This is convenient when you do not want to use the escape characters to change the way the bash interprets the input string.

## Double quotes:
Double quotes are similar to single quotes except that it allows the shell to interpret dollar sign ($), backtick(`), backslash(\) and exclamation mark(!). The characters have special meaning when used with double quotes, and before display, they are evaluated. A double quote may be used within double quotes by preceding it with a backslash.

## Example
```bash
mars=12
echo "$mars"
echo 'mars'
```
### Output:
```
12
mars
```


# Problem 5

Environment variables are set when you open a new shell session. at any time if you change any of the variable values, the shell has no way of picking that change. The export command, on the other hand, provides the ability to update the current shell session about the change you made to the exported variable. You don’t have to wait until new shell session to use the value of the variable you changed.

Therefore when we execute ‘rovername=vajra’ in bash, we initialized the variable 'rovername' and the current shell is not updated with the new value of the variable, whereas 'export rovername=vajra' updates the current shell  about the initialization and the variable can be used with the new value.