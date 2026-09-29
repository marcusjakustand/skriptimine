#!/bin/bash

# ==============================================================================
# BASH FUNKTSIOONIDE NÄIDISSKRIPT
# Katab teemad: defineerimine, argumendid, lokaalmuutujad, return ja $?
# ==============================================================================

# 1. & 3. Lihtne funktsioon ilma argumentideta
tervita() {
    echo "Tere tulemast skripti!"
}

# 6. Funktsioonid, mis kutsuvad teisi funktsioone
kuva_kasutaja() {
    echo "Kasutaja: $(whoami)"
}

kuva_host() {
    echo "Arvuti: $(hostname)"
}

kuva_süsteemi_info() {
    echo "--- SÜSTEEMI ANDMED ---"
    kuva_kasutaja
    kuva_host
}

# 7., 8. & 12. Argumendid ja lokaalsed muutujad (local)
kasutaja_info() {
    local nimi="$1"
    local vanus="$2"

    echo "Kasutaja $nimi on $vanus aastat vana."
}

# 8., 9., 13. & 14. Aritmeetika, argumentide arvu kontroll ($#) ja return
liida() {
    # Kontrollime, et antud oleks täpselt 2 argumenti
    if [ "$#" -ne 2 ]; then
        echo "Viga: Funktsioon liida() vajab täpselt 2 argumenti!" >&2
        return 1 # Tagastame veakoodi
    fi

    local arv1="$1"
    local arv2="$2"

    # Arvutus ja tulemuse trükkimine standardväljundisse (stdout)
    echo "$(( arv1 + arv2 ))"
    return 0
}

# 10. Kõikide argumentide läbikäimine ("$@")
trüki_nimekiri() {
    echo "Nimekirjas on $# elementim:"
    local elem
    for elem in "$@"; do
        echo " - $elem"
    done
}

# 14. & 16. Olekukoodi tagastamine ja funktsiooni kasutamine if-tingimuses
fail_olemas() {
    local fail="$1"
    [ -f "$fail" ] # Tagastab 0 kui fail on olemas, muidu 1
}

# ==============================================================================
# PÕHIPROGRAMM (Käivitus)
# ==============================================================================

echo "=== 1. Lihtne väljakutse ja tsükkel ==="
tervita
for i in {1..2}; do
    tervita
done

echo -e "\n=== 2. Funktsioonide koondamine ==="
kuva_süsteemi_info

echo -e "\n=== 3. Lokaalsete muutujatega funktsioon ==="
kasutaja_info "Mari" 22

echo -e "\n=== 4. Tulemuse salvestamine muutujasse \$() abil ==="
summa=$(liida 15 25)
echo "15 + 25 = $summa"

echo -e "\n=== 5. Veakäsitlus ja olekukood (\$?) ==="
liida 10 # Siin tekitame tahtlikult vea (ainult 1 argument)
echo "Viimase käsu olekukood (\$?): $?"

echo -e "\n=== 6. Kõik argumendid (\"$@\") ==="
trüki_nimekiri "Õun" "Pirn" "Banaan" "Kask"

echo -e "\n=== 7. Funktsiooni kasutamine tingimuslauses ==="
KONTROLLITAV_FAIL="/etc/passwd"
if fail_olemas "$KONTROLLITAV_FAIL"; then
    echo "Fail $KONTROLLITAV_FAIL leiti süsteemist."
else
    echo "Faili $KONTROLLITAV_FAIL ei eksisteeri."
fi
