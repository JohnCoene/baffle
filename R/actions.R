#' Trigger
#'
#' Trigger baffling
#'
#' @inheritParams b_set
#' @param delay Delay in milliseconds before action is triggered.
#' @param duration Duration of reveal.
#'
#' @examples
#' b_affle("Baffle this") %>%
#'   b_set("Baffling") %>%
#'   b_start() %>%
#'   b_reveal()
#'
#' @name triggers
#' @export
b_once <- function(b, delay = 0){
  b$x$once <- TRUE
  b$x$onceDelay <- delay
  return(b)
}

#' @rdname triggers
#' @export
b_start <- function(b, delay = 0){
  b$x$start <- TRUE
  b$x$startDelay <- delay
  return(b)
}

#' @rdname triggers
#' @export
b_reveal <- function(b, duration = 1000, delay = 3000){
  b$x$reveal <- TRUE
  b$x$revealDelay <- delay
  b$x$revealDuration <- duration
  return(b)
}

#' @rdname triggers
#' @export
b_stop <- function(b, delay = 3000){
  b$x$stop <- TRUE
  b$x$stopDelay <- delay
  return(b)
}
