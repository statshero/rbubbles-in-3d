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
          main ="bty= 'b2'",
          zlim = c(0,5))


?isosurf3D


# 
# x <- y <- z <- seq(-2, 2, length.out = 15)
# 
# xyz <- mesh(x, y, z)
# 
# F <- with(xyz, log(x^2 + y^2 + z^2 + 10*(x^2 + y^2) * (y^2 + z^2) ^2))
# 
# # use shading for level = 1 - show triangulation with border
# isosurf3D(x, y, z, F, level = 1, shade = 0.9, 
#                      issr3D+            col = "yellow", border = "orange")
# 



