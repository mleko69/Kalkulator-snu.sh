#!/bin/bash

#Wersja 0.9

#Prosty kalkulator snu. Wyświetla o której należy się położyć by przespać odpowiednią ilość cykli snu (1 cykl: ~90 minut):
echo "Wybierz jedną z opcji: "
echo "1) Chcę dowiedzieć się o której się położyć."
echo "2) Chcę dowiedzieć się o której wstać."
printf "Twój wybór: "
read tryb

echo #pusta przestrzeń dla estetyki
echo "Zanim zaczniemy. Jak szybko zasypiasz? (W minutach)"
echo "1) Około 15 minut. (Domyślne)"
echo "2) Trochę dłużej/krócej. (Własne)"
printf "Twój wybór: "
read TrybZasypiania

function print1 {
  echo #pusta przestrzeń dla estetyki
  printf "W porządku, o której chcesz wstać? "
  read godzina
}

function print2 {
 echo  #pusta przestrzeń dla estetyki
 printf "W porządku, o której chcesz się położyć? "
 read godzina
}

function IleZasypia {
  echo  #pusta przestrzeń dla estetyki
  printf "Ok, ile minut zasypiasz? (Np. dla 20 minut napisz 00:20) "
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
echo "Powinieneś/aś się położyć o tych godzinach:"
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
echo "Powinieneś/aś wstać o tych godzinach:"
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
if [ "$tryb" -eq "1" -a "$TrybZasypiania" -eq "1" ] ; then
print1 && obliczenia
elif [ "$tryb" -eq "1" -a "$TrybZasypiania" -eq "1" ] ; then
  : obliczenia2 obliczeniaCust obliczeniaCust2 IleZasypia #zapobiega wykonywaniu niepotrzebnych działań
fi

if [ "$tryb" -eq "1" -a "$TrybZasypiania" -eq "2" ] ; then
  IleZasypia && print1 && obliczeniaCust
elif [ "$tryb" -eq "1" -a "$TrybZasypiania" -eq "1" ] ; then
  : obliczenia obliczenia2 obliczeniaCust2 #zapobiega wykonywaniu niepotrzebnych działań
fi

if [ "$tryb" -eq "2" -a "$TrybZasypiania" -eq "1" ] ; then
print2 && obliczenia2
elif [ "$tryb" -eq "1" -a "$TrybZasypiania" -eq "1" ] ; then
  : obliczenia obliczeniaCust obliczeniaCust2 IleZasypia #zapobiega wykonywaniu niepotrzebnych działań
fi

if [ "$tryb" -eq "2" -a "$TrybZasypiania" -eq "2" ] ; then
  IleZasypia && print2 && obliczeniaCust2
elif [ "$tryb" -eq "2" -a "$TrybZasypiania" -eq "2" ] ; then
  : obliczenia obliczenia2 obliczeniaCust #zapobiega wykonywaniu niepotrzebnych działań
fi

exit
