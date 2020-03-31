## Put comments here that give an overall description of what your
## functions do
#
#  March 31, 2020 - Inselbuch
#     new module
#
#  this R script contains two functions
#  the first function makeCacheMatrix generates a "vector" that is really a list of functions
#     set
#     get
#     setinverse
#     getinverse
#
#  makeCacheMatrix should be called with an invertable matrix as the only argument
#  N.B.: no error checking is performed so if the matrix cannot be inverted you will probably die from covid-19
#
#  the second function cacheSolve determines if the solution has already been generated
#  if the solution has already been generated, that solution is returned with a nice message indicating so
#  if the solution has not yet been genereated, the solution is generated, cached and returned
#

## Write a short comment describing this function
# generate the set of four functions that will be used
makeCacheMatrix <- function(x = matrix()) {
   m<-NULL
   set <- function(y) {
      x<<-y
      m<<-NULL
   }
   get <- function() x
   setinverse <- function(inverse) m<<-inverse
   getinverse <- function() m
   list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
# if already computed, use the cached solution
# otherwise, compute it, cache it, and return it
cacheSolve <- function(x, ...) {

}



# makeVector <- function(x=numeric()) {
#    m<-NULL
#    set <- function(y) {
#       x <<- y
#       m <<- NULL
#    }
#    get <- function() x
#    setmean <- function(mean) m<<- mean
#    getmean <- function() m
#    list(set=set, get=get, setmean=setmean, getmean=getmean)
# }

# cachemean <- function(x,...) {
#    m <- x$getmean()
#    if (!is.null(m)){
#       message("getting cached data")
#       return(m)
#    }
#    data <- x$get()
#    m <- mean(data,...)
#    x$setmean(m)
#    m
# }
