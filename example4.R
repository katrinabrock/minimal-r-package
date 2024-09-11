Person <- R6::R6Class("Person",
  private = list(
    name = NULL,
    age = NULL
  ),
  public = list(
  initialize = function(name) {
    b()
    private$name <- name # Breakpoint here fails
    name
  }
))

s <- function() Sys.setenv(DEBUG = '1')
u <- function() Sys.unsetenv('DEBUG')
b <- function() browser(expr = Sys.getenv('DEBUG') == '1', skipCalls=1)

s()
person <- Person$new(name = "Second Name") # Hits failing breakpoint
u()