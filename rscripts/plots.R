source('rscripts/funcs.R')
source('rscripts/settings.R')

lapply(seq.int(REPS), function(._){
  x <- GEN.DATA(SAMPLE_SIZE, DIM)
  
  file_name <- sprintf('plots/plot%d.pdf', ._)
  
  pdf(file = file_name, height = 3.5, width = 7)
    par(mfrow = c(1, 2))
    plot(x[, 1:2], asp = 1)
    plot(x[, 1:3], asp = 1)
  dev.off()
})
