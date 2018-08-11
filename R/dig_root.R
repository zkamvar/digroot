#' Find the digital root of an integer
#'
#' @param x an integer
#' @return the digital root of the integer
#' @description This function will calculate the sum of all the single-length
#'   integers \[0-9\] in a given integer recursively until the result is a 
#'   single-length integer
#' @seealso [dig_sum()]
#' @references
#' From Thomas Morril on Twitter:
#'
#'   <https://twitter.com/tsmorrill/status/1028108510746226688>
#'   <https://twitter.com/tsmorrill/status/1028142110342504448>
#' @export
#' @examples
#' dig_root(77) # 7 + 7 = 14; 1 + 4 = 5;
#' 
#' # Get the multiplication table of digital roots
#' sapply(1:9, function(i) dig_root(i * 1:9))
dig_root <- function(x) {
	x <- assert_integer(x)
	n <- nchar(x)
	while (any(n > 1)) {
		x[n > 1] <- dig_sum(x[n > 1])
		n        <- nchar(x)
	}
	x
}

