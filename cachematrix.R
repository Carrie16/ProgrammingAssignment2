## This function creates a matirix that is square.
## The matix is cached in this funtion for further use.


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## This function computes the inverse of the previoulsy created matirx.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    messsage ("getting cached data")
    return(inv)
  }
  matdata <- x$get()
  inv <- solve(matdata, ...)
  x$setInverse(inv)
  inv
  
}

