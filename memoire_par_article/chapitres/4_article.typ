#import "../styles.typ": *

= Article : Titre <chap:article>

#text(size: 1.15em, weight: "bold")[Description de l'article]

- *Titre :* À compléter
- *Nom de la revue à comité de lecture :* À compléter
- *Auteurs.trices :*
  - Prénom #smallcaps[Nom], Département de géomatique appliquée, Université de Sherbrooke.
  - Prénom #smallcaps[Nom], Département à compléter, Université à compléter.
  - Prénom #smallcaps[Nom], Département à compléter, Université à compléter.
- *Référence complète de l'article :* Inclure le DOI si l'article est déjà publié.
- *État de cheminement :*
  - $checkmark$ Publié le jour mois année
  - $square$ Sous presse
  - $square$ Accepté moyennant modifications
  - $square$ Soumis le jour mois année

- *Résumé :* 
    #block(text(size: 11pt)[
      #set par(leading: 0.5em)
    Écrire le résumé ici.
    #lorem(150)
   ])

#text(size: 1.15em, weight: "bold")[Contributions de chaque coautrice et coauteur]
- *Auteur.trice I* 
  #block(text(size: 11pt)[
    #set par(leading: 0.5em)
    Conceptualisation ; revue de la littérature ; méthodologie ; collecte des données ; analyse des données ; interprétation des résultats ; rédaction – première ébauche ; rédaction – révision et édition ; visualisation (figures, graphiques, tableaux, etc.) ; supervision ; acquisition de fonds ; gestion du projet.
  ])
- *Auteur.trice II* 
  #block(text(size: 11pt)[
    #set par(leading: 0.5em)
    Conceptualisation...
 ])
- *Auteur.trice III* 
  #block(text(size: 11pt)[
    #set par(leading: 0.5em)
    Conceptualisation...
 ])


#pagebreak()

== Section 1 <sec:article_section1>

*Attention,* si votre article est en anglais, changez la langue avec `#set text(lang: "en")`. Pour revenir au français, utiliser `#set text(lang: "fr")`.

#lorem(200)

== Section 2 <sec:article_section2>

Paragraphe.

#lorem(200)
