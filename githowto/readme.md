# GitHowTo õppeprojekt: work

## Projekti kirjeldus
See repositoorium on loodud GitHowTo interaktiivse juhendi läbimisel. Projekti peamine eesmärk oli praktiliste harjutuste käigus selgeks saada versioonihaldussüsteemi Git põhitõed, harude haldamine ning igapäevased töövood, mida tarkvaraarenduses kasutatakse.

## Mida selle projekti käigus õppisin?
- Failide staatuste jälgimist ja muudatuste ettevalmistamist committimiseks.
- Selgete ja mõistlike commit-sõnumite kirjutamist.
- Projekti ajaloo sirvimist ja muudatuste kontrollimist.
- Uute harude loomist, nende vahel liikumist ja koodi mestimist.
- Konfliktide mõistmist ja vältimist harude ühendamisel.

## Kuidas Git'i põhitöövoog toimib?
Git'i kasutamisel liiguvad muudatused läbi kolme peamise ala:
1. **Töökaust (Working Directory)**: Koht, kus teed failides reaalseid muudatusi.
2. **Ooteala (Staging Area)**: Ala, kuhu märgid käsuga `git add` need muudatused, mida soovid järgmisesse salvestuspunkti kaasa võtta.
3. **Kohalik hoidla (Local Repository)**: Käsk `git commit` salvestab ootealal olevad muudatused püsivalt projekti ajalukku.

Tüüpiline igapäevane töövoog käsureal näeb välja selline:
```bash
# 1. Kontrolli failide olekut
git status

# 2. Lisa muudetud failid ootealale
git add README.md

# 3. Salvesta muudatused koos kirjeldava sõnumiga
git commit -m "Täiendatud README.md faili"

# 4. Saada muudatused kaughoidlasse (GitHubi)
git push origin main
