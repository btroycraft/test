all: plots/plots
clear_logs:
	rm *.Rout

plots/plots: rscripts/plots.R
	R CMD BATCH rscripts/plots.R
	touch plots/plots
rscripts/plots.R: rscripts/settings.R rscripts/funcs.R

