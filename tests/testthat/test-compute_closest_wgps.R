test_that("compute_closest_wgps works fine.", {

  a <- 1:10
  b <- 1:5
  c <- (1:10)*0.1
  d <- 4
  sc <- 0.5

  wm <- compute_closest_wgps(a,b,c,d,sc)

  expect_equal(length(wm), 5)
  expect_equal(wm[2], 2)
  expect_error(compute_closest_wgps(a,a,a,a,sc))
  expect_error(compute_closest_wgps(a,b,c,d,a))
})
