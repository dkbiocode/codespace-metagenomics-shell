## Solution to Lesson 2 Exercise 3

[Back to exercise 3](../02-project-planning.md#exercise-3-exploring-sequencing-metadata)

> ## Exercise 3: Exploring sequencing metadata
>
> 1. How are these samples organized?
> 2. If you wanted to relate file names to the sample names submitted above (e.g., wild type), could you do so?
> 3. What do the \_R1/\_R2 extensions mean in the file names?
> 4. What does the '.gz' extension on the filenames indicate?
> 5. What is the total file size - what challenges in downloading and sharing these data might exist?
>

> ## Solution
> 1. Samples are organized by sample_id
> 2. To relate filenames, use the sample_id and do a VLOOKUP on the submission sheet
> 3. The \_R1/\_R2 extensions mean "Read 1" and "Read 2" of each sample
> 4. The '.gz' extension means it is a compressed "gzip" type format to save disk space
> 5. The size of all the files combined is 1113.60 Gb (over a terabyte!). To transfer files this large, you should validate the file size following the transfer. Absolute file integrity checks following transfers and methods for faster file transfers are possible but beyond the scope of this lesson.
