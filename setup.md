---
layout: page
title: Setup
---

# Setup Location

## Using GitHub Codespaces 

This workshop can be run directly in GitHub Codespaces, a cloud-based development environment. This is the recommended approach as it requires no local installation.

To get started:
1. Navigate to the repository on GitHub
2. Click the green "Code" button
3. Select "Open with Codespaces"
4. Click "New codespace"

Once the Codespace is ready, you'll have access to a terminal with all the necessary tools and data pre-configured.

## Using your own HPC linux server

These workshop materials are designed with VS-Code running in Github Codespaces, but the steps are transferrable to any linux system. If your HPC has VS-Code Server available through On-Demand access, then your visual environment will be the same as Codespaces.

**However**, you must know the file/folder organization for your system.  Crucially, 
* HPCs typically have different file systems dedicated for your computational work. 
* HPCs are designed to have run computational commands in special sessions that allocates CPUs, memory, time limits, and other resources. 

# Software installation

We will use conda to setup up the software environment.  In Github Codespaces, we'll install locally with miniconda. Your HPC might have special instructions for conda setup, and already have it installed (although you still need to create the environment).

Considerations for HPCs:

* Is Anaconda available or is it OK to use miniconda?
* Is the mamba solver available? (not required but preferred)
* Are special installation locations required?

### Check HPC conda settings

If you have conda installed, do the following to see your current settings for: 

#### Solver:

```
$ conda config --show solver
libmamba
```

If you don't have libmamba, you can contact your system administrator. If you can't get it, it's OK: just slower.

#### Installation and environment locations

The following shows how an HPC might require alternative locations for these settings (user *dcking* installs to a path under */projects*)

```
conda config --show envs_dirs
envs_dirs:
  - /projects/.colostate.edu/dcking/software/anaconda/envs
  
$ conda config --show pkgs_dirs
pkgs_dirs:
  - /projects/.colostate.edu/dcking/.conda_pkgs
```

### Installing the environment

Once you have determined your conda setup details, you will create a new environment with:

```
conda env create -n dc-metagenomics -f metagenomics-Ubuntu22.yml 
```

This can take 5-10 minutes when successful, so let it run on its own.  When finished, you'll see:

```
#
# To activate this environment, use
#
#     $ conda activate dc-metagenomics
#
# To deactivate an active environment, use
#
#     $ conda deactivate
```

### Check your environment

Activate your environment as noted above, then verify installed versions like so:

```
(dc-metagenomics) $ conda list 'fastqc|trimmomatic|kraken|krona|maxbin2|spades|checkm-genome'
# packages in environment at /projects/.colostate.edu/dcking/software/anaconda/envs/dc-metagenomics:
#
# Name                    Version                   Build  Channel
checkm-genome             1.2.1              pyhdfd78af_0    bioconda
fastqc                    0.11.9               hdfd78af_1    bioconda
kraken-biom               1.2.0              pyh5e36f6f_0    bioconda
kraken2                   2.1.2           pl5321h9f5acd7_2    bioconda
krona                     2.8.1           pl5321hdfd78af_1    bioconda
maxbin2                   2.2.7                he1b5a44_1    bioconda
spades                    3.14.1               h95f258a_2    bioconda
trimmomatic               0.39                 hdfd78af_2    bioconda
```

You may also run the programs to make sure they were installed, but notice that they may take different arguments for this to go smoothely:


```
$ fastqc --version
FastQC v0.11.9
```

Use the argument `--version` to run fastqc without error messages.

```
$ checkm -h

                ...::: CheckM v1.2.1 :::...

  Lineage-specific marker set:
    tree         -> Place bins in the reference genome tree
    tree_qa      -> Assess phylogenetic markers found in each bin
    lineage_set  -> Infer lineage-specific marker sets for each bin
```

Use `-h` for "help" to get the version and a thorough usage message.



# Finishing up

If these steps were successful, then you should be able to run most of the tools in the training after activating the conda environment as described above.