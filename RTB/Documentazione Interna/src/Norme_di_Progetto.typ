#import "../../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Norme di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu"),
  approvazione: ("Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu"),
  uso: "Interno",
  version: "0.1.0",
  date: "23/11/2024",
  versionamento: (
    "0.2.0", "15/12/2024", "Malik Giafar Mohamed", "Stesura fino a sezione 2.1.2.2", "Ion Cainareanu","Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Stesura Prima Versione", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu",

  )
)

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire in modo dettagliato le best practises
e il way of working del nostro gruppo per il progetto al fine di garantire qualità e coerenza nel lavoro svolto.

== Scopo del prodotto
Il prodotto, un plug-in per Visual Studio Code chiamato "Requirement Tracker",
è progettato per automatizzare il tracciamento dei requirements#super("G") nei progetti software complessi,
con un focus particolare sull'ambito embedded. L'obiettivo principale è migliorare la qualità
e la chiarezza dei requisiti, fornendo suggerimenti basati sull'analisi di un'intelligenza artificiale,
riducendo al contempo i tempi e gli errori legati alla verifica manuale dell'implementazione nel codice
sorgente. Il plug-in adotta un'architettura modulare che consente un'estensibilità semplice, rendendolo
facilmente adattabile a nuove funzionalità o esigenze future.
Inoltre, supporta gli sviluppatori nell'analisi di documenti tecnici,
come datasheet e manuali, per garantire una corretta copertura dei requisiti.

== Glossario
Per evitare ambiguità relative alle terminologie utilizzate è stato creato un documento denominato *Glossario*.
Questo documento comprende tutti i termini tecnici scelti dai membri del gruppo e utilizzati nei
vari documenti con le relative definizioni. Tutti i termini inclusi in questo glossario vengono segnalati
all'interno del documento con l'apice #super("G") accanto alla parola.
=== Riferimenti
==== Normativi
- Presentazione del capitolato *Requirement Tracker - Plug-in VS Code*
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf
- Standard ISO/IEC 12207:1995
  - https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
==== Informativi
- TBA
= Processi Primari
==  Fornitura
=== Descrizione e aspettative
Il processo di fornitura determina le procedure e le risorse necessarie per gestire
e garantire la consegna del capitolato#super("G"). Tale processo è iniziato con l'aggiudicazione dell'appalto
da parte di NextSoft#super("G") del capitolato.
Il gruppo NextSoft si aspetta quindi una comunicazione costante ed efficace con
il proponente#super("G") al fine di garantire il rispetto dei vincoli progettuali definiti
nella presentazione del capitolato e di produrre un applicativo che soddisfi le esigenze del proponente.
=== Attività
==== Ricerca delle tecnologie
I componenti di NextSoft si dividono in due macrogruppi,
uno dedito alla ricerca delle tecnologie necessarie per il Capitolato e l'altro dedito al processo di stesura della documentazione e alla discussione delle scelte progettuali proposte.
L'assegnazione ad un macrogruppo avviene 
in base alle preferenze dei singoli membri e sulle eventuali competenze pregresse sui requisiti obbligatori del capitolato.
Tale approccio permette una divisione del lavoro equa e una maggiore efficienza nella ricerca delle tecnologie,
mantenendo comunque un alto ritmo di tracciabilità delle scelte progettuali.
==== Normazione
Questa attività prevede la scrittura del seguente documento in maniera incrementale, 
modificandone il contenuto ogni qualvolta sia necessario.
//==== Documentazione fornita?
===== Piano di Progetto
===== Piano di Qualifica

//==== Collaudo e Rilascio del prodotto?


== Sviluppo
=== Analisi dei Requisiti
= Processi di Supporto
== Documentazione
=== Scopo e aspettative
=== Ciclo di vita del Prodotto
