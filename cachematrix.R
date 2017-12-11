## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) { 
	inv <- NULL
	setM <- function(y) { ##Set matrix
	x <<- y
	inv <<- NULL
}
	getM <- function()x ## Returns value of the matrix
	setInv <- function(inverse) inv <<- inverse ## Set inverse
	getInv <- function() inv ## Get inverse
list(setM = setM, getM = getM, setInv = setInv, getInv = getInv) 
}


## Write a short comment describing this function
## This function computes the inverse of the 'matrix' returned by the function makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInv()
	if(!is.null(inv)) {
	message("Getting cached data")
	return(inv)
}
	data <- x$get()
	inv <- solve(data, ...)
	x$setInv(inv)
	inv
}

