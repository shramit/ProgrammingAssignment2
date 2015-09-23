## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## Sample run
##> x <- rbind(c(1,-2),c(-2,1))
##> invr <- makeCacheMatrix(x)
###> invr$get()
#     [,1] [,2]
#[1,]    1   -2
#[2,]   -2    1
#No cache

#> cacheSolve(invr)
#           [,1]       [,2]
#[1,] -0.3333333 -0.6666667
#[2,] -0.6666667 -0.3333333

#From cache
#> cacheSolve(invr)
#getting cached data..
#           [,1]       [,2]
#[1,] -0.3333333 -0.6666667
#[2,] -0.6666667 -0.3333333
