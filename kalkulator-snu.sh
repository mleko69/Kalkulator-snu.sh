#!/bin/bash

#Wersja 0.1

#Prosty kalkulator snu. Wyświetla o której należy się położyć by przespać odpowiednią ilość cykli snu (1 cykl: ~90 minut):
printf "O której chcesz wstać? "
read godzina

function obliczenia {
#Stałe
nzmienna="01:30"
nzmienna2="03:00"
nzmienna3="04:30"
nzmienna4="06:00"
nzmienna5="07:30"
nzmiennaZZZ="00:15" #czas na zaśnięcie

#Skrypt konwertuje stałe i zmienną z funkcji if na sekundy (potrzebne do obliczeń):
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
echo "Powinieneś się położyć o tych godzinach (zakładając że przeciętny człowiek potrzebuje ok. 15 minut na zaśnięcie):"
echo " $wynik" "(Jeden cykl: 1,5 godziny snu)"
echo " $wynik2" "(Dwa cykle: 3 godziny snu)"
echo " $wynik3" "(Trzy cykle: 4,5 godziny snu)"
echo " $wynik4" "(Cztery cykle: 6 godzin snu)"
echo " $wynik5" "(Pięć cykli: 7,5 godziny snu)"
echo #pusta przestrzeń dla estetyki
}

#Funkcja if jeśli ktoś jeśli ktoś pisze północ jako godzinę 24, nie 00:
if [ "$godzina" = "24" ] ; then
  zmienna="00" && obliczenia
else
  zmienna="$godzina" && obliczenia
fi

exit
