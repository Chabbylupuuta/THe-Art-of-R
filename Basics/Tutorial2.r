# Matrix Operations and Algebra
A <- rbind(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))
A

t(A)

t(t(A))

a <- 2
A * a

B <- rbind(c(23.4, 66, 89), c(33, 70, 100), c(89, 56, 333))
C <- A - B
C

C * -2

D <- A %*% B
D

# Inverse
solve(B)

B %*% solve(B)

# Error due to singularity
# solve(A)

# Multidimensional Arrays (Examples)

# Creating a 3x4x2 array
AR <- array(data = 1:24, dim = c(3, 4, 2))
AR

# Accessing elements: AR[rows, columns, layers]

# Accessing a single element
AR[2, 3, 1]  # Element in row 2, column 3, layer 1

# Accessing an entire row from a specific layer
AR[1, , 2]  # Row 1, all columns, layer 2

# Accessing an entire column from a specific layer
AR[, 2, 1]  # All rows, column 2, layer 1

# Accessing an entire layer
AR[, , 1]  # All rows, all columns, layer 1

# Modifying elements
AR[1, 1, 1] <- 100  # Change the element at [1, 1, 1]
AR

# Creating a 2x3x2x2 array
BR <- array(data = 1:24, dim = c(2, 3, 2, 2))
BR

# Accessing elements in a 4D array: BR[dim1, dim2, dim3, dim4]

# Accessing a single element
BR[1, 2, 1, 2]

# Accessing a slice
BR[1, , 1, ]  # First dimension, all of the second dimension, first of the third, all of the fourth.

# Accessing a higher dimension slice
BR[, , 1, 1]

#Example with names

my_array <- array(1:24, dim = c(2, 3, 4),
                  dimnames = list(c("Row1", "Row2"),
                                  c("Col1", "Col2", "Col3"),
                                  c("Layer1", "Layer2", "Layer3", "Layer4")))

my_array

#Accessing by names
my_array["Row1", "Col2", "Layer3"]

#Example of applying a function over margins of an array.

array_3d <- array(1:27, dim = c(3,3,3))
array_3d

#Sum across the first dimension (rows)
row_sums <- apply(array_3d, 1, sum)
row_sums

#Sum across the second dimension (columns)
column_sums <- apply(array_3d, 2, sum)
column_sums

#Sum across the third dimension (layers)
layer_sums <- apply(array_3d, 3, sum)
layer_sums

#Mean across layers
layer_means <- apply(array_3d, 3, mean)
layer_means
