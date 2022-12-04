# run_all.sh
# author: Jakob Thoms
# date: 2022-11-26

# This driver script completes the EDA and inferential analysis 
# of the horror movie data set found at 
# https://github.com/rfordatascience/tidytuesday/tree/master/data/2022/2022-11-01
# It takes no arguments.

# example usage:
# bash run_all.sh


# Download the data
rscript src/down_data.R --url=https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-11-01/horror_movies.csv --out_file=horror_movies_raw

# Clean the data
rscript src/pre_process_horror.R --in_file=horror_movies_raw --out_file=horror_movies_clean

# Create EDA plots
rscript src/eda_horror.R --in_file=horror_movies_clean --out_dir=image

# Run simulation-based hypothesis tests
rscript src/inference_horror.R --in_file=horror_movies_clean --out_dir=results
