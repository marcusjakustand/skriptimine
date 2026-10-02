# GitHowTo õppeprojekt: work

## Projekti kirjeldus
See repositoorium on loodud GitHowTo interaktiivse juhendi läbimisel. Projekti peamine eesmärk oli praktiliste harjutuste käigus selgeks saada versioonihaldussüsteemi Git põhitõed, harude haldamine ning igapäevased töövood, mida tarkvaraarenduses kasutatakse.

## Mida selle projekti käigus õppisin?
Projekti käigus sain praktilise kogemuse järgmistes teemades:
- Failide staatuste jälgimine ja muudatuste ettevalmistamine committimiseks.
- Selgete ja mõistlike commit-sõnumite kirjutamine.
- Projekti ajaloo sirvimine ja muudatuste kontrollimine.
- Uute harude loomine, nende vahel liikumine ja koodi mestimine.
- Konfliktide mõistmine ja vältimine harude ühendamisel.

## Kuidas Git'i põhitöövoog toimib?
Git'i kasutamisel liiguvad muudatused läbi kolme peamise ala:
1. **Töökaust (Working Directory)**: Koht, kus teed failides reaalseid muudatusi.
2. **Ooteala (Staging Area / Index)**: Ala, kuhu märgid käsuga `git add` need muudatused, mida soovid järgmisesse salvestuspunkti kaasa võtta.
3. **Kohalik hoidla (Local Repository)**: Käsk `git commit` salvestab ootealal olevad muudatused püsivalt projekti ajalukku.

Tüüpiline igapäevane töövoog käsureal näeb välja selline:
```bash
# 1. Kontrolli failide olekut
git status

# 2. Lisa muudetud failid ootealale
git add README.md

# 3. Salvesta muudatused koos kirjeldava sõnumiga
git commit -m "Täiendatud README.md faili õppekokkuvõttega"

# 4. Saada muudatused kaughoidlasse (GitHubi)
git push origin main

#Kasutatud Git käsud ja nende selgitused

git status — Näitab töökausta ja ooteala hetkeseisu (milliseid faile on muudetud või valmis committimiseks).

git add — Lisab faili või muudatused ootealale (staging area).

git commit — Salvestab ootealal olevad muudatused uue salvestuspunktina (commit'ina) ajalukku.

git log — Kuvab projekti commit'ide ajaloo koos autorite ja sõnumitega.

git branch — Kuvab olemasolevad harud või loob uue haru.

git switch — Vahetab aktiivset haru (nt git switch main).

git merge — Ühendab teise haru muudatused praegusele aktiivsele harule.

#Õpitud oskuste kontrollnimekiri

[x] Repositooriumi algatamine ja failide jälgimine

[x] Muudatuste salvestamine (git add ja git commit)

[x] Projekti ajaloo uurimine (git log)

[x] Harudega töötamine (git branch ja git switch)

[x] Harude mestimine (git merge)

[x] Selge ja struktureeritud README.md dokumentatsiooni koostamine

Viited ja lisamaterjalid
Juhend, mille põhjal harjutused läbiti: GitHowTo — Interaktiivne Git'i juhend


