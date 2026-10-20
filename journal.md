# Journal de bord du projet encadré

## 30/09/26 - git et manipulation de fichiers, pipelines

### Ce que j'ai fait

- git et manipulation de fichiers en mobilisant les notions des cours actuel et précédent (clé SSH, vocabulaire de base relatif à l'arborescence, jokers, commandes terminal pour manip fichiers (cd, ls, pwd, cat, less, wc, echo, commandes git de base...))
- Pipelines (flux d'entrée/sortie, redirections de contenus de fichiers, grep, sort, uniq, echo, cut, tail)

#### Pendant le cours

Exercice de manipulation de fichiers et arborescence, notions de base pour les pipelines.

#### Après le cours

Exercice git (création et récupération de dépôts, synchronisation de modifications, tags...), pipelines (compter le nb d'occurrences d'un mot dans des fichiers, sauvegarder des résultats dans un fichier...)

### Problèmes
commande wc non reconnue dans mon terminal > Paquet coreutils installé pour régler le problème.

# Séance 3

## exercices git
Cette ligne doit rester après correction

correction d'erreur

# PPE1

## TP3

### Ce que j'ai fait
- Correction d'erreurs en git
- gestion de conflits
- Introduction aux scripts bash (Arguments et variables, Instructions de contrôle...)

#### Après le cours
- Exercices de manipulation git (correction d'erreurs, gestion de conflits)
- Exercices d'introduction aux scripts bash (Arguments, boucles...)

Ligne de côté

#### Explication du code de la derniere diapo

Le script de la dernière diapo est un script bash.
Ce dernier commence par une vérification du nombre d'arguments : Un seul est attendu.
Cet argument est stocké dans la variable "FICHIER_URLS". Ce dernier correspond a un fichier, le script consiste en sa lecture ligne par ligne, à chaque ligne si cette dernière contient le début d'une url (comme vu sur le premier if statement) un message est alors print sur le stdout et la variable OK est incrémentée.
Dans le cas contraire, un message le précisant est affiché sur le stdout et la variable NOK est incrémentée.
À la fin de ce fichier les variables OK et NOK sont affichées sur le stdout pour apprécier le nombre de lignes contenant un url et le nb de lignes n'en contenant pas.
