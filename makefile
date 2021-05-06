.PHONY: clear_logs clear_plots

all: plots/plots
clear_logs:
	rm -f *.Rout
clear_plots:
	rm -f plots/*.pdf

plots/plots: rscripts/plots.R rscripts/settings.R rscripts/funcs.R
	R CMD BATCH rscripts/plots.R
	touch plots/plots
rscripts/plots.R: rscripts/settings.R rscripts/funcs.R
	touch rscripts/plots.R

