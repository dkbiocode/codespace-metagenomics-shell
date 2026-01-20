FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install system dependencies
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    unzip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Miniforge (conda/mamba)
RUN wget -q https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh -O /tmp/miniforge.sh \
    && bash /tmp/miniforge.sh -b -p /opt/miniforge \
    && rm /tmp/miniforge.sh

# Add conda to PATH for all users
ENV PATH="/opt/miniforge/bin:${PATH}"

# Initialize conda for bash
RUN /opt/miniforge/bin/conda init bash

# Install bioinformatics tools via conda
RUN mamba install -y -c bioconda -c conda-forge \
    sra-tools \
    && mamba clean -afy

# Ensure conda is available in interactive shells
RUN echo ". /opt/miniforge/etc/profile.d/conda.sh" >> /etc/bash.bashrc
