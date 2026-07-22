plot_welcome_weather <- function() {
  months <- factor(month.abb, levels = month.abb)
  avg_temp <- c(17, 17, 15, 12, 9, 7, 6, 8, 10, 13, 14, 16)

  barplot(
    avg_temp,
    names.arg = months,
    col = "#5b8e7d",
    border = "white",
    main = "Average Monthly Temperature - Wellington, NZ",
    ylab = "Temperature (degrees C)",
    xlab = "Month",
    ylim = c(0, 20),
    las = 1
  )

  abline(h = mean(avg_temp), col = "#bc4b51", lwd = 2, lty = 2)
  legend(
    "topright",
    legend = paste0("Mean = ", round(mean(avg_temp), 1), " degrees C"),
    col = "#bc4b51",
    lwd = 2,
    lty = 2,
    bty = "n"
  )
}

plot_statistics_poster <- function() {
  op <- par(mar = c(0, 0, 0, 0))
  on.exit(par(op), add = TRUE)

  plot.new()
  plot.window(xlim = c(0, 10), ylim = c(0, 10))
  rect(0, 0, 10, 10, col = "#f8f5ef", border = NA)
  rect(0.4, 0.4, 9.6, 9.6, border = "#3d405b", lwd = 2)
  rect(0.4, 7.8, 9.6, 9.6, col = "#81b29a", border = NA)

  text(5, 8.8, "STATISTICS IS EVERYWHERE", cex = 1.7, font = 2, col = "#1f2a44")
  text(5, 7.9, "Questions, data, patterns, and decisions in context", cex = 0.95, col = "#1f2a44")

  keywords <- data.frame(
    x = c(2.1, 5, 8, 2.4, 7.7, 5),
    y = c(6.5, 6.1, 6.6, 3.8, 3.7, 2.2),
    label = c("sport", "school surveys", "media claims", "weather", "sampling", "comparison"),
    col = c("#e07a5f", "#3d405b", "#e07a5f", "#3d405b", "#3d405b", "#e07a5f")
  )

  text(keywords$x, keywords$y, keywords$label, cex = 1.05, col = keywords$col, font = 2)
  arrows(5, 5.2, 2.3, 6.1, length = 0.08, col = "#7a7a7a")
  arrows(5, 5.2, 5, 5.8, length = 0.08, col = "#7a7a7a")
  arrows(5, 5.2, 7.6, 6.1, length = 0.08, col = "#7a7a7a")
  arrows(5, 5.2, 2.7, 4.1, length = 0.08, col = "#7a7a7a")
  arrows(5, 5.2, 7.2, 4.0, length = 0.08, col = "#7a7a7a")
  arrows(5, 5.2, 5, 2.6, length = 0.08, col = "#7a7a7a")

  text(5, 5.2, "make sense\nof variation", cex = 1.25, font = 2, col = "#bc4b51")
}

draw_ppdac_cycle <- function() {
  stages <- c("Problem", "Plan", "Data", "Analysis", "Conclusion")
  n <- length(stages)
  angles <- seq(pi / 2, pi / 2 - 2 * pi, length.out = n + 1)[-(n + 1)]
  x <- cos(angles)
  y <- sin(angles)

  plot(0, 0, type = "n", xlim = c(-1.6, 1.6), ylim = c(-1.6, 1.6),
       asp = 1, axes = FALSE, xlab = "", ylab = "",
       main = "The PPDAC Cycle")

  cols <- c("#4dac26", "#b8e186", "#f1b6da", "#d01c8b", "#0571b0")
  for (i in seq_len(n)) {
    j <- (i %% n) + 1
    arrows(x[i] * 0.75, y[i] * 0.75, x[j] * 0.75, y[j] * 0.75,
           col = cols[i], lwd = 2, length = 0.12)
  }

  text(x * 1.2, y * 1.2, stages, font = 2, cex = 1.1)
}