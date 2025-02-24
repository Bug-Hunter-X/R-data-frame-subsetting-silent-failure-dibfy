```r
#Improved Subsetting with Error Handling

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols <- c("a", "b", "d")

#Check if all columns exist before subsetting
missing_cols <- setdiff(cols, names(df))
if(length(missing_cols) > 0){
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}

subset <- df[, cols]
print(subset)
```