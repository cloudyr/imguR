context("image upload")

test_that("image upload", {
    pdf(tmpfile <- tempfile())
    hist(rnorm(20))
    dev.off()
    expect_true(inherits(upload_image(tmpfile), "imgur_image"))
})

test_that("update image (anonymously)", {
    pdf(tmpfile <- tempfile())
    hist(rnorm(20))
    dev.off()
    expect_true(inherits(u <- upload_image(tmpfile, title = "Old Title"), "imgur_image"))
    expect_true(update_image(u$deletehash, title = 'New Title'))
    expect_true(get_image(u)[["title"]] == "New Title")
})

test_that("delete image (anonymously)", {
    pdf(tmpfile <- tempfile())
    hist(rnorm(20))
    dev.off()
    expect_true(inherits(u <- upload_image(tmpfile, title = "Old Title"), "imgur_image"))
    expect_true(delete_image(u$deletehash))
})

test_that("imgur device", {
    i <- imgur('png')
    hist(rnorm(20))
    expect_true(inherits(imgur_off(i), "imgur_image"))
})
