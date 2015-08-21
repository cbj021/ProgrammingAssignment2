## makeCacheMatrix - stores and clears current matrix and cacheSolve - computes the inverse of the matrix

## makeCacheMatrix has 4 functions: get (to get the matrix X), set (to set the matrix for cache, clearing value, i.e returning to 

null, inverse matrix m), getsolve (returns inverse matrix m), setsolve (stores value of inverse matrix m)

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- matrix(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x 
	setsolve <- function(solve) m <<- solve
	getsolve <- function() m
	list(set = set, get = get,
		setsolve= setsolve
		getsolve= getsolve)
}

## cacheSolve uses the getsolve function (w/c is inverse matrix m) and assigns it to m in this environment. if m's inverse is already computed, will return m. Else, will use get function (which is originial matrix X, and get its inverse (m), and print the result

cacheSolve <- function(x, ...) {
	m <- x$getsolve()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data,...)
	x$setsolve(m)
	m
        ## Return a matrix that is the inverse of 'x'
}
