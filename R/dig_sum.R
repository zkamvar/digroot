#' Sum the digits of a number
#' 
#' @param x an integer
#' @return the sum of all the individual digits of that integer
#' @seealso [dig_root()]
#' @export
#' @examples
#' dig_sum(10)  # 1
#' dig_sum(123) # 6
dig_sum <- function(x) {
	x    <- assert_integer(x)
	xstr <- make_sum_strings(x)
	eval_sum_strings(xstr)
}
