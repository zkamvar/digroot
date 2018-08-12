#' Sum the digits of a number
#'
#' @param x an integer
#' @param return_char when `TRUE`, the result is returned as a character
#'   string. Defaults to `FALSE`, returning an integer.
#' @return the sum of all the individual digits of that integer
#' @details This function works by splitting the number into its component
#'   digits, and creating a call to R that sums them.
#' @seealso [dig_root()]
#' @export
#' @examples
#' dig_sum(10)  # 1
#' dig_sum(123) # 6
dig_sum <- function(x, return_char = FALSE) {
	x    <- assert_integer(x)
	xstr <- make_sum_strings(x)
	res <- eval_sum_strings(xstr)
	if (return_char) res else as.integer(res)
}
