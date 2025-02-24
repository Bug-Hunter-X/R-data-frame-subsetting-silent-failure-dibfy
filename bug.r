```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any column name is not found.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols <- c("a", "b", "d") # 'd' does not exist in df

subset <- df[, cols]
print(subset)
# Expected Output:  A data frame with columns 'a' and 'b', with 'd' dropped.
# Actual output: A data frame with columns 'a' and 'b' only, but with no error or warning.
```