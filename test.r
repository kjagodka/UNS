calc_sigma <- function(mean_x, n, p) {
    t0 = qt(1 - p / 2, n - 1)
    return(mean_x * sqrt(n) / t0)
}

#t0 = x * sqrt(n) / sigma
#sigma = x * sqrt(n) / t0

przedzial_ufnosci <- function(mean_x, n, sigma, alpha ) {
  t = qt((1 - alpha) / 2, n - 1)
  delta = t * sigma * sqrt(1 / n)
  return (c(mean_x - delta, mean_x + delta))
}
mean_x = 2
p = 0.007
n = 150
alpha = 0.95
sigma = calc_sigma(mean_x, n, p)
przedz = przedzial_ufnosci(mean_x, n, sigma, alpha)
przedz
