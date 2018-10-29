## The two functions below cache the inverse of a matrix and return it when needed

## Cache the value of the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  iv<-null
  set<-function(y){
    x<<-y
    iv<<-NULL
  }
  get<-function() x
  setinverse<-function(solve) iv<<-solve
  getinverse<-function() iv
  list(set=set,get=get,setinverse=setinverse,getmean=getmean)
}


## Retrieve the value of the caluclated inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  iv<-x$getinverse()
  if(!is.null(iv)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  iv<-solve(data,...)
  x$setinverse(iv)
  iv
}
