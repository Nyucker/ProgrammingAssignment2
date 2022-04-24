makeCacheMatrix = func(x = matrix()) {
  i = NULL
  set = func(y) {
    x = y
    s = NULL
  }
  get = func() x
  set1 = func(solve) i = solve
  get1 = func() i
  
 
  list(set = set, get = get,
       set1 = set1,
       get1 = get1)
}




cacheSolve = func(x, ...) {
  i = x$get1()
  if(!is.null(i)) {
    message("we have this data: ")
    return(i)
  }
  data = x$get()
  i = solve(data, ...)
  x$set1(i)
  i
}
