DATA = ../../src/data-preparation
OUTPUT = ../../gen/paper

build: $(OUTPUT)/exploration_plot.csv $(OUTPUT)/multicollinearity_plot.csv

$(OUTPUT)/exploration_plot.csv: plots_regression_analysis.R $(DATA)/merged.csv 
		R --vanilla < plots_regression_analysis.R
		
$(OUTPUT)/multicollinearity_plot.csv: regression.R merged.csv
		R --vanilla < regression.R



