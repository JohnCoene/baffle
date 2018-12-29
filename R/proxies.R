#' Proxies
#'
#' Shiny proxies.
#'
#' @param proxy A shiny proxy as returned by \code{\link{baffle_proxy}}.
#' @param delay Delay in milliseconds before action is triggered.
#'
#' @examples
#' library(shiny)
#'
#' ui <- fluidPage(
#'   baffleOutput("baffle"),
#'   br(),
#'   actionButton("start", "baffle")
#' )
#'
#' server <- function(input, output, session){
#'
#'   output$baffle <- renderBaffle({
#'     b_affle("baffle")
#'   })
#'
#'   observeEvent(input$start, {
#'     baffle_proxy("baffle") %>%
#'       b_start_p() %>%
#'       b_reveal_p(3000)
#'   })
#'
#' }
#'
#' if(interactive())
#'   shinyApp(ui, server)
#'
#' @name proxy
#' @export
b_once_p <- function(proxy, delay = 0){

  data <- list(id = proxy$id, delay = delay)

  proxy$session$sendCustomMessage("b_once", data)
  return(proxy)
}

#' @rdname proxy
#' @export
b_start_p <- function(proxy, delay = 0){

  data <- list(id = proxy$id, delay = delay)

  proxy$session$sendCustomMessage("b_start", data)
  return(proxy)
}

#' @rdname proxy
#' @export
b_stop_p <- function(proxy, delay = 0){

  data <- list(id = proxy$id, delay = delay)

  proxy$session$sendCustomMessage("b_stop", data)
  return(proxy)
}

#' @rdname proxy
#' @export
b_reveal_p <- function(proxy, delay = NULL){

  data <- list(id = proxy$id, delay = delay)

  proxy$session$sendCustomMessage("b_reveal", data)
  return(proxy)
}
