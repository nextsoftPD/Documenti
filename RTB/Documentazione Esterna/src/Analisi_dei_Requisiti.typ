#import "../../../assets/template.typ": project;
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)
/* senza la regola seguente le tabelle degli use case avrebbero 
 le linee interne che sono brutte da vedere */
#set table(
  fill: (rgb("#ffffff"), none),
  stroke: frame(rgb("21222C")),
)
// Esempio di utilizzo
#show: project.with(
  title: "Analisi dei Requisiti",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",),
  approvazione: ("Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",),
  uso: "Esterno",
  version: "0.2.0",
  date: "04/12/2024",
  versionamento: (
    "0.2.0", "30/12/2024", "Ion Cainareanu", "Stesura  dell'Introduzione e Descrizione", "Stefano Baso, Malik Giafar Mohamed", "Stefano Baso, Malik Giafar Mohamed",
    "0.1.1", "04/12/2024", "Luca Parise", "Aggiunta indice e creazione struttura tabella per use case", "Malik Giafar Mohamed","Malik Giafar Mohamed",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
  )
)


= Introduzione
== Scopo del documento
Lo scopo del presente documento è fornire una descrizione completa e dettagliata degli obiettivi, delle funzionalità e delle caratteristiche tecniche del progetto *Requirement Tracker - VS Code Plug-in*, con particolare attenzione all'utilizzo dell'UML per la modellazione dei casi d'uso. Il documento funge da riferimento per tutti gli stakeholder coinvolti, descrivendo il contesto operativo, i requisiti funzionali e non funzionali, nonché le linee guida tecnologiche necessarie per lo sviluppo del plug-in. I casi d'uso saranno descritti utilizzando una struttura standardizzata, che includerà il nominativo del caso, gli attori principali, le precondizioni, le postcondizioni, lo scenario principale e gli eventuali scenari alternativi o sottocasi. Questa struttura garantisce chiarezza e coerenza, facilitando la comprensione e la tracciabilità delle funzionalità principali del sistema. Il documento intende inoltre fornire una visione condivisa del progetto, ponendo le basi per una pianificazione e un'implementazione efficaci.
== Scopo del prodotto
Lo scopo di *Requirement Tracker - VS Code Plug-in* è affrontare il problema della complessità nella gestione e nel tracciamento dei requisiti nei progetti software di grandi dimensioni. Nei codebase estesi, la verifica manuale della copertura e dell'implementazione dei requisiti è un processo lungo e soggetto a errori, spesso complicato dalla qualità insufficiente con cui i requisiti stessi vengono definiti. Questo può portare a malintesi e problemi durante l'implementazione, compromettendo l'allineamento tra specifiche e funzionalità sviluppate. 
Il plug-in mira a risolvere queste difficoltà automatizzando il tracciamento dei requisiti nel codice sorgente, migliorando la qualità della loro definizione e semplificando l'identificazione delle aree di mancata o errata implementazione. In particolare, offre strumenti per integrare requisiti tecnici derivati da manuali e datasheet di componenti hardware, fornendo analisi automatizzate e suggerimenti per rendere i requisiti più chiari, specifici e strutturati. Grazie a questo, sviluppatori potranno garantire una gestione più efficace dei requisiti, riducendo errori e aumentando la coerenza tra specifiche e implementazione.
== Glossario
Per evitare ambiguità relative alle terminologie utilizzate è stato creato un documento denominato *Glossario*.
Questo documento comprende tutti i termini tecnici scelti dai membri del gruppo e utilizzati nei
vari documenti con le relative definizioni. Tutti i termini inclusi in questo glossario vengono segnalati
all'interno del documento con l'apice #super("G") accanto alla parola.

= Descrizione
== Obiettivi del prodotto 
L'obiettivo del progetto è realizzare un plug-in per Visual Studio Code che consenta di tracciare e verificare l'implementazione dei requisiti di progetto, basandosi su analisi automatizzate del codice sorgente e sui requisiti tecnici espressi in documenti di riferimento, mediante l'utilizzo di tecnologie avanzate come modelli LLM#super("G") di AI#super("G"). Il plug-in sarà supportato da API REST#super("G") che si interfacciano con Ollama#super("G"), fornendo un'infrastruttura flessibile e scalabile per l'integrazione di modelli di AI e garantendo un'elaborazione efficiente e sicura delle analisi richieste.
== Funzionalità del prodotto
Il plug-in sarà utilizzato dal programmatore per analizzare i requisiti implementati nel codice sorgente. Sia i requisiti che il codice saranno analizzati da vari modelli LLM reperibili attraverso la piattaforma di Ollama, grazie alle API REST che interagiscono con Ollama.\
Le funzionalità implementate nell'applicazione includono:
- Importazione del file dei requisiti in formato CSV#super("G");
- Richiesta di analisi dei requisiti tramite un modello LLM;
- Valutazione qualitativa dei requisiti;
- Visualizzazione grafica dei risultati dell'analisi;
- Filtraggio dei risultati dell'analisi;
- Possibilità di ripetere l'analisi di un requisito specifico;
- Esportazione dei risultati dell'analisi in formato CSV;
- Verifica dell'implementazione dei requisiti nel codice sorgente;
- Analisi semantica dei requisiti e del codice sorgente;
- Suggerimenti per migliorare la qualità dei requisiti e del codice.

== Utenti e caratteristiche 
In seguito a un incontro con il proponente, è stato discusso come il plug-in possa essere utilizzato principalmente da un utente che ricopre il ruolo di programmatore. Di conseguenza, si è deciso di focalizzare le funzionalità del plug-in per rispondere alle esigenze di questa categoria di utenti. È stato inoltre specificato che non devono essere fatte assunzioni sulle competenze tecniche dell'utente riguardo all'uso di Visual Studio Code. Pertanto, il plug-in deve essere progettato per essere il più intuitivo possibile, con un processo di installazione semplice e accessibile.\
= Use Case 

/*
tabella per uno use case, basta fare copia incolla 

#table(
  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
*/

== Obiettivi
== Attori 
//-------------------------------------------------------------------
== UC_1 - titolo UC_1
--> qui può essere inserita una immagina utile alla spiegazione dell'use case

#table(
  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
//-------------------------------------------------------------------
== UC_2 - titolo UC_2 

#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)

== UC_3 - titolo UC_3 
#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
#pagebreak()  //-> per andare direttamente alla pagina successiva  
\

=== UC_3.1 
#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
== UC_i 
#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
== UC_n

= Requisiti 
= Elenco delle immagini 
= Elenco delle tabelle 
