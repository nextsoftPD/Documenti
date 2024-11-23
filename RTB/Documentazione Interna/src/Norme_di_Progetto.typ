#import "../../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Norme di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: (),
  approvazione: (),
  uso: "Interno",
  version: "0.1.0",
  date: "23/11/2024",
  versionamento: (
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Stesura Prima Versione", "", "",
  )
)

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire in modo dettagliato le best practises e il way of working del nostro gruppo per il progetto al fine di garantire qualità e coerenza nel lavoro svolto.

== Scopo del prodotto
Il prodotto, un plug-in per Visual Studio Code chiamato "Requirement Tracker", è progettato per automatizzare il tracciamento dei requisiti nei progetti software complessi, con un focus particolare sull'ambito embedded. L'obiettivo principale è migliorare la qualità e la chiarezza dei requisiti, fornendo suggerimenti basati sull'analisi di un'intelligenza artificiale, riducendo al contempo i tempi e gli errori legati alla verifica manuale dell'implementazione nel codice sorgente. Il plug-in adotta un'architettura modulare che consente un'estensibilità semplice, rendendolo facilmente adattabile a nuove funzionalità o esigenze future. Inoltre, supporta gli sviluppatori nell'analisi di documenti tecnici, come datasheet e manuali, per garantire una corretta copertura dei requisiti.
