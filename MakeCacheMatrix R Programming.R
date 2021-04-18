makeCacheMatrix <- function(x = matrix()) {
  j <- NULL #initializing inverse as a NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x #function to get matirx x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)}

cache solved <- function(x, . . . .){
inv <- x$getInverse()
if(!is.null (inv)){
message ("getting cached information")
return (inv)
}
mat <- x$get()
inv <- solve (mat, . . . .)
x$Inverse(inv)
inv
}