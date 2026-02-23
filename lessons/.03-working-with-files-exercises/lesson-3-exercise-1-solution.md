## Lesson 3 Exercise 1 solution

[Back to exercise 1](../03-working-with-files.md#exercise-1-make-backup-folder-with-write-protected-permissions)

> > 1. `rm -r backup`  
> > 2. `cp JC1A_R1.fastq JC1A_R1-backup.fastq`, `cp JC1A_R2.fastq JC1A_R2-backup.fastq`, `cp JP4D_R1.fastq JP4D_R1-backup.fastq`  
> > and `cp JP4D_R2.fastq JP4D_R2-backup.fastq` 
> > 3. `mkdir backup` and `mv *-backup.fastq backup`
> > 4. `chmod -w backup/*-backup.fastq`   
> > It's always a good idea to check your work with `ls -l backup`. You should see something like: 
> > 
> > ~~~
> > -r--r--r-- 1 vscode vscode  24203913 Jun 17 23:08 JC1A_R1-backup.fastq
> > -r--r--r-- 1 vscode vscode  24917444 Jun 17 23:10 JC1A_R2-backup.fastq
> > -r--r--r-- 1 vscode vscode 186962503 Jun 17 23:10 JP4D_R1-backup.fastq
> > -r--r--r-- 1 vscode vscode 212161034 Jun 17 23:10 JP4D_R2-backup.fastq
> > ~~~
> > 
