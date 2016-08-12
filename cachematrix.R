## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function is used to cache the inverse of the matrix
makeCacheMatrix <- function(x = matrix(1:4,nrow=2,ncol=2)) {
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


## Write a short comment describing this function
##calculate the inverse if the matrix is not squared

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  m
}
