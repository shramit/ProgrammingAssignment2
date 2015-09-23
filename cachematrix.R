## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Matrix inversion is usually a costly computation and
## caching the inverse of a matrix may be beneficial rather than compute it repeatedly.
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        invr <- NULL
        set <- function(y) {
                x <<- y
                invr <<- NULL
        }
        get <- function()
                x
        setinverse <- function(inverse)
                invr <<- inverse
        getinverse <- function() invr
        list(
                set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse
        )
}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invr <- x$getinverse()
        if (!is.null(invr)) {
                message("getting cached data..")
                return(invr)
        }
        mdata <- x$get()
        invr <- solve(mdata)
        x$setinverse(invr)
        invr
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
