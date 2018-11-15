---

   Note: Dans le monde des [coding dojo](https://fr.wikipedia.org/wiki/Coding_dojo), ceci est la donnée d'un "[kata](https://fr.wikipedia.org/wiki/Coding_dojo#Kata)" dans le sens d'un exercice de programmation. Ce document est en cours d'élaboration, toutes propositions, idées, pull request, etc... seront très appréciées.

---

# Kata RegExp
Kata d'exploration des expressions régulières (RegExp).

## Intro
Tout comme `git` ou `bash`, les expressions régulières sont incontournable dans 
le monde de l'informatique. Le but de cet exercice est donc d'apprendre par la 
pratique cet outil indispensable. Une rapide lecture des pages wikipedia 
[Française](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re) et 
[Anglaise](https://en.wikipedia.org/wiki/Regular_expression) est recommandée 
pour une rapide introduction. 

Le document [Learn
Regex](https://github.com/ziishaned/learn-regex/blob/master/README-fr.md) permet 
d'apprendre les mécanismes pas à pas, et dans la mesure du possible, cet 
exercice essayera de suivre la progression selon ce document.

Les sites comme [regex101](https://regex101.com) ou 
[regexr.com](https://regexr.com) permettent de tester de manière visuel les 
regex et apportent des explications utiles sur les motifs utilisés.


## Idées
* Nombre pairs \<\d*[02468]+\> / Impaires \<\d*[13579]+\> [src](https://www.abracadabrapdf.net/ressources-et-tutos/abracadabragrep/grep-pour-indesign-detecter-chiffres-pairs-et-impairs/)
* Selection group ;
* Greedy / Non-Greedy ;
* A regular expression to check for prime numbers (noulakaz.net) https://news.ycombinator.com/item?id=9039537 / http://montreal.pm.org/tech/neil_kandalgaonkar.shtml
* https://en.wikipedia.org/wiki/Email_address#Examples + https://hackernoon.com/the-100-correct-way-to-validate-email-addresses-7c4818f24643

## Exercices Pratiques

### Validation d'un numéro d'inventaire

### Validation d'une date au format jj-mm-aaaa

### Trouver les nombres pairs et impaires

### Validation d'un pseudo

→ But: ...

Pour la validation de l'inscription des utilisateurs sur un site internet, vous
devez développer le code qui validera les pseudos des utilisateurs. Quelle
serait l'expression régulière qui permettrait de valider que :
  * le pseudo contient que des lettres minuscules, sans caractères accentués ;
  * le pseudo peut contenir des chiffres, mais pas que des chiffres ;
  * le pseudo peut contenir des tirets (`-`) et des tirets bas (`_`)  ;
  * le pseudo dit avoir de 3 à 15 caractères.

<details>
  <summary>Solution</summary>

```js
... not yet
```
</details>


### Parser la source d'une page

→ But: comprendre les groupes et "dealer" avec les accents

Depuis la source d'une page de cadiwww (e.g. view-source:https://cadiwww.epfl.ch/listes?groupe=epfl-dojo), on veut générer un fichier JSON sous la forme:
```
{
  "111111": "Brandy D. Cantor",
  "222222": "Joe King"
}
```

Quelle serait la regexp qui permettrait d'extraire, en une fois, le numéro sciper et le nom de la personne ? 

Le fichier (anonymized_list.html)[anonymized_list.html] peut être utilisé comme source de donnée.

<details>
  <summary>Solution</summary>

```js
\?sciper=([0-9]{1,})[^0-9]>(.*?)<\/a>
https://regex101.com/r/4G0JO8/2
```
</details>
