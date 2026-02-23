## Lesson 2 Exercise 2 Solution

[Back to exercise 2](../02-the-filesystem.md#exercise-2-relative-path-resolution)

> ## Solution
>  1. No: there *is* a directory `backup` in `/Users`.
>  2. No: this is the content of `Users/thing/backup`,
>   but with `..` we asked for one level further up.
>  3. No: see previous explanation.
>    Also, we did not specify `-F` to display `/` at the end of the directory names.
>  4. Yes: `../backup` refers to `/Users/backup`.
> 

