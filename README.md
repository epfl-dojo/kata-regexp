---

   Note: Dans le monde des [coding dojo](https://fr.wikipedia.org/wiki/Coding_dojo), ceci est la donnée d'un "[kata](https://fr.wikipedia.org/wiki/Coding_dojo#Kata)" dans le sens d'un exercice de programmation. Ce document est en cours d'élaboration, toutes propositions, idées, pull request, etc... seront très appréciées.

---

# Kata RegExp
Kata d'exploration des expressions régulières (RegExp).

## Intro
Tout comme `git` ou `bash`, les expressions régulières sont incontournables dans 
le monde de l'informatique. Le but de cet exercice est donc d'apprendre, par la 
pratique, cet outil indispensable. Une rapide lecture des pages Wikipedia 
[Française](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re) et 
[Anglaise](https://en.wikipedia.org/wiki/Regular_expression) est recommandée 
pour se faire une idée générale du sujet.

Le document "[Learn
Regex](https://github.com/ziishaned/learn-regex/blob/master/README-fr.md)" permet 
d'apprendre les mécanismes pas à pas et dans la mesure du possible, cet 
exercice essayera de suivre la progression selon ce document.

Les sites comme [regex101](https://regex101.com) ou 
[regexr.com](https://regexr.com) permettent de tester de manière visuelle les 
regex et apportent des explications utiles sur les motifs utilisés.

 💡 si vous avez un language de prédiléction pour appliquer des regex, utilisez-le pour ces exercices. Autrement, [regex101](https://regex101.com) est l'un des plus grand service de test de regex dans le mondre.

 
## Meta caractères

Résumé des meta-caractères tiré de "[Learn
Regex](https://github.com/ziishaned/learn-regex/blob/master/README-fr.md)":

|Meta-caractère|Description|
|:----:|----|
|.|Un point coïncide avec n'importe quel caractère unique à part le retour à la ligne.|
|[ ]|Classe de caractères. Coïncide avec n'importe quel caractère entre crochets.|
|[^ ]|Négation de classe de caractère. Coïncide avec n'importe quel caractère qui n'est pas entre les crochets.|
|*|Coïncide avec 0 ou plus répétitions du caractère précédent.|
|+|Coïncide avec 1 ou plus répétitions du caractère précédent.|
|?|Rend le caractère précédent optionnel.|
|{n,m}|Accolades. Coïncide avec au moins "n" mais pas plus que "m" répétition(s) du caractère précédent.|
|(xyz)|Groupe de caractères. Coïncide avec les caractères "xyz" dans l'ordre exact.|
|&#124;|Alternation (ou). Coïncide soit avec le caractère avant ou après le symbole.|
|&#92;|Échappe le prochain caractère. Cela permet de faire coïncider des caractères réservés tels que <code>[ ] ( ) { } . * + ? ^ $ \ &#124;</code>|
|^|Coïncide avec le début de la chaîne de caractères (string).|
|$|Coïncide avec la fin de la chaîne de caractères (string).|

# Exercices Pratiques

Ces premiers exercices permettent de mieux comprendre le language des regex. Le
fichier [dict.txt](assets/dict.txt) est à disposition pour appliquer les regexp
proposées dans cet exercice.

→ But: // TODO

### Recherche de mots
  1. Trouver un moyen (et une variante) de trouver les mots de 7 lettres dans la liste
  1. Trouver les mots ne commençant pas par "Ma"
  1. Trouver les mots avec un double "aa"
  1. Trouver les mots commençant par "M", finissant par "o"
  1. Trouver les mots commençant par "M", finissant par "o" et ayant un "la"
  1. Trouver les noms ayant une majuscule dans le nom (pas uniquement au début)
  1. Trouver les mots ne finissant pas par "'s"
  1. ...
  1. ...

## Validation d'une date au format jj-mm-aaaa

→ But: // TODO

Comment valider une date au format jj-mm-aaaa avec une expressions régulière ?
 * Exemple de date valide: 01-02-1337
 * Exemples de dates invalides: 01.02.1337 / 31-31-1337 / 42-01-1337 / 01-01-0001 / ab-cd-efgh

## Trouver les nombres pairs et impaires

→ But: // TODO

Comment trouver tous les nombres pairs d'une liste ? Et impaires ?

## Validation d'un pseudo

→ But: // TODO

Pour la validation de l'inscription des utilisateurs sur un site internet, vous
devez développer le code qui validera les pseudos des utilisateurs. Quelle
serait l'expression régulière qui permettrait de valider que :
  * le pseudo contient que des lettres minuscules, sans caractères accentués ;
  * le pseudo peut contenir des chiffres, mais pas que des chiffres ;
  * le pseudo peut contenir des tirets (`-`) et des tirets bas (`_`)  ;
  * le pseudo dit avoir de 3 à 15 caractères.


### Parser les liens d'une page HTML

→ But: comprendre les groupes et "dealer" avec les accents

Depuis la source d'une page de cadiwww (e.g.
view-source:https://cadiwww.epfl.ch/listes?groupe=epfl-dojo), on veut générer un
fichier JSON sous la forme:
```
{
  "111111": "Brandy D. Cantor",
  "222222": "Joe King"
}
```

Quelle serait la regexp qui permettrait d'extraire, en une fois, le numéro sciper et le nom de la personne ? 

Le fichier (anonymized_list.html)[anonymized_list.html] peut être utilisé comme source de donnée.

### Validation d'email

→ But: comprendre qu'on ne peut pas valider une chaine sans comprendre la
définition de son format. Aborder la compléxité de la RFC 5322. 

> `Note there is no perfect email regex, hence the 99.99%.` (https://emailregex.com)

Beaucoup d'applications doivent gérer des emails, les stocker ou les valider.
Lors qu'on demande dans quel type de champs on devrait stocker un email dans une
base de donnée à un apprenant, on se rend vite compte que la plupart ont estimé 
"à la louche" ce que pourrait contenir les adresses email et ne savent pas où
rechercher la bonne réponse. Quels sont les caractères autorisés dans la partie
locale, la longueur maximale d'une adresse email, les possibilités de nom de
domaine.

Cet exercice débute donc avec une série de questions :

  1. Quelle est la longueur maximale de la partie locale d'une adresse email ?
  1. Quelle est la longueur maximale de la partie nom de domaine d'une adresse email ?
  1. Par conséquent, quelle est la longueur maximale d'une adresse email ?
  1. Et minimale ?
  1. Dans la partie nom de domaine, combien de point peut-on avoir (de ... à ...) ?
  1. Quels sont les caractères autorisés qui vous surprennent le plus dans la partie locale ?


Pour la suite, utiliser les adresses email du fichier [email.md](assets/emails.md) 
pour tenter de trouver la RegExp compatible avec la norme RFC des emails.

Pour terminer, lire (et comprendre) [comment valider à 100% une adresse email (The 100% correct way)](https://hackernoon.com/the-100-correct-way-to-validate-email-addresses-7c4818f24643).

#### Références
* https://en.wikipedia.org/wiki/Email_address#Examples
* https://emailregex.com
* https://www.regular-expressions.info/email.html
* https://hackernoon.com/the-100-correct-way-to-validate-email-addresses-7c4818f24643

## Nombres premiers
Pour terminer les exercices, voir "A regular expression to check for prime numbers (noulakaz.net)" : https://news.ycombinator.com/item?id=9039537 / http://montreal.pm.org/tech/neil_kandalgaonkar.shtml


# Conclusion
// TODO

# Solutions
// TODO

<details>
  <summary>Solution "Trouver les nombres pairs et impaires"</summary>

```js
Nombre pairs \<\d*[02468]+\> / Impaires \<\d*[13579]+\> [src](https://www.abracadabrapdf.net/ressources-et-tutos/abracadabragrep/grep-pour-indesign-detecter-chiffres-pairs-et-impairs/)
```
</details>


<details>
  <summary>Solution "Validation d'un pseudo"</summary>

```js
... not yet
```
</details>


<details>
  <summary>Solution "Parser les liens d'une page HTML"</summary>

```js
\?sciper=([0-9]{1,})[^0-9]>(.*?)<\/a>
https://regex101.com/r/4G0JO8/2
```
</details>


<details>
  <summary>Solution "Validation d'email"</summary>

```js
(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])

Lire https://www.regular-expressions.info/email.html et https://hackernoon.com/the-100-correct-way-to-validate-email-addresses-7c4818f24643 !
```
</details>
