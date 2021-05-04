GEN.DATA <- function(n, d, sd = 1){
  matrix(
    rnorm(n*d, sd = sd),
    nrow = n,
    ncol = d
  )
}
