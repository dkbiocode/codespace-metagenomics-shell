## Lesson 2 Exercise 1 Solution

[Back to exercise 1](../02-the-filesystem.md#exercise-1-finding-hidden-directories)

> 
> First use the `man` command to look at the options for `ls`. 
> ~~~
> $ man ls
> ~~~
> 
> 
> The `-a` option is short for `all` and says that it causes `ls` to "not ignore
> entries starting with ." This is the option we want. 
> 
> ~~~
> $ ls -a
> ~~~
> 
> 
> ~~~
>.  ..  data  .hidden  mags  taxonomy
> ~~~
> 
> 
> The name of the hidden directory is `.hidden`. We can navigate to that directory
> using `cd`. 
> 
> ~~~
> $ cd .hidden
> ~~~
> 
> 
> And then list the contents of the directory using `ls`. 
> 
> ~~~
> $ ls
> ~~~
> 
> 
> ~~~
> youfoundit.txt
> ~~~
> 
> 
> The name of the text file is `youfoundit.txt`.
> 
