#!/bin/bash

#Wersja 0.9.3

#Prosty kalkulator snu. Wyświetla o której należy się położyć by przespać odpowiednią ilość cykli snu (1 cykl: ~90 minut):
echo "Cześć $USER! Wybierz jedną z opcji: "
echo "1) Podaję godzinę o której chcę wstać (program podpowie o której się położyć)."
echo "2) Podaję godzinę o której chcę się położyć (program podpowie o której wstać)."
echo "3) Chcę wyjść z programu."
printf "Twój wybór: "
read tryb

function PytanieOZasypianie {
echo #pusta przestrzeń dla estetyki
echo "Zanim zaczniemy. Jak szybko zasypiasz? (w minutach)"
echo "1) Ok 15 minut. (Domyślne)"
echo "2) Trochę dłużej/krócej. (Własne)"
printf "Twój wybór: "
read TrybZasypiania
}

function print1 {
  echo #pusta przestrzeń dla estetyki
  printf "Ok, o której chcesz wstać? "
  read godzina
}

function print2 {
 echo  #pusta przestrzeń dla estetyki
 printf "Ok, o której chcesz się położyć? "
 read godzina
}

function IleZasypia {
  echo  #pusta przestrzeń dla estetyki
  printf "Ok, ile minut zasypiasz? (Np. dla 20 minut napisz 00:20): "
  read CzasZasypiania
}

function obliczenia {
#Dane
zmienna="$godzina"
nzmienna="01:30"
nzmienna2="03:00"
nzmienna3="04:30"
nzmienna4="06:00"
nzmienna5="07:30"
nzmiennaZZZ="00:15" #czas na zaśnięcie

#Skrypt konwertuje powyższe stałe i zmienną na sekundy (potrzebne do obliczeń):
PodanaGodzina=$(date -u -d "$zmienna" +"%s")
Const=$(date -u -d "$nzmienna" +"%s")
Const2=$(date -u -d "$nzmienna2" +"%s")
Const3=$(date -u -d "$nzmienna3" +"%s")
Const4=$(date -u -d "$nzmienna4" +"%s")
Const5=$(date -u -d "$nzmienna5" +"%s")
ConstZZZ=$(date -u -d "$nzmiennaZZZ" +"%s")

#Operacje na przekonwertowanych danych:
wynik=$(date -u -d "0 $PodanaGodzina sec - $Const sec - $ConstZZZ sec " +"%H:%M")
wynik2=$(date -u -d "0 $PodanaGodzina sec - $Const2 sec - $ConstZZZ sec " +"%H:%M")
wynik3=$(date -u -d "0 $PodanaGodzina sec - $Const3 sec - $ConstZZZ sec " +"%H:%M")
wynik4=$(date -u -d "0 $PodanaGodzina sec - $Const4 sec - $ConstZZZ sec " +"%H:%M")
wynik5=$(date -u -d "0 $PodanaGodzina sec - $Const5 sec - $ConstZZZ sec " +"%H:%M")

#Output kalkulacji:
echo #pusta przestrzeń dla estetyki
echo "Powinieneś/aś się położyć o tych godzinach (zakładając że przeciętny człowiek potrzebuje ok. 15 minut na zaśnięcie):"
echo " $wynik" "(Jeden cykl: 1,5 godziny snu)"
echo " $wynik2" "(Dwa cykle: 3 godziny snu)"
echo " $wynik3" "(Trzy cykle: 4,5 godziny snu)"
echo " $wynik4" "(Cztery cykle: 6 godzin snu)"
echo " $wynik5" "(Pięć cykli: 7,5 godziny snu)"
echo #pusta przestrzeń dla estetyki
}

function obliczenia2 {
#Dane
zmienna="$godzina"
nzmienna="01:30"
nzmienna2="03:00"
nzmienna3="04:30"
nzmienna4="06:00"
nzmienna5="07:30"
nzmiennaZZZ="00:15" #czas na zaśnięcie

#Skrypt konwertuje powyższe stałe i zmienną na sekundy (potrzebne do obliczeń):
PodanaGodzina=$(date -u -d "$zmienna" +"%s")
Const=$(date -u -d "$nzmienna" +"%s")
Const2=$(date -u -d "$nzmienna2" +"%s")
Const3=$(date -u -d "$nzmienna3" +"%s")
Const4=$(date -u -d "$nzmienna4" +"%s")
Const5=$(date -u -d "$nzmienna5" +"%s")
ConstZZZ=$(date -u -d "$nzmiennaZZZ" +"%s")

#Operacje na przekonwertowanych danych:
wynik=$(date -u -d "0 $PodanaGodzina sec + $Const sec + $ConstZZZ sec " +"%H:%M")
wynik2=$(date -u -d "0 $PodanaGodzina sec + $Const2 sec + $ConstZZZ sec " +"%H:%M")
wynik3=$(date -u -d "0 $PodanaGodzina sec + $Const3 sec + $ConstZZZ sec " +"%H:%M")
wynik4=$(date -u -d "0 $PodanaGodzina sec + $Const4 sec + $ConstZZZ sec " +"%H:%M")
wynik5=$(date -u -d "0 $PodanaGodzina sec + $Const5 sec + $ConstZZZ sec " +"%H:%M")

#Output kalkulacji:
echo #pusta przestrzeń dla estetyki
echo "Powinieneś/aś wstać o tych godzinach (zakładając że przeciętny człowiek potrzebuje ok. 15 minut na zaśnięcie):"
echo " $wynik" "(Jeden cykl: 1,5 godziny snu)"
echo " $wynik2" "(Dwa cykle: 3 godziny snu)"
echo " $wynik3" "(Trzy cykle: 4,5 godziny snu)"
echo " $wynik4" "(Cztery cykle: 6 godzin snu)"
echo " $wynik5" "(Pięć cykli: 7,5 godziny snu)"
echo #pusta przestrzeń dla estetyki
}

function obliczeniaCust {
#Dane
zmienna="$godzina"
zmiennaZZZ="$CzasZasypiania" #czas na zaśnięcie
nzmienna="01:30"
nzmienna2="03:00"
nzmienna3="04:30"
nzmienna4="06:00"
nzmienna5="07:30"

#Skrypt konwertuje powyższe stałe i zmienną na sekundy (potrzebne do obliczeń):
PodanaGodzina=$(date -u -d "$zmienna" +"%s")
PodanaZZZ=$(date -u -d "$zmiennaZZZ" +"%s")
Const=$(date -u -d "$nzmienna" +"%s")
Const2=$(date -u -d "$nzmienna2" +"%s")
Const3=$(date -u -d "$nzmienna3" +"%s")
Const4=$(date -u -d "$nzmienna4" +"%s")
Const5=$(date -u -d "$nzmienna5" +"%s")

#Operacje na przekonwertowanych danych:
wynik=$(date -u -d "0 $PodanaGodzina sec - $Const sec - $PodanaZZZ sec " +"%H:%M")
wynik2=$(date -u -d "0 $PodanaGodzina sec - $Const2 sec - $PodanaZZZ sec " +"%H:%M")
wynik3=$(date -u -d "0 $PodanaGodzina sec - $Const3 sec - $PodanaZZZ sec " +"%H:%M")
wynik4=$(date -u -d "0 $PodanaGodzina sec - $Const4 sec - $PodanaZZZ sec " +"%H:%M")
wynik5=$(date -u -d "0 $PodanaGodzina sec - $Const5 sec - $PodanaZZZ sec " +"%H:%M")

#Output kalkulacji:
echo #pusta przestrzeń dla estetyki
echo "Powinieneś/aś się położyć o tych godzinach (zakładając że potrzebujesz ok. "$CzasZasypiania" minut na zaśnięcie):"
echo " $wynik" "(Jeden cykl: 1,5 godziny snu)"
echo " $wynik2" "(Dwa cykle: 3 godziny snu)"
echo " $wynik3" "(Trzy cykle: 4,5 godziny snu)"
echo " $wynik4" "(Cztery cykle: 6 godzin snu)"
echo " $wynik5" "(Pięć cykli: 7,5 godziny snu)"
echo #pusta przestrzeń dla estetyki
}

function obliczeniaCust2 {
#Dane
zmienna="$godzina"
zmiennaZZZ="$CzasZasypiania" #czas na zaśnięcie
nzmienna="01:30"
nzmienna2="03:00"
nzmienna3="04:30"
nzmienna4="06:00"
nzmienna5="07:30"

#Skrypt konwertuje powyższe stałe i zmienną na sekundy (potrzebne do obliczeń):
PodanaGodzina=$(date -u -d "$zmienna" +"%s")
PodanaZZZ=$(date -u -d "$zmiennaZZZ" +"%s")
Const=$(date -u -d "$nzmienna" +"%s")
Const2=$(date -u -d "$nzmienna2" +"%s")
Const3=$(date -u -d "$nzmienna3" +"%s")
Const4=$(date -u -d "$nzmienna4" +"%s")
Const5=$(date -u -d "$nzmienna5" +"%s")

#Operacje na przekonwertowanych danych:
wynik=$(date -u -d "0 $PodanaGodzina sec + $Const sec + $PodanaZZZ sec " +"%H:%M")
wynik2=$(date -u -d "0 $PodanaGodzina sec + $Const2 sec + $PodanaZZZ sec " +"%H:%M")
wynik3=$(date -u -d "0 $PodanaGodzina sec + $Const3 sec + $PodanaZZZ sec " +"%H:%M")
wynik4=$(date -u -d "0 $PodanaGodzina sec + $Const4 sec + $PodanaZZZ sec " +"%H:%M")
wynik5=$(date -u -d "0 $PodanaGodzina sec + $Const5 sec + $PodanaZZZ sec " +"%H:%M")

#Output kalkulacji:
echo #pusta przestrzeń dla estetyki
echo "Powinieneś/aś wstać o tych godzinach (zakładając że potrzebujesz ok. "$CzasZasypiania" minut na zaśnięcie):"
echo " $wynik" "(Jeden cykl: 1,5 godziny snu)"
echo " $wynik2" "(Dwa cykle: 3 godziny snu)"
echo " $wynik3" "(Trzy cykle: 4,5 godziny snu)"
echo " $wynik4" "(Cztery cykle: 6 godzin snu)"
echo " $wynik5" "(Pięć cykli: 7,5 godziny snu)"
echo #pusta przestrzeń dla estetyki
}

#Funkcje if:
if [ "$tryb" -eq "1" -o "$tryb" -eq "2" ] ; then
  PytanieOZasypianie
elif [ "$tryb" -eq "3" ] ; then
    : PytanieOZasypianie print1 print2 IleZasypia obliczenia obliczenia2 obliczeniaCust obliczeniaCust2 #skrypt przerywa działanie
fi

#Funkcje if zwiazane z obliczeniami:
if [ "$tryb" -eq "1" -a "$TrybZasypiania" = "1" ] ; then
  print1 && obliczenia
  : obliczenia2 obliczeniaCust obliczeniaCust2 IleZasypia PytanieOZasypianie #zapobiega wykonywaniu niepotrzebnych działań
fi

if [ "$tryb" -eq "1" -a "$TrybZasypiania" = "2" ] ; then
  IleZasypia && print1 && obliczeniaCust
  : obliczenia obliczenia2 obliczeniaCust2 PytanieOZasypianie #zapobiega wykonywaniu niepotrzebnych działań
fi

if [ "$tryb" -eq "2" -a "$TrybZasypiania" = "1" ] ; then
  print2 && obliczenia2
  : obliczenia obliczeniaCust obliczeniaCust2 IleZasypia PytanieOZasypianie #zapobiega wykonywaniu niepotrzebnych działań
fi

if [ "$tryb" -eq "2" -a "$TrybZasypiania" = "2" ] ; then
  IleZasypia && print2 && obliczeniaCust2
  : obliczenia obliczenia2 obliczeniaCust PytanieOZasypianie #zapobiega wykonywaniu niepotrzebnych działań
fi

exit
