## Homework Assignment

## makeCacheMatrix is a function to set, get, setInverse, and getInverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  ## initializing inverse as NULL
  set <- function(y){
    x<<-y
    inv<<-NULL
}
get <- function() {x} ## function to get matrix x
setInverse <- function(inverse) (inv <<- inverse)
getInverse <- function() {inv}
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This code is used to get the cache data

cacheSolve <- function(x, ...) {
   inv <- x$getInverse()
   if(!as.null(inv)){
     message("getting cached data")
     return(inv) ## return inverse value
   }
   mat <- xiget()
   inv <- solve(mat, ...)
   x$setInverse(inv)
   inv
}
