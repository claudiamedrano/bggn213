Untitled
================

## Prepare protein structure for docking

We want to download the 1 HSF PDB structure and then produce a “protein
only” and “ligand-only” new separate PDB files

``` r
library(bio3d)
pdb <- get.pdb("1HSG")
```

    ## Warning in get.pdb("1HSG"): ./1HSG.pdb exists. Skipping download

``` r
pdb <- read.pdb("1HSG.pdb")
ligand <- atom.select(pdb, "ligand", value = TRUE)
write.pdb(ligand, file = "1hsg_ligand.pdb")
```

``` r
pdb <- read.pdb("1HSG.pdb")
protein <- atom.select(pdb, "protein", value = TRUE)
write.pdb(protein, file = "1hsg_protein.pdb")
```
