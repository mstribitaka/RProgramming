## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is a function that will:
## 1. set the value of the matrx;
## 2. get the value of the matrix;
## 3. set the inverse of the matrix;
## 4. get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
    set <- function(y) {
        x <<- y
    }
    get <- function() x
    setinv <- function(xinverse) xinv <<- xinverse 
    getinv <- function() xinv

}


## cacheSolve checks to see if the inverse of the matrix 'x' 
## has already been calculated.  If so, it returns the inverse
## otherwise it calculates it then return the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    xinv <- x$getinv()
    if(!is.null(xinv)) {
        message("getting inverse of matrix")
        return(xinv)
    }
    data <- x$get()
    xinv <- solve(data)
    x$setinv(xinv)
    xinv
}
