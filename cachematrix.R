## Put comments here that give an overall description of what your
## functions do

## This is the first function. It saves the matrix and the inverse. 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This is the second function. 

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        mat <- x$get()
        maa$setinverse(solve(mat))
        return(maa$getinverse())
}

## This is a code that can be used to test the functions:

ma <- matrix(c(4,3,2,3), ncol=2, nrow=2)
ma
solve(ma)

maa <- makeCacheMatrix(ma)
cacheSolve(maa)

cacheSolve(maa)


