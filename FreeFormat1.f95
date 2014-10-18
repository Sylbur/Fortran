PROGRAM macierze

DIMENSION A(99,99),B(99,99),C(99,99)
INTEGER kolumna1,kolumna2,kolumna3,wiersz1,wiersz2,wiersz3,i,j,k

WRITE(*,*)'Podaj rozmiar pierwszej macierzy, kolejno wiersze i kolumny'
READ(*,*)wiersz1
READ(*,*)kolumna1

WRITE(*,*)'Podaj rozmiar drugiej macierzy, kolejno wiersze i kolumny'
READ(*,*)wiersz2
READ(*,*)kolumna2

IF(kolumna1.NE.wiersz2)THEN
  WRITE(*,*)'ZLE MACIERZE'
ELSE

  wiersz3=wiersz1
  kolumna3=kolumna2

WRITE(*,*)'Podaj liczby do pierwszej macierzy'
DO i=1,wiersz1
  DO j=1,kolumna1
    READ(*,*)A(i,j)
END DO
END DO


WRITE(*,*)'Podaj liczby do drugiej macierzy'
DO i=1,wiersz2
  DO j=1,kolumna2
    READ(*,*)B(i,j)
END DO
END DO

DO i=1,wiersz1
  DO j=1,kolumna2
    C(i,j)=0
    DO k=1,kolumna1
      C(i,j)=C(i,j)+A(i,k)*B(k,j)
END DO
END DO
END DO

WRITE(*,*)':::AxB:::'
DO i=1,wiersz3
  DO j=1,kolumna3
    WRITE(*,*)C(i,j)
END DO
END DO
END IF







END