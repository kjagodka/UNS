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

calc_sigma <- function(n, p, mean_x)
{
  
}
