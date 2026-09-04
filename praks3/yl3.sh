#!/bin/bash

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

tais_bussid=$(expr $reisijad / $kohad)
maha_jaanud=$(expr $reisijad % $kohad)

echo "Taielikult taidetud busse: $tais_bussid"
echo "Maha jaanud inimesi: $maha_jaanud"
