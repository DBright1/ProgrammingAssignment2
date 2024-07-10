
#Cache Matrix initialization
#for some reason, the onl square matrix that is solvable is 2,2
#previous tests of matrices 3:3, 4:4, 5:5,6:6, were not working with solve
makeCacheMatrix <- function(x = matrix(2:5,2,2)){
#create global variable place holder for inverse matrix
  inv<<-NULL

  #create a new matrix that will overite the previous matrix and the cached INV
  setm <- function(y){
    x <<- y
    inv <<-NULL
  }
  #view the created matrix in x variable
  getm <- function() x
  
  #create and store the inverse of cached matrix x
  cacheSolve <- function(z){
    z <- x
    #Message warning no previous cache was created  
    if(!is.null(z)) {
      message("getting cached data")
    }
    #store cached invers in clobal variable
    inv <<- solve(z)
    #view matrix inverse
    getinv <- function()inv
  }
  
  #tried to make the methods in list form to call with $ operator but it doesnt
  #work
  
  #A couple things didnt work as i wanted but as far as im concerned, this 
  #delivers on what I was asked to do when x is passed into cachesolve() 
  
  list(setm = setm, getm = getm,getinv = getinv)
}

