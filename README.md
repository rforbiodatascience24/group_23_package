group_23_package - biodogma
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

# biodogma

<!-- badges: start -->
<!-- badges: end -->

The goal of biodogma is to …

## Installation

You can install the development version of biodogma from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rforbiodatascience24/group_23_package")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(biodogma)
## basic example code
```

``` r
library(biodogma)
```

Github repository:
<https://github.com/rforbiodatascience24/group_23_package>

# Introduction

The **group_23_package** provides essential functions for generating and
analyzing DNA and RNA sequences. This toolkit can be useful for simple
sequence generation, DNA transcription to RNA, codon extraction, amino
acid translation, and amino acid distribution analysis. It is designed
for bioinformatics, genetic research, and educational applications.

------------------------------------------------------------------------

# Function Overview

## 1. `generate_dna_sequence`

**Purpose**: Generating a random sequence of nitrogen_bases (A, G, T,
C)  
**Parameters**: sequence_length - length of the random sequence  
**Return**: A string with the sequence of nitrogen_bases (e.g. “AGTGA”)

## 2. `dna_transcription`

**Purpose**: Transforms “T”s into “U”s (transcription of DNA into RNA)  
**Parameters**: dna_sequence - A string representing the sequence of DNA
to be transcripted  
**Return**: A string representing the sequence of corresponding RNA

## 3. `extract_codons`

**Purpose**: Extracts codons (groups of three nucleotides) from an RNA
sequence, starting from a specified position.  
**Parameters**: - rna_sequence - RNA string to be split, and - start -
starting position for extraction (default = 1).  
**Return**: A vector containing each extracted codon.

## 4. `generate_protein_sequence`

**Purpose**: Takes a vector of codons (groups of 3 nucleotides), and
transforms it into the corresponding AA (each AA is one letter)  
**Parameters**: vect_codons - vector of codons to be translated into the
AA  
**Return**: A string with the AAs (e.g. “MARNDCE”)

## 5. `amino_distribution`

**Purpose**: Plots the counts of each unique amino acid in a given
sequence  
**Parameters**: amino_sequence - A string representing a sequence of
amino acids  
**Return**: A bar diagram showing the distribution of amino acids in the
input string

# Workflow example

Step 1: Generate a DNA sequence

``` r
dna_seq <- generate_dna_sequence(15) 
```

Step 2: Transcribe DNA to RNA

``` r
rna_seq <- dna_transcription(dna_seq)
```

Step 3: Extract codons from RNA

``` r
codons <- extract_codons(rna_seq)
```

Step 4: Translate codons to protein sequence

``` r
protein_seq <- generate_protein_sequence(codons)
```

Step 5: Plot amino acid distribution

``` r
amino_distribution(protein_seq)
```

# Use Cases and Future Extensions

**Use Cases**  
The package can be used for basic DNA and RNA sequence analysis,
educational demonstrations of molecular biology concepts, and
preliminary bioinformatics analysis.

**Potential Future Functions**  
Reverse Transcription: Convert RNA back to DNA. Mutation Simulation:
Introduce mutations for genetic variation studies. Protein Properties:
Calculate molecular weight or isoelectric point.

# Discussion - Key Points

#### 1. Limiting the number of dependencies in a package:

Minimizing the number of dependencies helps to maintain stability for a
package and prevents potential conflicts in compatibility.

#### 2. @importFrom package function vs. package::function():

@importFrom is only importing the specified function from the package,
which allows to use them without ‘package::’ part. package::function()
avoids importing the package what decreases the dependency of the
package
