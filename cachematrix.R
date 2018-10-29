## The two functions below cache the inverse of a matrix and return it when needed

## Cache the value of the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  #Initiate matrix
  iv<-null
  #Set the value of the matrix
  set<-function(y){
    x<<-y
    iv<<-NULL
  }
  #Get the value of the matrix
  get<-function() x
  #Set the inverse value for the matrix
  setinverse<-function(inverse) iv<<-inverse
  #Get the inverse value of the matrix
  getinverse<-function() iv
  #Complie the functions together in a list
  list(set=set,get=get,setinverse=setinverse,getmean=getmean)
}


## Retrieve the value of the caluclated inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  #Try to get the cached inverse
  iv<-x$getinverse()
  #if there is a cached inverse, return it
  if(!is.null(iv)){
    message("getting cached data")
    return(m)
  }
  #If no cached inverse, get the matrix
  data<-x$get()
  #Calculate the inverse of the matrix
  iv<-solve(data)%*%data
  #Set the inverse of the matrix
  x$setinverse(iv)
  #return the inverse value
  iv
}
