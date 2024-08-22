print_name <- function(name) {
  print(name) # Breakpoint here works
}

Person <- R6::R6Class("Person",
  private = list(
    name = NULL,
    age = NULL
  ),
  public = list(
  initialize = function(name) {
    private$name <- name # Breakpoint here fails
  }
))