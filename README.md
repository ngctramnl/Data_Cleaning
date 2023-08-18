# Data_Cleaning

## About the dataset
- Originally from [data_description](https://archive.ics.uci.edu/dataset/10/automobile)

## Data Cleaning Documentation
- _DISTINCT_ query was run to confirm fuel_type does not have any unexpected values other than gas and diesel. No unexpected value was returned.
- The range of the length column is supposed to be between 141.1 and 208.1. Query was run to confirm. The results were aligned with the dataset.
- _IS NULL_ Query was run to detect missing values. Two missing values were returned.
- Those 2 missing were filled with the value "four". 5 rows were affected in total.
- Once there are no missing values, _DISTINCT_ query was run to check for potential errors in the num_of_cylinders column.
- There are two entries for two cylinders but the 'two' is misspelled
- _UPDATE_ query was run to correct the misspelling for all rows.
- Next, to check the consistency of the compression_ratio column, _MIN_ and _MAX_ was used. This returned a maximum of 70 is an error because the maximum value in this column should be 23, not 70.
- _COUNT_ was used to check the number of rows with the maximum value of 70. This returned only 1 row.
- _DELETE_ was used to exclude 1 row from the dataset

