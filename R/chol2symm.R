#' @title Cholesky Factor to Symmetric Matrix
#'
#' @description Evaluate `t(x) \%*\% x` efficiently, where `x` is the
#'   (upper-triangular) Cholesky factor of a symmetric, positive definite square
#'   matrix. I.e. it is the inverse of `chol`.
#'
#' @param x a square, upper triangular matrix representing the Cholesky
#'   factor of a symmetric, positive definite square matrix
#'
#' @export
#'
#' @examples
#' # a symmetric, positive definite square matrix
#' y <- rWishart(1, 4, diag(3))[, , 1]
#' u <- chol(y)
#' identical(y, chol2symm(u))
#' identical(chol2symm(u), t(u) %*% u)
#' \dontrun{
#' u_greta <- cholesky_variable(3)
#' y_greta <- chol2symm(u)
#' }
chol2symm <- function(x) {
  UseMethod("chol2symm")
}

#' @export
chol2symm.default <- function(x) {
  dim <- dim(x)
  if (length(dim) != 2 || dim[1] != dim[2]) {
    msg <- cli::format_error(
      c(
        "{.fun chol2symm} must have square symmetric matrix, assumed to be \\
        upper triangular",
        "{.code dim(x)} returns: {dim(x)}"
      )
    )
    stop(
      msg,
      call. = FALSE
    )
  }

  t(x) %*% x
}

#' @export
chol2symm.greta_array <- function(x) {
  x <- as.greta_array(x)
  dim <- dim(x)
  if (length(dim) != 2 || dim[1] != dim[2]) {
    msg <- cli::format_error(
      c(
        "{.fun chol2symm} must have two-dimensional, square, upper-triangular \\
        {.cls greta_array}s",
        "{.code dim(x)} returns: {dim(x)}"
      )
    )
    stop(
      msg,
      call. = FALSE
    )
  }

  # sum the elements
  op("chol2symm", x,
    tf_operation = "tf_chol2symm",
    representations = list(cholesky = x)
  )
}
