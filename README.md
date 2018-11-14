---

   Note: ce "kata" est en cours d'élaboration, toutes propositions, idées, pull request, etc... seront très appréciées.

---


# Kata RegExp
Kata d'exploration des expressions régulières (RegExp)

## Intro

* https://en.wikipedia.org/wiki/Regular_expression
* https://github.com/ziishaned/learn-regex/blob/master/README-fr.md
* https://regex101.com / https://regexr.com

## Idées
* Valider un numéro sciper 123456 ;
* Valider des numéros d'inventaires, B123456, A789012, etc. ;
* Valider un pseudonyme: peut contenir des lettres minuscules, des nombres, des underscores et des traits d'union. Doit avoir de 3 à 15 caractères ;
* Selection group ;
* Greedy / Non-Greedy ;

## Exercices Pratiques

### Parser la source d'une page
Depuis la source d'une page de cadiwww (e.g. view-source:https://cadiwww.epfl.ch/listes?groupe=epfl-dojo), on veut générer un fichier JSON sous la forme:
```
{
  "111111": "Brandy D. Cantor",
  "222222": "Joe King"
}
```
Quelle serait la regexp qui permettrait d'extraire, en une fois, le numéro sciper et le nom de la personne ?

* But: comprendre les groupes et "dealer" avec les accents.
<!-- sciper=([0-9]{1,})[^0-9]>([A-zÀ-ÿ- ]*) -->
