# Regular expressions #
often called regex, define patterns for matching strings of text. They use a mix of literal characters and special metacharacters to search, validate, or manipulate data efficiently across programming languages and tools.

## Basic Example ##
The pattern \d{3}-\d{2}-\d{4} matches US phone numbers like "123-45-6789", where \d denotes digits and {n} specifies repetitions. Test patterns in tools like regex101.com for practice.

## Core Quantifiers ##

The * matches zero or more occurrences, such as a* matching "", "a", or "aaa" in "aaab".
​The + requires one or more, so a+ matches "a" or "aaa" but not "" in "aaab".​
The ? matches zero or one, like colou?r capturing both "color" and "colour".​


​

