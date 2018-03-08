#to czyta dane z plików i wczytuje je do "zmiennych" dane1, dane2
dane1 = read.csv("wprowadz_1.csv")
dane2 = read.csv("wprowadz_2.csv")
"TEST STUDENTA, DANE 1"
t.test(dane1)
"TEST STUDENTA, DANE 2"
t.test(dane2)
"TEST STUDENTA, DANE 1, 2, METODA MĄDRA"
t.test(dane1, dane2)
"TEST STUDENTA, DANE 1, 2, METODA PRZYBLIŻONA"
t.test(dane1, dane2, var.equal=TRUE)

"#############################"
"HISTORIA ZMYŚLONA"

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
    t = qt(1 - alfa, n - 1)
    delta = t * sigma * sqrt(1 / n + 1 / m)
    return(c(mean_x - delta, mean_x + delta))
}

przedzial_predykacji(n1, 1, 0.2, mean_x1, sigma1)
przedzial_predykacji(n1, 1, 0.33, mean_x1, sigma1)
