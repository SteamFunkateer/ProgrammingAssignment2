## Put comments here that give an overall description of what your
## functions do

## This function executes the inverse of the mean
##    set the value of the vector
##    get the value of the vector
##    set the value of the mean
##    get the value of the mean


makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
        set <- function(y)
                {
                x <<- y
                m <<- NULL
                }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
                

}


## This function executes the inverse of the mean

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getinverse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m

}
