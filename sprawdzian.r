roznicaSrednich = 1440
przedzialOd = 1340
przedzialDo = 1540

#oblicza t0 z wzoru na p-wartosc
obliczT0 <- function(n, p) {
  #p = 2 * (1 - pt(t0, 2 * n - 2))
  t0 = qt(1 - p / 2, 2 * n - 2)
  return (t0)
}

#syfny pierwiastek czyli to cos co pojawia sie
#we wzorach test dla dwóch wartości sredniich
obliczSyfnyPierwiastek <- function(n, p) {
  t0 = obliczT0(n, p)
  #t0 = roznicaSrednich/pierwiastek
  #pierwszy wzor w tym "rozdziale"
  syfnyPierwiastek = roznicaSrednich / t0
  return (syfnyPierwiastek)
}

poziomUfnosci <- function(n, p) {
  syfnyPierwiastek = obliczSyfnyPierwiastek(n, p)
  #delta = odleglosc od konca przedzialu do srodka = t * pierwiastek
  delta = roznicaSrednich - przedzialOd
  #delta = t * pierwiastek
  t = delta / syfnyPierwiastek
  #t = qt(1 - alfa/2, 2n - 2)
  x = pt(t, 2 * n - 2)
  #x = 1 - alfa/2
  alfa = 2 * (1 - x)
  return (1 - alfa)
}

poziomUfnosci(10, 0.04)
poziomUfnosci(10, 0.009)
poziomUfnosci(10, 0.0001)
poziomUfnosci(300, 0.04)
poziomUfnosci(300, 0.009)
poziomUfnosci(300, 0.0001)
