## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This Create a especial "matrix" that is able to store functions for setting and getting its value and inverse


makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function()x
setsolve<-function(solve) m<<-solve
getsolve<-function()m
list(set=set, get=get,setsolve=setsolve,getsolve=getsolve)
}


## Write a short comment describing this function
##This function calculates the inverse of a special matrix
##Fist it checks for existing inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m<-x$getsolve()
  if(!is.null(m)){
    message("Inverse is already calculated")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setsolve(m)
  m
}