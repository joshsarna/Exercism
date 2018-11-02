to_rna <- function(dna) {
  transcribe = c('A'='U','T'='A','C'='G','G'='C')
  rna <- ""
  for (i in 1:nchar(dna)) {
    if (substr(dna, i, i) == 'A' || substr(dna, i, i) == 'T' || substr(dna, i, i) == 'C' || substr(dna, i, i) == 'G') {
      rna <- paste(rna, transcribe[substr(dna, i, i)], sep = "")
    }
    else {
      stop('that is not valid dna code')
    }
  }
  return(rna)
}