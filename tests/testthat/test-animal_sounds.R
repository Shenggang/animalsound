test_that("animal_sounds produces expected strings", {
  dog_woof <- animal_sounds("dog", "woof")
  expect_equal(dog_woof, "The dog goes woof!")
  expect_equal(animal_sounds("cat", "miaow"), "The cat goes miaow!")
})

test_that("test factor in 2nd arg", {
 testthat::expect_error(animal_sounds("dog", factor("woof")), class="type_error")
}
)
