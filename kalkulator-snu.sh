#!/bin/bash

#Wersja 0.5

#Prosty kalkulator snu. Wyświetla o której należy się położyć by przespać odpowiednią ilość cykli snu (1 cykl: ~90 minut):
echo "Wybierz jedną z opcji: "
echo "1) Chcę dowiedzieć się o której się położyć."
echo "2) Chcę dowiedzieć się o której wstać."
printf "Twój wybór: "
read tryb

function print1 {
  printf "Ok, o której chcesz wstać? "
  read godzina
}

function print2 {
 printf "Ok, o której chcesz się położyć? "
 read godzina
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

#Funkcje if:
if [ "$tryb" -eq "1" ] ; then
  print1 && obliczenia
elif [ "$tryb" -eq "1" ] ; then
  : obliczenia2 #zapobiega wykonywaniu działań z funkcji obliczenia2
fi

if [ "$tryb" -eq "2" ] ; then
  print2 && obliczenia2
elif [ "$tryb" -eq "2" ] ; then
  : obliczenia #zapobiega wykonywaniu działań z funkcji obliczenia
fi

exit
