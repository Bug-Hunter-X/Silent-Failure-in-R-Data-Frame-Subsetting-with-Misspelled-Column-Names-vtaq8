```R
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any column name is misspelled.
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D") # 'D' is misspelled
subset <- data[, cols]
print(subset) # This will only include columns A and B, without warning
```