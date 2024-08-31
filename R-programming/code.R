set.seed(42)

grid_k <- data.frame(k = c(3,5))#กำหนดค่า k ขึ้นมาเอง

knn <- train(mpg ~ ., 
             data = prep_df$train,
             method = "knn",
             metric = "MAE",
             trControl = ctrl,
             tuneGrid = grid_k)
