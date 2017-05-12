# Load packages
source('setup.R')

# Create random data
cloud1 <- data_frame(
  x = runif(20, min=1, max=4),
  y = runif(20, min=1, max=4),
  z = runif(20, min=3, max=5),
  label = rep("in", 20)
)

cloud2 <- data_frame(
  x = runif(20, min=3, max=6),
  y = runif(20, min=3, max=6),
  z = runif(20, min=3, max=5),
  label = rep("out", 20)
)

ooo <- bind_rows(cloud1, cloud2)
ooo$label <- as.factor(ooo$label)

# Test
scatter3D(ooo$x, ooo$y, ooo$z, 
          colvar = as.integer(ooo$label), 
          col = c("#1B9E77", "#D95F02"),
          colkey = FALSE,
          pch = 19,
          bty = "g",
          zlim = c(0,5))

scatter3D(ooo$x, ooo$y, ooo$z, 
          colvar = as.integer(ooo$label), 
          col = c("#1B9E77", "#D95F02"),
          colkey = FALSE,
          pch = 19,
          bty = "g",
          type = "h",
          zlim = c(0,5),
          main = "Bubbles in 3D with lines")

x_vec <- c(seq(2, 5, 0.1))
x_mat <- matrix(x_vec, nrow = 31, ncol = 1)
y_mat <- matrix(y_vec, nrow = 1, ncol = 31)

surface_data <- list(
  x = x_vec,
  y = x_vec,
  z = matrix(sqrt(x) %*% (y / 1000), nrow = 31, ncol = 31),
  border = "orange"
)

# Test
scatter3D(ooo$x, ooo$y, ooo$z, 
          colvar = as.integer(ooo$label), 
          col = c("#1B9E77", "#D95F02"),
          colkey = FALSE,
          pch = 19,
          bty = "g",
          zlim = c(0,5),
          surf = surface_data)


?isosurf3D




