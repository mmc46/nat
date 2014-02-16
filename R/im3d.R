#' Return voxel dimensions of an object
#' 
#' @param d An image like object with associated voxel dimensions
#' @param ... Additional arguments for methods
#' @export
voxdims<-function(d, ...) UseMethod("voxdims")

#' @S3method voxdims default
voxdims.default<-function(d, ...){
  if(all(c("x","y","z") %in% names(attributes(d)))){
    originaldims=sapply(attributes(d)[c("x","y","z")],length)
  } else {
    originaldims=dim(d)
  }
  if (!is.null(attr(d,"bounds")))
    # bounds = outer limit of voxels
    return(diff(matrix(attr(d,"bounds"),nrow=2))/originaldims)
  else if (!  is.null(attr(d,"BoundingBox"))) {
    # BoundingBox = CENTRES of outer voxels (like Amira)
    # therefore includes 1 fewer voxel in each dimension
    return(diff(matrix(attr(d,"BoundingBox"),nrow=2))/(originaldims-1))
  } 
  #warning("Cannot find bounds or BoundingBox attribute")
  return(NULL)
}