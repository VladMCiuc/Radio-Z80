![](RackMultipart20240115-1-iox8c4_html_bb0bf02b5035052f.png)

# Proiect Microcontrolere Z80

# Radio

**Profesor indrumator proiect:**
##
_Costache Alexandru_

## Studenti
- Malearciuc Cosmin

- Olteanu Raluca

- Bobocea Iulian

- Petre Alexandra

- Nila David

## Grupa :
4LF602

## **1. Microprocesorul Z80**

Microprocesorul Z80, produs de compania Zilog, este un dispozitiv electronic de 8 biți cu 16 linii de adresă, care a fost lansat în 1976. Acest microprocesor este mai puternic decât modelele anterioare, având capacitatea de a adresa direct 64Kb de memorie, un set de 176 instrucțiuni, o singură sursă de alimentare și o viteză de funcționare mult mai mare.

Apariția lui Z80 a reprezentat o revoluție în domeniul tehnologiei informaționale, fiind adoptat în masă în detrimentul predecesorului său, microprocesorul 8080.

Z80 a devenit cel mai popular microcontroller de 8 biti al acelei perioade, fiind utilizat ca nucleu în numeroase computere precum Spectrum, Partner și Galaxi. În același an cu lansarea lui Z80, Intel a prezentat un model similar, numit 8085, însă acesta nu a reusit să îi ia locul lui Z80, care a păstrat un rol dominant în piață. Deși au apărut alte modele de microprocesoare, precum 6809 și 2650, Z80 a rămas unul dintre cei mai importanți reprezentanți ai acestui segment, alături de 6502 și 6800.

## **2. Afisare**

Afiașaj tip 7 segmente (plus punctul zecimal), 6 cifre, LED-uri roșii. Primele 4 celule sunt destinate afișării adresei unei locații de memorie, iar celelalte 2 sunt pentru afișarea datei conținute în acea locație. Ambele valori se afișează în format hexazecimal.În figura de mai jos se observă asocierea dintre cele 7 segmente  și literele cu care  sunt denumite acestea. Fiecare afisor conține 8 LED-uri ( 7 asociate segmentelor și unul asociat punctului zecimal). Cele 8 LED-uri sunt conectate cu anodul în comun.

 Comandarea concurentă a celor șase afișaje ar necesită un număr de 48 semnale, determinat astfel: (6 afișaje) × (8 semnale de date) = 48 semnale.

![poza1z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/e6a283b8-563e-47dc-9f61-5c870e92c8f1)

![poza2z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/d79db176-8af0-448e-a2ee-4998eaf146c7)


**Fig 1**. Denumirea celor 7 segmente ale unui afisor.

**3. TASTATURA**

Tastatura contine 36 de taste din care 19 corespund anumitor functii, 16 dintre ele reprezinta cifrele sistemului hexazecimal si o tasta care poate fi definite de catre utilizator.

Deoarece reactia unui calculator este mult mai rapida decât cea a utilizatorului, tastatura trebuie scanata repetat pana în momentul în care se detecteaza o tasta apasata. O tasta oscileaza pentru un timp scurt în momentul în care este apasata sau eliberata. Datorita oscilatiilor mecanice, daca viteza de scanare a tastaturii este prea mare, apasarea unei taste poate fi interpretata ca doua sau mai multe apasari successive. Pentru a evita acest lucru, perioada de scanare trebuie sa fie mai mare decat perioada oscilatiilor. Perioada oscilatiilor nu este mai mare de 10 ms, perioada de scanare trebuind fi aleasa intre 10 ms si 50 ms.

In tabelul de mai jos putem observa conversia tastelor in HEXA si tasta asociata acesteia pe macheta.

| **TASTA** | **COD(HEXA)** | **TASTA MACHETA** |
| --- | --- | --- |
| 0 | 0 | 0 |
| 1 | 1 | 1 |
| 2 | 2 | 2 |
| 3 | 3 | 3 |
| 4 | 4 | 4 |
| 5 | 5 | 5 |
| 6 | 6 | 6 |
| 7 | 7 | 7 |
| G | 19 | ADDR |
| F1 | 13 | STEP |
| F2 | 12 | GO |
| F5 | 1F | TPRD |
| F6 | 1E | TPWR |
| A | A | A |
| B | B | B |
| C | C | C |
| D | D | D |
| E | E | E |
| F | F | F |
| O | 1D | RELA |
| T | 18 | PC |
| R | 17 | DEL |
| H | 15 | SBR |
| L | 11 | - |
| N | 14 | DATA |
| PageDown | 1B | REG |
| PageUp | 1A | CBR |
| Delete | 1C | MOVE |
| Insert | 16 | INS |

**4. DESCRIERE PROIECT:**

Proiectul reprezintă un radio care poate difuza 4 stații, utilizatorul având acces la comutarea între aceste canale folosindu-se de tasta **R** pentru a selecta stația în meniul principal și tasta cu **cifra corespunzătoare stației** pentru a-l deschide. Dacă avem funcția de administrator, putem folosi funcția MUTE/UNMUTE apăsând tasta **T** odată ce am accesat o stație radio. Pentru a ne întoarce în meniul principal, apăsăm butonul **R** atunci când ne aflăm pe un post.

_EXEMPLU DE EXECUTIE:_

Să spunem că vrem să accesăm a 3-a stație radio din lista, să folosim funcția MUTE și să ne întoarcem la meniul principal.

Odată ce pornim simularea, va trebuii să introducem parolă (AA33A3). Apăsăm tasta **R** pentru a verifică parolă; dacă această este introdusă greșit vom intră cu funcție de utilizator.

Meniul principal va arata asa:

![poza3z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/37d78214-3477-4d43-ac7b-c07e7cdd0263)

De aici putem selecta a 3-a statia apasand de 2 ori tasta **R** ; Punctul de sub cifra reprezinta un indicator care marcheaza statia selectata.

![poza4z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/03ccd07d-4cc6-455e-963e-987e190181ef)

Ca sa accesam postul radio apasam tasta **3**

![poza5z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/ba8d392a-2d18-479a-803c-78bf74200d5c)

Va fi afisat numele intreg al acesteia, de la dreapta la stanga, urmand sa intram in meniul statie odata ce procesul de afisare este finalizat

![poza6z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/8bcb156b-f114-4730-8d19-c1f01c8f2613)

In acest meniu putem accesa functia MUTE (doar daca suntem admin) sau putem sa ne intoarcem la meniul principal apasand tasta **R.** Vom apasa tasta **T** pentru a initializa functia de mute

![poza7z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/96378144-faac-4652-b83b-e5ee005ab821)

Afisajul 'MUTE' ar trebuii sa dureze 2 secunde dupa care programul se va intoarce la meniul precedent. Daca apasam din nou tasta **T** , programul va trebuii sa afiseze pe display 'UNMUTE'

Switch-ul mute/unmute se face pe baza verificarii registrului B, care este incrementat de fiecare data cand functia e apelata; astfel verificam daca B este par (MUTE) sau impar (UNMUTE)

**5. DIAGRAMA DE FUNCTIONARE**

![poza8z80](https://github.com/VladMCiuc/Radio-Z80/assets/125990875/9e62da8c-d408-4333-9b1f-ab26006b8689)
