show databases;
use ksiegarnia;
select ksiazki.tytul, count(zamowienia.idzamowienia) as liczbazamowien from ksiazki join zamowienia on ksiazki.idksiazki = zamowienia.idksiazki group by ksiazki.tytul having count(zamowienia.idzamowienia)=1;
select klienci.idklienta from klienci join zamowienia on klienci.idklienta = zamowienia.idklienta where month(zamowienia.data)=3;
select ksiazki.tytul, klienci.imie, klienci.nazwisko, klienci.miejscowosc from klienci join ksiazki where klienci.miejscowosc = "Warszawa";
select ksiazki.tytul, count(zamowienia.idzamowienia) as liczbazamowien from ksiazki join zamowienia on ksiazki.idksiazki = zamowienia.idksiazki group by ksiazki.tytul;
select klienci.imie, klienci.nazwisko, count(ksiazki.cena) as suma from klienci join ksiazki group by klienci.imie, klienci.nazwisko ;