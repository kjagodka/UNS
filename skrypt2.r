
calc_sigma <- function(n, p, mean_x) {
  t0 = qt(1 - p / 2, n - 1)
  #t0 = mean_x * sqrt(n) / sigma
  sigma = mean_x * sqrt(n) / t0
  return (sigma)
}

n1 = 10
mean_x1 = 1050
p1 = 0.031

n2 = 100
mean_x2 = 900
p2 = 2.78e-11

sigma1 = calc_sigma(n1, p1, mean_x1)
sigma2 = calc_sigma(n2, p2, mean_x2)

przedzial_predykacji <- function(n, m, alfa, mean_x, sigma) {
    t = qt(1 - alfa / 2, n - 1)
    delta = t * sigma * sqrt(1 / n + 1 / m)
    return(c(mean_x - delta, mean_x + delta))
}

m1 = 10
m2 = 100
alpha = 0.95


"BADANIE 1"
"Przedział ufności dla populacji"
przedzial_predykacji(n1, Inf, 1 - alpha, mean_x1, sigma1)
"Przedział ufności dla pojedynczej próby"
przedzial_predykacji(n1, 1, 1 - alpha, mean_x1, sigma1)
"Przedział ufności dla kolejnej takiej samej próby"
przedzial_predykacji(n1, n1, 1 - alpha, mean_x1, sigma1)

"BADANIE 2"
"Przedział ufności dla populacji"
przedzial_predykacji(n2, Inf, 1 - alpha, mean_x2, sigma2)
"Przedział ufności dla pojedynczej próby"
przedzial_predykacji(n2, 1, 1 - alpha, mean_x2, sigma2)
"Przedział ufności dla kolejnej takiej samej próby"
przedzial_predykacji(n2, n2, 1 - alpha, mean_x2, sigma2)
