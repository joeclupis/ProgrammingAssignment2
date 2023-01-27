## These funcitons will cashe the inverse of a matrix

## The first function will create a 'matrix' object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL 
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function will compute the inverse of the 'matrix' that was created in the first function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <-  x$getInverse()
        if(!is.null(inv)) {
                message("retrieving cache data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
