#' Baffle
#'
#' Baffle text.
#'
#' @param char Characters to baffle.
#' @param elementId A valid CSS id.
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#'
#' @examples
#' b_affle("Baffling") %>%
#'   b_set("+#-•=~*") %>%
#'   b_start(1000) %>%
#'   b_reveal(2000)
#'
#' @import htmlwidgets
#'
#' @name init
#' @export
b_affle <- function(char = NULL, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    char = char
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'baffle',
    x,
    width = width,
    height = height,
    package = 'baffle',
    elementId = elementId
  )
}

#' @name init
#' @export
b_affle_this <- function(elementId = NULL, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    id = elementId
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'baffle',
    x,
    width = width,
    height = height,
    package = 'baffle',
    elementId = NULL
  )
}

baffle_html <- function(id, style, class, ...){
  htmltools::tags$span(id = id, class = class)
}

#' Shiny bindings for baffle
#'
#' Output and render functions for using baffle within Shiny
#' applications and interactive Rmd documents.
#'
#' @param id,outputId Output variable to read from.
#' @param session Shiny session.
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a baffle.
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name baffle-shiny
#'
#' @export
baffleOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'baffle', width, height, package = 'baffle')
}

#' @rdname baffle-shiny
#' @export
renderBaffle <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, baffleOutput, env, quoted = TRUE)
}

#' @rdname baffle-shiny
#' @export
baffle_proxy <- function(id, session = shiny::getDefaultReactiveDomain()){

  proxy <- list(id = id, session = session)
  class(proxy) <- "baffle"

  return(proxy)
}
