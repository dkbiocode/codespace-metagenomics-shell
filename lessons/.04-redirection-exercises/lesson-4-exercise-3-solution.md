## Solution to Lesson 4 Exercise 3

[Back to exercise](../04-redirection.md#exercise-3-using-basename)

>  
>
> ~~~
> $ for filename in *.txt
> > do
> > name=$(basename ${filename} .txt)
> > echo ${name}
> > done
> ~~~
> 
> 