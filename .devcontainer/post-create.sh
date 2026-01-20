#!/bin/bash
# Post-create script for Metagenomics Shell Workshop

# Create the workshop directory structure in the user's home
mkdir -p ~/dc_workshop/data/untrimmed_fastq
mkdir -p ~/dc_workshop/mags
mkdir -p ~/dc_workshop/taxonomy/mags_taxonomy
mkdir -p ~/dc_workshop/.hidden

# Create placeholder files for the workshop
# (You can replace this with actual data download if needed)
touch ~/dc_workshop/.hidden/youfoundit.txt

echo "Workshop environment setup complete!"
echo "Your home directory: $HOME"
echo "Workshop data directory: ~/dc_workshop"
