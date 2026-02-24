## Solution to Lesson 2 Exercise 2

[Back to exercise 2](../02-project-planning.md#exercise-2-identifying-errors)

> ## Exercise 2: Identifying errors
>
> 1. What are some errors you can spot in the data? Typos, missing data, inconsistencies?
> 2. What improvements could be made to the choices in naming?
> 3. What are some errors in the spreadsheet that would be difficult to spot? Is there any way you can test this?
>

> ## Solution
> **1. Errors:**
> - Sequential order of well_position changes
> - Format of client_sample_id changes and cannot have spaces, slashes, non-standard ASCII characters
> - Capitalization of the replicate column changes
> - Volume and concentration column headers have unusual (not allowed) characters
> - Volume, concentration, and RIN column decimal accuracy changes
> - The prep_date and ship_date formats are different, and prep_date has multiple formats
> - Are there others not mentioned?
>
> **2. Improvements in naming:**
> - Shorten client_sample_id names, and maybe just call them "names"
>   - For example: "wt" for "wild-type". Also, they are all "1hr", so that is superfluous information
> - The prep_date and ship_date might not be needed
> - Use "microliters" for "Volume (µL)," etc.
>
> **3. Errors hard to spot:**
> - No space between "wild" and "type", repeated barcode numbers, missing data, duplicate names
> - Find by sorting, or counting
