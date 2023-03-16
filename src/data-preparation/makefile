build: merged.csv


calendar_amsterdam.csv listings_amsterdam.csv: download_files.R 
		R --vanilla < download_files.R
	
merged.csv: joined_and_cleaned.R listings_amsterdam.csv calendar_amsterdam.csv
		R --vanilla < joined_and_cleaned.R
		
clean:
		R -e "unlink('*.csv.gz')"
		R -e "unlink('*.csv')"
		