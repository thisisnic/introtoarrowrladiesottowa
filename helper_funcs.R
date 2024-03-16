# Function to delete unused images from the images folder
remove_unused_images <- function() {
  lines <- readLines("slides.qmd")
  images <- lines[stringr::str_detect(lines, "images/")]
  used_images <- images %>%
    stringr::str_extract("images/.*?[\\)|\"]") %>%
    stringr::str_remove("[\\)|\"]$")

  in_dir <- fs::dir_ls("images/", recurse = TRUE)

  setdiff(in_dir, used_images) %>%
    fs::file_delete()
}

