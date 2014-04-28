## Put comments here that give an overall description of what your
## functions do

## Creating a special matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## Making an inverse matrix

cacheSolve <- function(x) {
       if(det(x)!=0){
       y<-solve(x)
       y
       }
       else{
       mesaage("Determinant of this matrix is 0.")
       x
       }
}
