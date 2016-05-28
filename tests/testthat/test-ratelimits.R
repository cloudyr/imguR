context("Rate limits")

test_that("Rate Limits", {
    expect_true(inherits(rl <- rate_limit(), "imgur_basic"))
    expect_true(all(c("UserLimit", "UserRemaining", "ClientLimit", "ClientRemaining") %in% names(rl)))
})

