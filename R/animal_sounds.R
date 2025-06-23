#' animalsound package
#'
#' animalsound function, part of R Workshop example package.
#' This is an example of text in  _**markdown**_.
#'
#' @param animal A non-numerical string of length greater than 1
#' @param sound A non-numerical string of length greater than 1
#'
#' @return A string composed using the inputs
#' @export
#'
#' @details
#' ## Detail Section Header
#' Some other markdowns we can use
#' 1. Lists
#' 2. Enumerated Lists
#' 3. Tables
#' 4. Code snippts
#' ```
#' animal_sounds("abc", "cdf")
#' ```
#' The function uses [paste0()] to form the output string.
#'
#' @examples
#' animal_sounds('dog', 'woolf')
animal_sounds <- function(animal, sound=NULL) {
  # stopifnot(is.character(animal) & length(animal) == 1)
  # stopifnot(is.character(sound) & length(sound) == 1)
  check_arg(animal)
  if (is.null(sound))
  {
    return(paste0("The ", animal, " makes no sound."))
  }
  check_arg(sound)
  return(paste0("The ", animal, " goes ", sound, "!"))
}

check_arg = function(arg)
{
  if (!rlang::is_character(arg, n = 1)) {
    cli::cli_abort(
      c("{.var arg} must be a single string of length greater than 1!",
        "i" = "It was {.type {arg}} of length {length(arg)} instead."),
        class="type_error"
    )
  }
}

col_summary <- function(df, fun) {
  stopifnot(is.data.frame(df))

  df |>
    keep(is.numeric) |>
    modify(fun)
}
