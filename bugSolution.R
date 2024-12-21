```R
# This improved code checks if all column names exist before subsetting.
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

# Check if all columns exist.  If not, it throws an error with a descriptive message.
if (!all(cols %in% names(data))) {
  stop("Error: One or more specified column names do not exist in the data frame.")
}

subset <- data[, cols]
print(subset) # This will now throw an error due to 'D' being misspelled

# Alternative solution using dplyr
library(dplyr)

subset <- data %>% select(all_of(cols))
print(subset) #This will also throw an error
```