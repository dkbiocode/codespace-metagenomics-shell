## Solution to Lesson 3 Exercise 2

[Back to exercise 2](../03-ncbi-sra.md#exercise-2-exploring-the-european-nucleotide-archive)

> ## Exercise 2: Exploring the European Nucleotide Archive
>
> Navigate to the [ENA](https://www.ebi.ac.uk/ena) and search the BioProject "PRJEB22811". Explore the ENA Browser and discuss with your
> neighbor the differences between the ENA Browser and the SRA Run Selector.
>

> ## Solution
> For downloading the reads, there are mainly two options:
> * One by one: Go to the **Run Browser** of each sample, navigate to the tab **FASTA/FASTQ download** and click on the **FASTQ** button.
> * Complete dataset: In the SRA **Run Selector** of the BioProject, go to the **Select** section and click on the **Accession List** button. This will 
> download a text file `SRR_Acc_List.txt` that you can use to download the reads in bulk with the [SRA Toolkit](http://www.ncbi.nlm.nih.gov/Traces/sra/?view=toolkit_doc), a command-line software package, which is outside the scope of this lesson.

