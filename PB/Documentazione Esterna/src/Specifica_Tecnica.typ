#import "../../../assets/template_v2.0.0.typ": project;

#show: project.with(
  title: "Specifica Tecnica",
  redattori: ("Maria Fuensanta Trigueros Hernandez", "Marco Perazzolo", ),
  verifica: ("",),
  approvazione: ("",),
  uso: "Esterno",
  version: "0.1.0",
  date: "18/03/2025",
  versionamento: (
    "0.1.0", "18/03/2024", "Maria Fuensanta Trigueros Hernandez, Marco Perazzolo", "Creazione del documento e stesura dei capitoli Introduzione e Tecnologie", "",
  )
)

#show figure: set block(breakable: true)

#outline(
  title: [Elenco delle tabelle],
  target: figure.where(kind: table),
  
)
#pagebreak()
= Introduzione 

== Scopo del documento
L'obiettivo di questo documento è fornire una descrizione dettagliata e completa dell'architettura del prodotto sviluppato. Sono incluse le tecnologie utilizzate e i requisiti necessari per il suo funzionamento.

Il documento presenta la struttura del prodotto attraverso diagrammi delle classi ed esplica alcune funzionalità tramite diagrammi di sequenza. Inoltre, giustifica l'uso di alcuni pattern di progettazione impiegati nell'implementazione

== Scopo del prodotto
Il prodotto, un _plug-in_#super("G") per _Visual Studio Code_#super("G") chiamato "Requirement Tracker Plug-in",
è progettato per automatizzare il tracciamento dei _requisiti_#super("G") nei progetti software complessi,
con un focus particolare sull'ambito _embedded_#super("G"). L'obiettivo principale è migliorare la qualità
e la chiarezza dei requisiti, fornendo suggerimenti basati sull'analisi di un'_intelligenza artificiale_#super("G"),
riducendo al contempo i tempi e gli errori legati alla verifica manuale dell'implementazione nel codice
sorgente. Il plug-in adotta un'architettura modulare che consente un'estensibilità semplice, rendendolo
facilmente adattabile a nuove funzionalità o esigenze future.
Inoltre, supporta gli sviluppatori avendo la capacità di utilizzare documenti tecnici come _knowledge_#super[G],
ad esempio datasheet e manuali, in modo da garantire una corretta implementazione dei requisiti.


== Glossario
I termini che potrebbero risultare ambigui sono contrassegnati alla loro prima apparizione con un apice #super("G"). La loro definizione completa è consultabile nel documento del glossario, in cui sono riportati in ordine alfabetico.


== Riferimenti
=== Riferimenti normativi
- Capitolato C8 : Requirement Tracker - Plug-in VS Code
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf
- Norme di Progetto
- Analisi dei Requisiti

=== Riferimenti informativi
- Progettazione e programmazione: Diagrammi delle classi: https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf

#pagebreak()

= Tecnologie
\

#figure(
  table(
    columns: (1fr, 0.5fr, 2fr),
    align: horizon,

    fill: (x,y) => if y == 0 {blue.lighten(90%) },
    inset: 6pt, 
    [*Tecnologia*],
    [*Versione*], 
    [*Descrizione*], 
  table.cell(colspan: 3, fill: blue.lighten(80%), [*Linguaggio*] ),

    
    [TypeScript],
    [5.6.3],
    [Linguaggio di programmazione ad alto livello, _open-source_#super("G"), che estende JavaScript aggiungendo _tipizzazione statica_#super("G"), _interfacce_#super("G") e controllo statico degli errori.],
    
    // [JavaScript],
    // [],
    // [],

    [CSS],
    [-],
    [Linguaggio di stile utilizzato per descrivere l'aspetto e la formattazione di interfacce web o appicazioni. Nel nostro caso serve a definire lo stile dell'interfaccia del plug-in.],
    
  table.cell(colspan: 3, fill: blue.lighten(80%), [*Strumenti*] ),

    [Visual Studio Code],
    [1.95.0],
    [Editor di codice gratuito sviluppato da Microsoft, utilizzato per scrivere, testare e fare _debugging_#super("G") di codice. Permette l'installazioni di estensioni per estendere le funzionalità dell'editor.],

    [npm],
    [10.9.2],
    [Gestore di pacchetti che consente di gestire librerie e _dipendenze_#super("G") in JavaScript.],

    [Node.js], 
    [20.x],
    [Ambiente di esecuzione JavaScript multipiattaforma e open-source, utilizzato per sviluppare applicazioni lato server ed _API_ #super("G").],

    [VS Code Extension API],
    [1.95.0],
    [API ufficiale di Visual Studio Code per creare estensioni che interagiscono e si integrano con l'editor.],

    [Git], 
    [2.42.0],
    [Git è un sistema di controllo di versione distribuito, utilizzato per la gestione del codice.],

    table.cell(colspan: 3, fill: blue.lighten(80%), [*Librerie e Framework*] ),

    [Ollama],
    [0.6.0],
    [_Framework_#super("G") open-source che permette di eseguire modelli _LLM_#super("G") in locale.],

    [Axios],
    [1.7.9],
    [Libreria JavaScript per effettuare richieste HTTP da browser e Node.js, permette la gestione di richieste asincrone.],

    [Express],
    [4.21.2],
    [Framework per Node.js che permette di creare API REST.],

    [Mocha],
    [10.0.9],
    [Framework di test per Node.js, permette di eseguire test asincroni con TypeScript.],

    [ESLint],
    [9.13.0],
    [Strumento open-source di analisi statica del codice per identificare _pattern_#super("G") problematici nel codice TypeScript.],
  ),
  caption: [Tecnologie coinvolte nel progetto]
)

#pagebreak()

= Architettura