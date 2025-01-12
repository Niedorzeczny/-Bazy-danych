show databases;
use ksiegarnia;
select klienci.imie, klienci.nazwisko, zamowienia.data from klienci join zamowienia  on  klienci.idklienta = zamowienia.idklienta;
select ksiazki.tytul, zamowienia.status from ksiazki join zamowienia on ksiazki.idksiazki = zamowienia.idksiazki;
select zamowienia.idzamowienia, ksiazki.tytul from zamowienia join ksiazki on ksiazki.idksiazki = zamowienia.idksiazki;
select zamowienia.idzamowienia from zamowienia where zamowienia.idksiazki is null;
select ksiazki.tytul, klienci.imie, klienci.nazwisko, zamowienia.data from klienci join zamowienia join ksiazki; 
select klienci.imie, klienci.nazwisko, count(zamowienia.idzamowienia) as liczba from zamowienia join klienci on klienci.idklienta = zamowienia.idklienta group by klienci.imie, klienci.nazwisko;  



