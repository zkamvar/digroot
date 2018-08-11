sum_string <- function(i) {
	paste(sprintf("%sL", i), collapse = " + ")
}

make_sum_strings <- function(x) {
	xc <- strsplit(as.character(x), "")
	xc <- vapply(xc,
		     FUN = sum_string,
		     FUN.VALUE = character(1)
		    )
	xc
}

eval_sum_strings <- function(x) {
	x <- paste(x, collapse = ", ")
	eval(parse(text = paste0("c(", x, ")")))
}

assert_integer <- function(x) {
	xo <- x
	x  <- as.integer(x)
	if (!identical(all.equal(x, xo), TRUE)) {
		stop("x must be an integer")
	}
	x
}
