## Put comments here that give an overall description of what your
## functions do

# Write two functions to cache the inverse of a matrix.

## Write a short comment describing this function

#  The function makeCacheMatrix create a spacial "matrix", which is a list containing a function to

# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse of the matrix
# 4. get the vaule of the inverse of the matrix
  

makeCacheMatrix <- function(x = matrix()) {
        i<- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
# The function cacheSolve is created to get the inverse of the special "matrix" created with the above funcion.
# It first checkes if the inverse has already been calculated. 
# If so, it gets the inverse from the cache and skips the computation.
# Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
                
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
