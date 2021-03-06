## Put comments here that give an overall description of what your
## functions do

## This function is to creat a matrix which could cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <-function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## This function is to calculate the inverse of the matrix returned by makeCacheMatrix function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m        
}
