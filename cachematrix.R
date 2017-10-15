#Week 3 - R Programming - Programming Assignment

#Function 1: Create a special "matrix" object that
#cache its inverse

#'x' is the matrix used by the user

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(z) {
    x <<- z
    inverse <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inverse <<- inv
  getinv <- function() inverse
  list(set = set, 
       get = get, 
       setinv = setinv, 
       getinv = getinv)
}

#Function 2: Computes the inverse of the special 
#"matrix" returned by 'makeCacheMatrix'

#Returns the inverse of ´x´

cacheSolve <- function(x, ...) {
  inverse <- x$getinv()
  if(!is.null(inverse)){
    message("Getting The Cached Data")
    return(inv)
  }
  DataOfMatrix <- x$get()
  inverse <- solve(DataOfMatrix)
  x$setinv(inverse)
  return(inverse)
}
