> Note: Dans le monde des <a href="https://fr.wikipedia.org/wiki/Coding_dojo">coding dojo</a>,
> ceci est la donnée d'un "<a href="https://fr.wikipedia.org/wiki/Coding_dojo#Kata">kata</a>"
> dans le sens d'un _exercice de programmation_. Il est destiné à toute personne 
> voulant apprendre et parfaire ses connaissances sur le sujet.
>
> Ce document est en cours d'élaboration, toutes propositions, idées, pull request, 
> etc... seront très appréciées.


# Kata RegExp
Kata d'exploration des expressions régulières (RegExp).

* [Kata RegExp](README.md#kata-regexp)
   * [Intro](README.md#intro)
   * [Méta-caractères](README.md#meta-caractères)
   * [Exercices Pratiques](README.md#exercices-pratiques)
      * [Recherche de mots](README.md#recherche-de-mots)
      * [Validation d'une date au format jj-mm-aaaa](README.md#validation-dune-date-au-format-jj-mm-aaaa)
      * [Trouver les nombres pairs et impaires](README.md#trouver-les-nombres-pairs-et-impaires)
      * [Validation d'un pseudo](README.md#validation-dun-pseudo)
      * [Parser les liens d'une page HTML](README.md#parser-les-liens-dune-page-html)
      * [Validation d'e-mail](README.md#validation-de-mail)
         * [Références](README.md#références)
   * [Nombres premiers](README.md#nombres-premiers)
* [Conclusion](README.md#conclusion)
* [Solutions](README.md#solutions)


## Intro
Tout comme `git` ou `bash`, les expressions régulières sont incontournables dans
le monde de l'informatique. Le but de cet exercice est donc d'apprendre, par la
pratique, cet outil indispensable. Une rapide lecture des pages Wikipedia
[Française](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re) et
[Anglaise](https://en.wikipedia.org/wiki/Regular_expression) est recommandée
pour se faire une idée générale du sujet.

Le document "[Learn Regex](https://github.com/ziishaned/learn-regex/blob/master/README-fr.md)" 
permet d'apprendre les mécanismes pas à pas et offrira certainement une bonne 
source d'information pour réaliser les exercices qui suivent.

Les sites comme [regex101](https://regex101.com) ou
[regexr.com](https://regexr.com) permettent de tester de manière visuelle les
regex et apportent des explications utiles sur les motifs utilisés.


## Méta-caractères
Résumé des méta-caractères tiré de "[Learn
Regex](https://github.com/ziishaned/learn-regex/blob/master/README-fr.md)":

|Méta-caractère|Description|
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
Ces exercices permettent de mieux comprendre le langage des regex.

💡 si vous avez un langage de prédilection pour appliquer des regex, utilisez-le 
pour ces exercices. Autrement, [regex101](https://regex101.com), l'un des plus 
grand service de test de regex dans le monde, est à disposition.



## Recherche de mots

→ But: Le but de cet exercice est de se familiariser avec les outils et les 
méta-caractères cités ci-dessus.

💡 Note: pour avoir expérimenté cette partie lors d'un dojo, cette partie est
à revoir car les derniers points peuvent se réveler très complexes.

Le fichier [dict.txt](assets/dict.txt) est à disposition pour appliquer les regexp
proposées dans cet exercice.
  1. Trouver la ligne contenant le mot "Malagasy"
  1. Trouver les mots commençant par "M"
  1. Trouver les mots commençant par "M", finissant par "o"
  1. Trouver les mots commençant par "M", finissant par "o" et ayant un "la"
  1. Trouver les mots avec un double "aa"
  1. Trouver un moyen (et une variante) de trouver les mots de 7 lettres dans la liste
  1. Trouver les mots ne commençant pas par "Ma"
  1. Trouver les termes ayant une majuscule dans le mot à partir du 2ème caractère
  1. Trouver les mots ne finissant pas par "'s"
  1. Trouver des syntaxes alternatives à `.*` pour sélectionner des chaînes de caractères
  1. ...

## Validation d'une date au format jj-mm-aaaa

→ But: cet exercice permet de mettre en pratique une RegExp de validation de 
chaîne de caractère, en l'occurence, une [date au format Français](https://fr.wikipedia.org/wiki/Date#Pays_utilisant_le_format_jj/mm/aaaa)
 non [ISO 8601](https://fr.wikipedia.org/wiki/ISO_8601).


Comment valider une date au format jj/mm/aaaa avec une expressions régulière ?
 * Exemple de date valide: 01/02/2020
 * Exemples de dates invalides: 
    * 01.02.1337 `// séparateurs . plutôt que /`
    * 01-02-1337 `// séparateurs - plutôt que /`
    * 42/01/1337 `// jour impossible`
    * 31/31/1337 `// mois impossible`
    * 01/1/0001  `// mois sur 1 digit`
    * ab/cd/efgh `// caractères impossible`

## Trouver les nombres pairs et impaires

→ But: manipuler les aspects appris jusqu'ici pour trouver comment identifier 
des nombres pairs et impaires.

Comment trouver tous les nombres pairs d'une liste ? Et impaires ?

## Validation d'un pseudo

→ But: experimenter un cas concret de validation de pseudo. A noter que le 
"mais pas que des chiffres" peut être compliqué.

Pour la validation de l'inscription des utilisateurs sur un site internet, vous
devez développer le code qui validera les pseudos des utilisateurs. Quelle
serait l'expression régulière qui permettrait de valider que :
  * le pseudo contient que des lettres minuscules, sans caractères accentués ;
  * le pseudo peut contenir des chiffres, mais pas que des chiffres ;
  * le pseudo peut contenir des tirets (`-`) et des tirets bas (`_`) ;
  * le pseudo dit avoir de 3 à 15 caractères.


## Parser les liens d'une page HTML

→ But: mieux comprendre les groupes de sélection et éventuellement "dealer" avec 
les accents (e.g. avec l'utilisation de `[\w]`).

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

Le fichier [anonymized_list.html](anonymized_list.html) peut être utilisé comme source
de donnée si pas d'accès au site "cadiwww".

## Validation d'e-mail

→ But: comprendre qu'on ne peut pas valider une chaine sans comprendre la
définition de son format. Aborder la complexité de la RFC 5322.

> `Note there is no perfect email regex, hence the 99.99%.` (https://emailregex.com)

Beaucoup d'applications doivent gérer des e-mails, les stocker ou les valider.
Lors qu'on demande dans quel type de champs on devrait stocker un e- dans une
base de donnée à un apprenant, on se rend vite compte que la plupart ont estimé
"à la louche" ce que pourrait contenir les adresses e-mail et ne savent pas où
rechercher la bonne réponse. Quels sont les caractères autorisés dans la partie
locale, la longueur maximale d'une adresse e-mail, les possibilités de nom de
domaine.

Cet exercice débute donc avec une série de questions (partie 1):

  1. Quelle est la longueur maximale de la partie locale d'une adresse e-mail ?
  1. Quelle est la longueur maximale de la partie nom de domaine d'une adresse e-mail ?
  1. Par conséquent, quelle est la longueur maximale d'une adresse e-mail ?
  1. Et minimale ?
  1. Dans la partie nom de domaine, combien de point peut-on avoir (de ... à ...) ?
  1. Quels sont les caractères autorisés qui vous surprennent le plus dans la partie locale ?


Pour la suite, utiliser les adresses e-mail du fichier [email.md](assets/emails.md)
pour tenter de trouver la RegExp compatible avec la norme RFC des e-mails (partie 2).

Pour terminer, lire (et comprendre) [comment valider à 100% une adresse e-mail (The 100% correct way)](https://hackernoon.com/the-100-correct-way-to-validate-email-addresses-7c4818f24643).

#### Références
* https://en.wikipedia.org/wiki/Email_address#Examples
* https://emailregex.com
* https://www.regular-expressions.info/email.html
* https://hackernoon.com/the-100-correct-way-to-validate-email-addresses-7c4818f24643

## Nombres premiers
Pour terminer les exercices, voir "A regular expression to check for prime numbers (noulakaz.net)" : https://news.ycombinator.com/item?id=9039537 / http://montreal.pm.org/tech/neil_kandalgaonkar.shtml


# Conclusion

// TODO

---


# Solutions

Le but de ce kata est de découvrir et pratiquer les expressions régulières. Il y a bien évidemment plusieurs solutions possibles, manières de faires, plus ou moins élégantes ou adéquates pour résoudre un cas. Ci-dessous des propositions de réponse.

<details>
  <summary>Solution pour "Recherche de mots"</summary>

1. Trouver la ligne contenant "Malagasy"
    * `Malagasy`
1. Trouver les mots commençant par "M"
    * `^M.*`
1. Trouver les mots commençant par "M", finissant par "o"
    * `^M.*o$`
1. Trouver les mots commençant par "M", finissant par "o" et ayant un "la"
    * `^M.*(la).*o$`
1. Trouver les mots avec un double "aa"
    * `.*(aa).*`
    * `^\w*(aa)\w*$`
1. Trouver un moyen (et une variante) de trouver les mots de 7 lettres dans la liste
    * `/......./`
    * `/^\w{7}$/`
    * `/^[[:alpha:]]{7}$/` ou `/^[[:word:]]{7}$/`
    * `/^[A-Za-z]{7}$/`
1. Trouver les mots ne commençant pas par "Ma"
    * `^(?!Ma).*$`
1. Trouver les termes ayant une majuscule dans le mot à partir du 2ème caractère
    * `.[A-Z].*`
1. Trouver les mots ne finissant pas par "'s"
    * `.*(?<!\'s)$`
1. Trouver des syntaxes alternatives à `.*` pour sélectionner des chaînes de caractères
    * Voir les [classes de caractères](https://en.wikipedia.org/wiki/Regular_expression#Character_classes)
      * `\w`, `\W` ou encore `[:alpha:]` (Attention de bien noter les différences)

</details>

<details>
  <summary>Solution pour "Validation d'une date au format jj-mm-aaaa"</summary>

  // TODO

</details>

<details>
  <summary>Solution pour "Trouver les nombres pairs et impaires"</summary>

[src](https://www.abracadabrapdf.net/ressources-et-tutos/abracadabragrep/grep-pour-indesign-detecter-chiffres-pairs-et-impairs/)

```js
Nombre pairs \<\d*[02468]+\> / Impaires \<\d*[13579]+\>
```
</details>

<details>
  <summary>Solution pour "Validation d'un pseudo"</summary>

```js
[a-z0-9_\-]*[a-z_\-][a-z0-9\-_]*

^(?![0-9])[a-z0-9_\-]{3,15}+
```
</details>

<details>
  <summary>Solution pour "Parser les liens d'une page HTML"</summary>

Voir la solution sur https://regex101.com/r/4G0JO8/2

```js

\?sciper=([0-9]{1,})[^0-9]>(.*?)<\/a>

curl https://cadiwww.epfl.ch/listes\?groupe\=epfl-dojo | perl -ne  '/sciper=(.+)\">(.+)<\/a>/ && print "${1} ${2}\n"'


```
</details>

<details>
  <summary>Solution pour "Validation d'e-mail" (partie 1)</summary>

1. Quelle est la longueur maximale de la partie locale d'une adresse e-mail ?
1. Quelle est la longueur maximale de la partie nom de domaine d'une adresse e-mail ?
1. Par conséquent, quelle est la longueur maximale d'une adresse e-mail ?
1. Et minimale ?
1. Dans la partie nom de domaine, combien de point peut-on avoir (de ... à ...) ?
1. Quels sont les caractères autorisés qui vous surprennent le plus dans la partie locale ?
</details>

<details>
  <summary>Solution pour "Validation d'e-mail" (partie 2)</summary>

```js
(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])

Lire https://www.regular-expressions.info/email.html et https://hackernoon.com/the-100-correct-way-to-validate-e-mail-addresses-7c4818f24643 !
```
</details>


<details>
  <summary>Solution pour "Nombres premiers"</summary>

  // TODO

</details>
