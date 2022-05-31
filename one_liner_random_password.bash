#!/bin/bash

# Each of the below commands generate a random password upon execution

# This method uses SHA to hash the date, runs through base64, and then outputs the top 32 characters.
date +%s | sha256sum | base64 | head -c 32 ; echo

# This method used the built-in /dev/urandom feature, and filters out only characters that you would normally use in a password. Then it outputs the top 32.
< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;

# This one uses openssl’s rand function, which may not be installed on your system
openssl rand -base64 32

# This one works a lot like the other urandom one, but just does the work in reverse.
tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1

# Another example that filters using the strings command, which outputs printable strings from a file, which in this case is the urandom feature.
strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo

# And here’s the easiest way to make a password from the command line
date | md5sum
