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
animal_sounds <- function(animal, sound) {
  # stopifnot(is.character(animal) & length(animal) == 1)
  # stopifnot(is.character(sound) & length(sound) == 1)
  if (!rlang::is_character(animal, n=1))
  {
    cli::cli_abort(
    c("{.var animal} must be a single string!",
      "i" = "It was {.type {animal}} of length {length(animal)} instead.")
  )

  }
  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.")
    )
  }
  paste0("The ", animal, " goes ", sound, "!")
}


col_summary <- function(df, fun) {
  stopifnot(is.data.frame(df))

  df |>
    keep(is.numeric) |>
    modify(fun)
}
