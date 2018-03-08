
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

"Przedzial predykcji dla pojedynczego kursanta"
"pierwsze badanie, 40% poza przedzialem"
przedzial_predykacji(n1, 1, 0.4, mean_x1, sigma1)
"pierwsze badanie, 66% poza przedzialem"
przedzial_predykacji(n1, 1, 0.66, mean_x1, sigma1)

"drugie badanie, 40% poza przedzialem"
przedzial_predykacji(n2, 1, 0.4, mean_x2, sigma2)
"drugie badanie, 66% poza przedzialem"
przedzial_predykacji(n2, 1, 0.66, mean_x2, sigma2)

"Przedzial predykcji dla średniej"
"pierwsze badanie, 40% poza przedzialem"
przedzial_predykacji(n1, Inf, 0.4, mean_x1, sigma1)
"pierwsze badanie, 66% poza przedzialem"
przedzial_predykacji(n1, Inf, 0.66, mean_x1, sigma1)

"drugie badanie, 40% poza przedzialem"
przedzial_predykacji(n2, Inf, 0.4, mean_x2, sigma2)
"drugie badanie, 40% poza przedzialem"
przedzial_predykacji(n2, Inf, 0.66, mean_x2, sigma2)
