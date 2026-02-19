# LazyFold
LazyFold is fast MFE and Covariation-based consensus secondary structure prediction software from RNA alignments using beam search and covariation tests.

## Usage
LazyFold can take a multi-FASTA format as an input file format, and predict its common secondary structure.

An example:
```
$ ./bin/LazyFold -i sample.fasta
Stabilized G: 1.12143 | Diversity: 0.852866
Final Alpha: 84
score:-30.24
(((((((..((((...........)))).(((((.......)))))...................(((((.......))))))))))))....
```
## Options   
    LazyFold Options:
    (Required)
        -i STR    InputFileName
        
    (Optional) 
        -b INT    The beam size [default:100]
        -d INT    The value of the parameter delta [default: 1.0]
        -e INT    The value of the parameter beta [default: 1.0]
        -r INT    Designation of the covariation score model 0: simple score model, 1: ribosum score model [defualt:1]
        -a INT    Amount of influence covariation tests have on final outcome [default: auto]

    CentroidLazyFold Options:
    (Required)
        -i STR    InputFileName
        
    (Optional)
        -b INT    The beam size [default:100]
        -d INT    The value of the parameter delta [default: 1.0]
        -e INT    The value of the parameter beta [default: 1.0]
        -r INT    Designation of the covariation score model 0: simple score model, 1: ribosum score model [defualt:0]
        -g INT    The value of the parameter gamma [default: 1.0]
        -a INT    The value of the parameter alpha [default: auto]
        -t DBL    The threshold value for base pairing probabilities [default: 0.0001]
        -w DBL    The value of the mixture weight parameter [default: 0.5]
        -p INT    Designation of the selection method of gamma 0: user-defined parameter 1: maximization of the pseudo-expected accuracy of MCC [default: 0]
        -o INT    Designation of the output style 0: the bpp is not outputted 1: the bpp is outputted [default: 0]

For the meaning of parameters delta and beta, please see the following RNAaliFold paper [1].

[1] Bernhart, S.H., Hofacker, I.L., Will, S. et al. RNAalifold: improved consensus structure prediction for RNA alignments. BMC Bioinformatics 9, 474 (2008)

## Version
Version 1.0.0 (2026/02/18)

## Acknowledgements
In developing this program, we referred to the source code from the LinAliFold/CentroidLinAliFold. We thank Dr. Tsukasa Fukunaga and Dr. Michiaki Hamada. You can download the source code of LinAliFold/CentroidLinAliFold from https://github.com/fukunagatsu/LinAliFold-CentroidLinAliFold [2].

[2] Fukunaga, T., & Hamada, M. (2022). LinAliFold and CentroidLinAliFold: fast RNA consensus secondary structure prediction for aligned sequences using beam search methods. Bioinformatics Advances, 2(1). https://doi.org/10.1093/bioadv/vbac078

## License
This software is released under the MIT License, see LICENSE.txt.  

## Referenced
Tsukasa Fukunaga and Michiaki Hamada. "LinAliFold and CentroidLinAliFold: Fast RNA consensus secondary structure prediction for aligned sequences using beam search methods."
