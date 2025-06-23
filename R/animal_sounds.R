#' animalsound package
#'
#' animalsound function, part of R Workshop example package
#'
#' @param animal A non-numerical string of length greater than 1
#' @param sound A non-numerical string of length greater than 1
#'
#' @return A string composed using the inputs
#' @export
#'
#' @examples
#' animal_sounds('dog', 'woolf')
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, "!")
}
