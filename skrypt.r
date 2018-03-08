#to czyta dane z plików i wczytuje je do "zmiennych" dane1, dane2
dane1 = read.csv("wprowadz_1.csv")
dane2 = read.csv("wprowadz_2.csv")
t.test(dane1)
t.test(dane2)
t.test(dane1, dane2)
