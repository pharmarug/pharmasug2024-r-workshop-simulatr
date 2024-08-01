test_that("For invalid input arguments 'getSimulatedTwoArmMeans' throws meaningful exceptions", {
  expect_error(
    getSimulatedTwoArmMeans(),
    'argument "n1" is missing, with no default'
  )

  # TODO implement tests for all arguments
})

test_that("With defined seed 'getSimulatedTwoArmMeans' returns reproducible results", {
  # TODO implement tests
  expect_snapshot(getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4, seed = 123))
})

test_that("With undefined seed 'getSimulatedTwoArmMeans' returns valid results", {
  # TODO implement tests
  expect_snapshot(getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4))
})

test_that("'getSimulatedTwoArmMeans' result can be printed", {
  # TODO implement tests
})
