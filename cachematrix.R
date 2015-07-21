makeCacheMatrix <- function (x = matrix()){ #get the matrix and store in the cache
  
  i <<- NULL
  get <- function() x
  setinverse <- function(inverse) i <<- inverse #only sets the inverse, doesn't show it
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}

cacheSolve <- function(x){ #inverse in the cache
  
  m <- mat$getinverse()
  
  if (!is.null(m)){ 
    message("getting cached data")
    return(m)
  } else {
    
    data <- mat$get()
    m <- solve(data)
    mat$setinverse(m)
    m
  }  
  
}
