# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  length <- nchar(strand1)
  if (length != nchar(strand2)) {
    stop('strands must be of equal length')
  }
  hamming <- 0
  for (i in 1:length) {
    if (substr(strand1, i, i) != substr(strand2, i, i)) {
      hamming <- hamming + 1
    }
  }
  return(hamming)
}