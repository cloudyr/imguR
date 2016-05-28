context("Basic Get Requests")

test_that("Get Album", {
    expect_true(inherits(get_album("cVsXX"), "imgur_album"))
})

test_that("Get Galleries", {
    expect_true(inherits(get_gallery(), "imgur_gallery_album"))
})

test_that("Search Galleries", {
    expect_true(inherits(search_gallery(query = "meme"), "imgur_gallery_album"))
})

test_that("Get Album Images", {
    expect_true(inherits(get_album_images("cVsXX")[[1]], "imgur_image"))
})

test_that("Get Image", {
    expect_true(inherits(get_image("VI8MBMu"), "imgur_image"))
})

test_that("Plot Image", {
    expect_true(inherits(plot(get_image("VI8MBMu")), "imgur_image"))
})

test_that("Get Random Images", {
    expect_true(inherits(get_random_images(), "imgur_gallery_album"))
})

test_that("Get Reddit Images", {
    expect_true(inherits(g <- get_reddit_gallery('dataisbeautiful'), "imgur_gallery_album"))
    expect_true(inherits(get_reddit_image('dataisbeautiful', g[[1]]), "imgur_gallery_image"))
})

test_that("Get Memes", {
    expect_true(inherits(default_memes(), "imgur_gallery_album"))
    expect_true(inherits(get_memes_gallery('viral', page = 1), "imgur_gallery_album"))
})

