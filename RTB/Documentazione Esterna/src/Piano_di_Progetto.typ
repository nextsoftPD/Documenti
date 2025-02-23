#import "../../../assets/template_v2.0.0.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Piano di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed", "Maria Fuensanta Trigueros Hernandez", ),
  verifica: ("Ion Cainareanu" , "Maria Fuensanta Trigueros Hernandez",),
  approvazione: (""),
  uso: "Esterno",
  version: "0.3.1",
  date: "23/11/2024",
  versionamento: (
    "0.4.0", "06/02/2024", "Malik Giafar Mohamed", "Miglioramento sezione rischi", "",
    "0.3.1", "12/1/2024", "Marco Perazzolo", "Correzione errori di battitura", "",
    "0.3.0", "12/1/2024", "Maria Fuensanta Trigueros Hernandez", "Continuazione e completamento di tutte le parti relative a RTB", "Marco Perazzolo",
    "0.2.0", "19/12/2024", "Maria Fuensanta Trigueros Hernandez", "Creazione della struttura e avvio della stesura del documento", "Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
  )
)

#outline(
  title: [Elenco delle tabelle],
  target: figure.where(kind: table),
  
)

#pagebreak()

= Introduzione 

== Scopo del documento

Questo documento descrive la pianificazione dello sviluppo del plugin Requirement Tracker per Visual Studio Code. Ha lo scopo di fornire un quadro chiaro per comprendere come verrà realizzato il progetto, comprese le strategie, i rischi e le risorse necessarie per l'implementazione. 

== Scopo del capitolato

Il capitolato scelto riguarda lo sviluppo di un plug-in per Visual Studio Code pensato per facilitare il tracciamento dei requisiti durante lo sviluppo di software. Lo scopo principale è quello di semplificare il lavoro di chi si occupa di analisi, progettazione e programmazione, migliorando la gestione dei requisiti e rendendo più facile verificare che siano stati rispettati.

Questo strumento aiuterà a ridurre gli errori e a risparmiare tempo, automatizzando processi che oggi richiedono molto lavoro manuale, come la verifica della copertura dei requisiti nel codice sorgente. Inoltre, il plug-in offrirà suggerimenti per migliorare i requisiti, evidenziando eventuali problemi come ambiguità o informazioni mancanti.

Grazie alla sua struttura modulare, sarà possibile aggiungere nuove funzionalità in futuro, rendendolo uno strumento versatile per adattarsi a diverse esigenze e tecnologie.

== Struttura del documento

Il contenuto del documento è organizzato nelle seguenti sezioni:

- *Analisi dei rischi:* identificazione e valutazione dei possibili problemi che possono insorgere durante lo sviluppo.

- *Modello di sviluppo:* descrizione delle metodologie e degli approcci adottati.

- *Pianificazione:* dettagli sulle fasi, le risorse e i tempi necessari per la realizzazione del progetto.

- *Preventivo:*  dettagli sui costi stimati per ogni fase del progetto, evidenziando risorse e allocazioni di budget.

- *Consuntivo di periodo:* dettagli sulle variazioni di pianificazione e costi rispetto alle stime iniziali, spiegando le cause degli scostamenti e le misure correttive adottate.

- *Caso di studio:* esempio pratico di utilizzo del plugin in un ambiente reale.

- *Mitigazione dei rischi:* illustra le strategie applicate per ridurre o eliminare l'impatto dei rischi identificati.

- *Conclusioni:* riflessione sui risultati attesi e sulla fattibilità del progetto.


== Glossario
Per evitare possibili ambiguità, è stato incluso un glossario per definire i termini tecnici rilevanti utilizzati nei documenti presentati. I termini sono evidenziati e spiegati nel file “Glossario”. 

== Maturità 

Il progetto si trova in una fase preliminare, con una struttura modulare definita e un piano di sviluppo pronto. Gli obiettivi iniziali sono stati identificati, e l'approccio adottato garantisce flessibilità e adattabilità per le evoluzioni future. 

== Riferimenti

=== Riferimenti normativi

- File Norme di Progetto
- File Analisi dei Requisiti
- Capitolato C8 : Requirement Tracker - Plug-in VS Code
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf

=== Riferimenti informativi

- T02 - Processi di ciclo di vita
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf
- T04 - Gestione di progetto 
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf
- T05 - Analisi dei requisiti
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf

#pagebreak()

= Analisi dei rischi

Questa sezione descrive i rischi potenziali associati al progetto e le relative misure di mitigazione. L'analisi dei rischi consente di identificare e mitigare i potenziali problemi in una fase iniziale del progetto.  Ogni rischio è valutato in termini di probabilità di accadimento e di impatto potenziale.
#v(0.25cm)
== Rischi tecnologici

Questi rischi derivano da problemi tecnici o limitazioni delle tecnologie utilizzate nel progetto, che possono influenzare negativamente il progresso o la qualità del prodotto finale.

- *Compatibilità Delle API di IA*

#figure(
  table(
  
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione* 
  ],
  [L'integrazione di modelli di IA tramite API REST può fallire a causa dell'incompatibilità tra le versioni di Ollama],
  [
    *Probabilità*
  ],
   
[Media], 
[
    *Impatto*
  ],
    [Alto],
  [
    *Precauzioni*
  ],
[Utilizzare versioni specifiche dei modelli di IA e monitorare gli aggiornamenti alle API di Ollama]

),
caption: [Rischi tecnologici:Disponibilità e compatibilità con le API di IA],
) 


- *Limitazioni dei modelli di intelligenza artificiale*
#figure(
table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [I modelli di IA potrebbero non essere sufficientemente performanti],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Medio],
  [
    *Precauzioni*
  ],
  [Condurre un'analisi su un modello ottimale in base alle infrastrutture disponobili]
),
caption: [Rischi tecnologici: Limitazioni dei modelli di intelligenza artificiale],
)

- *Compatibilità con Visual Studio Code*
#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Le modifiche alle versioni di Visual Studio Code potrebbero causare incompatibilità.],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Alto],
  [
    *Precauzioni*
  ],
  [Monitorare gli aggiornamenti di Visual Studio Ccode]
),
caption: [Rischi tecnologici: Compatibilità con Visual Studio Code],
)
#v(0.5cm)
== Rischi legati ai requisiti

Questi rischi emergono quando i requisiti non sono chiari, ben definiti o subiscono modifiche frequenti, compromettendo la coerenza e l'efficienza del processo di sviluppo. 

- *Ambiguità dei requisiti*
#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Alcuni requisiti mal definiti possono rendere difficile l'implementazione.],
  [
    *Probabilità*
  ],
  [Alta],
  [
    *Impatto*
  ],
  [Alto],
  [
    *Precauzioni*
  ],
  [Condurre molteplici revisioni collettive ed interviste con il proponente al fine di ottentere dei requisiti ottimali]
),
caption: [Rischi legati ai requisiti: Ambiguità dei requisiti],
)
#v(2cm)
- *Modifiche frequenti dei requisiti*

#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [La difficoltà nell'individuazione di requisiti plausibili può portare alla generazione di ambiguità ],
  [
    *Probabilità*
  ],
  [Alta],
  [
    *Impatto*
  ],
  [Medio],
  [
    *Precauzioni*
  ],
  [Condurre l'analisi più persone]
),
caption: [Rischi legati ai requisiti: Modifiche frequenti dei requisiti],
)
#v(0.5cm)
== Rischi organizzativi
I rischi organizzativi riguardano la gestione del progetto e il coordinamento del team. Possono includere problemi legati alla comunicazione interna, alla pianificazione o all'allocazione delle risorse.

- *Mancanza di coordinamento del team*

#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Le riunioni poco frequenti e la scarsa coordinazione possono influenzare la produttività.],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Alto],
  [
    *Precauzioni*
  ],
  [Programmare riunioni ad intervalli di tempo regolari]
),
caption: [Rischi organizzativi: Mancanza di coordinamento del team],
)

- *Dipendenza da risorse chiave*
#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Ritardi causati da un'errata rotazione dei ruoli],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Alto],
  [
    *Precauzioni*
  ],
  [Documentare i processi critici per permettere ad altri membri del gruppo di proseguire con le task]
),
caption: [Rischi organizzativi: Dipendenza da risorse chiave],
)

Un esempio di questo caso potrebbe essere l'assenza del verificatore nel momento in cui questa attività è necessaria, rendendo impossibile portare avanti il ​​progetto o costringendo diverse persone a dover assumere tale ruolo e informarsi su come svolgerlo al meglio, causando un ritardo.
#v(0.5cm)
== Rischi legati alle persone 
Questi rischi si riferiscono alle limitazioni o ai problemi legati al personale coinvolto, come disponibilità ridotta o mancanza di competenze specifiche.

- *Disponibilità del team*

#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Gli impegni personali dei membri del team potrebbero influire negativamente sulla loro capacità di partecipare al progetto.],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Alto],
  [
    *Precauzioni*
  ],
  [Pianificare un programma flessibile che consenta di adattarsi agli impegni dei membri del gruppo.]
),
caption: [Rischi legati alle persone: Disponibilità del team],
)
 #v(2cm)
- *Mancanza di competenze tecniche*

#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Alcuni membri del team potrebbero non possedere una conoscenza approfondita delle tecnologie chiave necessarie per il progetto.],
  [
    *Probabilità*
  ],
  [Alta],
  [
    *Impatto*
  ],
  [Medio],
  [
    *Precauzioni*
  ],
  [Ogni membro del team condividerà le proprie conoscenze con gli altri membri del gruppo nelle modalità stabilite nelle norme di progetto]
),
caption: [Rischi legati alle persone: Mancanza di competenze tecniche],
)
#v(0.5cm)
== Rischi finanziari
I rischi finanziari si manifestano quando i costi del progetto superano il budget previsto, compromettendo la sostenibilità economica del progetto.

- *Superamento dei costi di sviluppo*

#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Si potrebbe andare in contro ad un superamento del budget],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Medio],
  [
    *Precauzioni*
  ],
  [Rendicontazione oraria delle figure del progetto in modo da monitorare i costi]
),
caption: [Rischi finanziari: Superamento dei costi di sviluppo],
)

#v(0.5cm)
== Rischi per l'utente finale
Questi rischi riguardano l'esperienza dell'utente finale, come difficoltà nell'uso del prodotto o mancata soddisfazione delle aspettative.

- *Bassa usabilità del plug-in*

#figure(
  table(
  columns: 2,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  [
    *Descrizione*
  ],
  [Un'interfaccia poco intuitiva può influire sull'usabilità del prodotto.],
  [
    *Probabilità*
  ],
  [Media],
  [
    *Impatto*
  ],
  [Alto],
  [
    *Precauzioni*
  ],
  [Eseguire test di usabilità fin dalle prime fasi.]
),
caption: [Rischi per l'utente finale: Bassa usabilità del plug-in],
)

#pagebreak()
= Modello di sviluppo

La scelta di un approccio metodologico adeguato garantisce che le attività del progetto siano organizzate in modo strutturato e produttivo. Vengono stabiliti i principi e le tecniche operative per assicurare un avanzamento coerente con gli obiettivi.

Per il progetto è stato scelto il modello di sviluppo agile....

- Scelta del Modello Agile:
        + Ogni fase del progetto produce un incremento funzionale del prodotto.
        + Le iterazioni permettono di integrare continuamente il feedback.
        + La modularità del plug-in permette di sviluppare le componenti in modo indipendente, riducendo il rischio di blocchi.

- Strumenti e Metodologie:

        + Utilizzo di GitHub Projects per la gestione dei task e la pianificazione.
        + Strumenti di collaborazione come Discord e Notion per mantenere una comunicazione fluida tra i membri del team.

(da migliorare)

= Pianificazione

La pianificazione permette di suddividere il progetto in fasi operative chiare, definendo risorse, tempistiche e responsabilità. Questo approccio assicura il coordinamento tra i membri del team e il rispetto delle scadenze.

== Fasi del progetto

=== Fase 1 : Analisi iniziale e definizione dei requisiti

Periodo: Novembre 2024 - Dicembre 2024

Obiettivi:
- Definizione del way of working del gruppo
- Creare una visione condivisa del progetto con gli stakeholder
- Iniziare l'analisi dei requisiti
- Iniziare la stesura dei documenti RTB

=== Fase 2: Progettazione

Periodo: Dicembre 2024 - Gennaio 2025

Obiettivi:

- Creare un'architettura modulare per il plug-in.
- Progettare l'integrazione con Visual Studio Code. 
- Sviluppo dei diagrammi UML (casi d'uso, attività).
- Redazione dei documenti iniziali: Analisi dei Requisiti, Glossario e Norme di Progetto.
- Stesura del Piano di Progetto e Piano di Qualifica.

=== Fase 3: Sviluppo

Periodo: Gennaio 2025 - Marzo 2025

Obiettivi:
- Implementare le funzionalità principali del plug-in.
  Garantire la compatibilità con le tecnologie richieste (NodeJS, TypeScript). 
- Sviluppo incrementale dei moduli principali.
- Test funzionali per ogni iterazione.

=== Fase 4: Testing e Validazione

Periodo: Febbraio 2025 - Aprile 2025

Obiettivi:

- Garantire che il prodotto soddisfi i requisiti definiti.
- Migliorare l'usabilità del plug-in. 
- Esecuzione di test di integrazione e di usabilità.
- Correzione dei bug rilevati durante il testing.

=== Fase 5: Rilascio e Consegna

Periodo: Aprile 2025

Obiettivi:

- Rilasciare il prodotto finale al cliente.
- Documentare le funzionalità sviluppate. 
- Consegna della documentazione tecnica e del plug-in.
- Sessione di formazione per il cliente sull'utilizzo del plug-in.


Questa suddivisione in fasi garantisce un flusso di lavoro organizzato, con la possibilità di monitorare i progressi e intervenire tempestivamente in caso di imprevisti. 

#figure(
  table(
  columns: 3,
  table.cell(fill: rgb("#0096c7"))[*Milestone*],table.cell(fill: rgb("#0096c7"))[*Data*],table.cell(fill: rgb("#0096c7"))[*Obiettivi raggiunti*],
  [Fine analisi iniziale],[Dicembre 2024/Gennaio 2025],[Conclusione della definizione dei requisiti.],
  [Progettazione completata],[Marzo 2025],[],
  [Proof of Concept completato],[Marzo 2025],[],
  [Sviluppo completato],[Marzo 2025/Aprile 2025],[Implementazione di tutte le funzionalità.],
  [Testing e validazione completati],[Aprile 2025],[Prodotto pronto per il rilascio.],
  [Consegna finale],[Aprile 2025],[Consegna al cliente],

), 
caption: "Tabella riassuntiva delle fasi del progetto"
)

== Periodi

=== Periodo 1 : Organizzazione Iniziale

*Durata:* 28/10/2024 - 12/11/2024

Durante questo periodo, il team si è concentrato sulla definizione delle basi organizzative del progetto. Sono stati definiti elementi essenziali come il nome del gruppo, il logo, l'email e i canali di comunicazione (Discord, WhatsApp), oltre alla selezione di strumenti per il versionamento (GitHub) e la documentazione (Drive, GitHub, Typst). È stata inoltre avviata un'analisi preliminare dei capitolati e sono stati redatti i primi verbali interni ed esterni. Infine, è stata strutturata la repository su GitHub e pianificato un primo incontro con l'azienda per discutere dettagli tecnici e organizzativi

=== Periodo 2: Analisi dei Requisiti e Tecnologie

*Durata:* 12/11/2024 - 2/12/2024

In questa fase, il team ha approfondito lo studio delle tecnologie richieste, come NodeJS, TypeScript, Ollama e strumenti relativi a LLM open source, utilizzando Miro per favorire la collaborazione. È stata avviata la stesura delle Norme di Progetto e l'analisi iniziale dei requisiti, integrando il feedback ricevuto durante gli incontri con l'azienda. Inoltre, sono stati implementati GitHub Projects per la gestione dei compiti e per facilitare l'organizzazione interna del lavoro.

=== Periodo 3: Consolidamento dell'Analisi e Diagrammi

*Durata:* 2/12/2024 - 18/12/2024

Il team si è focalizzato sulla realizzazione di una prima versione di documenti chiave, come le Norme di Progetto, il Piano di Progetto e il Piano di Qualifica. Parallelamente, sono stati sviluppati diagrammi preliminari di attività e valutati rischi organizzativi e tecnologici. È stato anche introdotto un sistema per centralizzare la conoscenza attraverso strumenti come Notion, facilitando la sincronizzazione delle informazioni all'interno del gruppo.

=== Periodo 4: Presentazione dell'Analisi e Proposta Tecnica

*Durata:* 18/12/2024 - 15/01/2025

In questa fase, il team ha organizzato un incontro con l'azienda per presentare i requisiti definiti, discutere possibili rischi e raccogliere feedback. Sulla base delle raccomandazioni ricevute, sono stati effettuati aggiustamenti ai documenti RTB, come il Piano di Progetto e il Piano di Qualifica. Infine, sono stati perfezionati aspetti tecnologici attraverso prove e studi avanzati per garantire la fattibilità tecnica del progetto.

#pagebreak()
= Preventivo
== Descrizione del Preventivo

Il preventivo include una distribuzione dettagliata delle ore lavorative assegnate ai vari ruoli, una stima dei costi associati e le giustificazioni delle scelte effettuate. La ripartizione delle ore tiene conto delle competenze del team e delle richieste specifiche del progetto.

- *Totale Ore Lavorative:* 540
- *Costo Totale Stimato: * 10.980,00 €

== Ruoli e Distribuzione delle Ore

Responsabile

Il responsabile coordina il progetto, supervisiona le attività e garantisce il rispetto delle scadenze e dei requisiti.
- *Costo Unitario:*  30 €/ora

Amministratore

L'amministratore si occupa della gestione documentale e della comunicazione con gli stakeholder.
- *Costo Unitario:* 20 €/ora

Analista

L'analista analizza i requisiti e assicura che siano chiari, completi e implementabili.
- *Costo Unitario:* 25 €/ora

Progettista

Il progettista sviluppa l'architettura del sistema e traduce i requisiti in specifiche tecniche.

- *Costo Unitario:* 25 €/ora

Programmatore

Il programmatore realizza il software, assicurandosi che soddisfi i requisiti funzionali e qualitativi.
- *Costo Unitario:* 15 €/ora

Verificatore

Il verificatore testa il prodotto per garantire che rispetti i requisiti e sia privo di difetti.
- *Costo Unitario:* 15 €/ora
== Riepilogo prospetto economico e prospetto orario

Per poter analizzare meglio i costi, abbiamo suddiviso questa analisi nelle diverse parti del progetto, che sono RTB, PB e CA
=== Riepilogo prospetto economico e prospetto orario parziale - RTB
Questa sezione comprende i primi 4 periodi del progetto
#figure(
    table(
      columns: 9,
      fill: (x,y) => if x == 0 {blue.lighten(90%) },
      table.cell(fill: rgb("#0096c7"))[*Membro*] , table.cell(fill: rgb("#0096c7"))[*Re*] , table.cell(fill: rgb("#0096c7"))[*Am*], table.cell(fill: rgb("#0096c7"))[*An*], table.cell(fill: rgb("#0096c7"))[*Prj*], table.cell(fill: rgb("#0096c7"))[*Prg*], table.cell(fill: rgb("#0096c7"))[*Ver*], table.cell(fill: rgb("#0096c7"))[*Totale*], table.cell(fill: rgb("#0096c7"))[*Costo Totale (€)*],
      [*Maria Fuensanta*], ["14"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"],
      [*Marco*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"],
      [
        *Ion*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"
      ],
      [
        *Stefano*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"
      ],
      [
        *Malik*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"
      ],
      [
        *Luca*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"
      ]
    ),
    caption: "Preventivo per RTB",
)

#figure(
  table(
  columns: 9,
    [
    *Totale ore ruolo*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], [""
  ],
  [
    *Costo orario (€)*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], [""], [""
  ],
  [
    *Costo totale ruolo (€)*], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"], ["\*"
  ]
),
caption: "Calcoli totali per RTB",
)
=== Riepilogo prospetto economico e prospetto orario parziale - PB

=== Riepilogo prospetto economico e prospetto orario parziale - CA

#pagebreak()
= Consuntivo
Questa sezione confronta la pianificazione iniziale con i risultati effettivi ottenuti durante lo sviluppo. Si analizzano eventuali variazioni di tempi e costi, insieme alle cause che le hanno determinate e alle azioni correttive adottate.

== Resconto 
#pagebreak()
= Mitigazione dei Rischi 

Questa sezione dettaglia le strategie messe in atto per gestire i rischi individuati. Vengono evidenziate le azioni preventive adottate per ridurre l'impatto dei problemi durante lo sviluppo.
#v(0.25cm)
== Rischi tecnologici
- *Disponibilità e compatibilità con le API di IA* 
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      L'integrazione con modelli di IA potrebbe fallire a causa di limitazioni tecniche.
    ],
    [
      *Mitigazione*
    ],
    [
      Creare un livello di astrazione tra il sistema e le API esterne per ridurre la dipendenza e pianificare test periodici per garantire l'affidabilità.
    ]
  ),
  caption: [Rischio tecnologico: Disponibilità e compatibilità con le API di IA]
)

- *Limitazioni dei modelli di intelligenza artificiale*
#figure(
  table(
    columns: 2,
    fill: (x, y) => if x == 0 {blue.lighten(90%)},
    [
      *Descrizione*
    ],
    [
      I modelli di IA potrebbero non elaborare dati specifici o di bassa qualità.
    ],
    [
      *Mitigazione*
    ],
    [
      Addestrare i modelli con dati pertinenti, eseguire convalide manuali.
    ]
  ),
  caption: [Rischio tecnologico: Limitazioni dei modelli di intelligenza artificiale]
)

- *Compatibilità con Visual Studio Code*
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Le modifiche a Visual Studio Code potrebbero causare incompatibilità.
    ],
    [
      *Mitigazione*
    ],
    [
      Monitorare regolarmente gli aggiornamenti di Visual Studio Code e mantenere la documentazione aggiornata. Condurre test di regressione per ogni aggiornamento.
    ]
  ),
  caption: [Rischio tecnologico: Compatibilità con Visual Studio Code]
)

#v(0.5cm)
== Rischi legati ai requisiti

- *Ambiguità dei requisiti*
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Requisiti mal definiti possono complicare l'implementazione.
    ],
    [
      *Mitigazione*
    ],
    [
      Utilizzare tecniche di elicitation e convalidare regolarmente i requisiti con il cliente. Aggiornare la documentazione con revisioni iterative.
    ]
  ),
  caption: [Rischio legato ai requisiti: Ambiguità dei requisiti]
)

- *Modifiche frequenti ai requisiti* 
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Cambiamenti continui ai requisiti possono aumentare i costi e i tempi.
    ],
    [
      *Mitigazione*
    ],
    [
      Progettare un'architettura modulare e adottare strumenti di versionamento per tracciare e gestire i cambiamenti.
    ]
  ),
  caption: [Rischio legato ai requisiti: Modifiche frequenti ai requisiti]
)
#v(0.5cm)
== Rischi organizzativi
- *Mancanza di coordinamento del team* 
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      La scarsa comunicazione può rallentare il progetto.
    ],
    [
      *Mitigazione*
    ],
    [
      Utilizzare piattaforme di collaborazione (ad esempio Slack, Trello) per centralizzare le comunicazioni e organizzare riunioni settimanali per aggiornare il progresso del progetto.
    ]
  ),
  caption: [Rischio organizzativo: Mancanza di coordinamento del team]
)

- *Dipendenza da risorse chiave*
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      L'assenza di membri chiave del team può causare ritardi.
    ],
    [
      *Mitigazione*
    ],
    [
      Pianificare risorse di backup per i ruoli critici e documentare dettagliatamente i processi.
    ]
  ),
  caption: [Rischio organizzativo: Dipendenza da risorse chiave]
)


#v(0.5cm)
== Rischi legati al team

- *Disponibilità del team* 
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Impegni personali dei membri del team possono influire negativamente sul lavoro.
    ],
    [
      *Mitigazione*
    ],
    [
      Creare un calendario flessibile e assegnare prioritarie responsabilità critiche a risorse disponibili.
    ]
  ),
  caption: [Rischio legato al team: Disponibilità del team]
)

- *Mancanza di competenze tecniche*
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Alcuni membri del team potrebbero non possedere le competenze richieste.
    ],
    [
      *Mitigazione*
    ],
    [
      Fornire formazione mirata, materiali di apprendimento e sessioni di mentoring per migliorare le competenze del team.
    ]
  ),
  caption: [Rischio legato al team: Mancanza di competenze tecniche]
)
#v(0.5cm)
== Rischi finanziari
- *Superamento dei costi di sviluppo*
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Le funzionalità avanzate possono richiedere risorse aggiuntive.
    ],
    [
      *Mitigazione*
    ],
    [
      Monitorare regolarmente il budget e rivedere le priorità in caso di eccedenze. Concentrarsi sulle funzionalità essenziali per rispettare il budget.
    ]
  ),
  caption: [Rischio finanziario: Superamento dei costi di sviluppo]
)

#v(0.5cm)
== Rischi per l'utente finale
- *Bassa usabilità del plug-in*
#figure(
  table(
    columns: 2,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    [
      *Descrizione*
    ],
    [
      Interfaccia poco intuitiva potrebbe ridurre l'adozione.
    ],
    [
      *Mitigazione*
    ],
    [
      Condurre test di usabilità con utenti target e incorporare il feedback per migliorare il design dell'interfaccia e l'esperienza utente.
    ]
  ),
  caption: [Rischio per l'utente finale: Bassa usabilità del plug-in]
)
#pagebreak()
= Conclusioni
