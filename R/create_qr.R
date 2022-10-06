

hull_fun <- function(data) {

  x_low <- stats::quantile(data$x, 0.05)
  x_high <- quantile(data$x, 0.95)

  y_low <- quantile(data$y, 0.05)
  y_high <- quantile(data$y, 0.95)

  hull_data <- data %>%
    dplyr::filter((x > x_low) & (x < x_high)) %>%
    filter((y > y_low) & (y < y_high)) %>%
    dplyr::slice(grDevices::chull(x, y))

  return(hull_data)
}
