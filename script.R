library()

source('')

n <- 50

for(._ in commandArgs(trailingOnly = TRUE)) eval(parse(text = ._))

set.seed()


x <- rnorm(n)
print(x)
print(args)
