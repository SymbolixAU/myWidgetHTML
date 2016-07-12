#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
myHTML <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
  	message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'myHTML',
    x,
    width = width,
    height = height,
    package = 'myWidgetHTML'
  )
}

#' Shiny bindings for myHTML
#'
#' Output and render functions for using myHTML within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a myHTML
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name myHTML-shiny
#'
#' @export
myHTMLOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'myHTML', width, height, package = 'myWidgetHTML')
}

#' @rdname myHTML-shiny
#' @export
renderMyHTML <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, myHTMLOutput, env, quoted = TRUE)
}

