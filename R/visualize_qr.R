
visualize_qr <- function(code) {
  qr_plot <- ggplot(data = code,
                    aes(x = this, y = that)) +
    geom_point()

  return(qr_plot)
}

