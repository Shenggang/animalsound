## code to prepare `farm_animals` dataset goes here
farm_animals = data.frame(animals=c('dog', 'cat'),
                          sounds=c('woof', 'meow'))


usethis::use_data(farm_animals, overwrite = TRUE)
