#' Set
#'
#' Set baffle options.
#'
#' @param b An object of class \code{baffle} as returned \code{\link{b_affle}}.
#' @param char Characters to baffle.
#' @param speed Speed of blaffling.
#' @param ... Any opther option from \url{https://github.com/camwiegert/baffle#options}.
#'
#' @examples
#' b_affle("Baffling") %>%
#'   b_set("+#-•=~*") %>%
#'   b_start(2000) %>%
#'   b_reveal(5000)
#'
#' @export
b_set <- function(b, char = NULL, speed = NULL, ...){

  if(is.null(char)) char <- "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz~!@#$%^&*()-+=[]{}|;:,./<>?"
  if(is.null(speed)) speed <- 50

  opts <- list(
    characters  = char,
    speed = speed,
    ...
  )

  b$x$opts <- opts

  return(b)

}
