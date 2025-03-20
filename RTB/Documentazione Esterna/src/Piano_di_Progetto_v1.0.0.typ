#import "../../../assets/template_v2.0.0.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Piano di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed","Stefano Baso","Luca Parise", "Maria Fuensanta Trigueros Hernandez", ),
  verifica: ("Ion Cainareanu" ,"Luca Parise","Marco Perazzolo","Maria Fuensanta Trigueros Hernandez",),
  approvazione: ("Luca Parise",),
  uso: "Esterno",
  version: "1.0.0",
  date: "23/11/2024",
  versionamento: (
    "1.0.0", "08/03/2024", "Malik Giafar Mohamed", "Versione finale", "Marco Perazzolo",
    "0.5.0", "08/03/2024", "Stefano Baso, Malik Giafar Mohamed, Luca Parise", "Miglioramento sezione rischi, inserimento tabelle preventivo e consuntivo, miglioramento sezione pianificazione", "Ion Cainareanu",
    "0.4.0", "15/02/2024", "Stefano Baso", "Miglioramento sezione periodi", "Ion Cainareanu, Luca Parise",
    "0.3.2", "06/02/2024", "Malik Giafar Mohamed", "Miglioramento sezione rischi", "Marco Perazzolo",
    "0.3.1", "12/1/2024", "Maria Fuensanta Trigueros Hernandez", "Continuazione e completamento di tutte le parti relative a RTB", "Marco Perazzolo",
    "0.2.0", "19/12/2024", "Maria Fuensanta Trigueros Hernandez", "Creazione della struttura e avvio della stesura del documento", "Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
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

Questo documento descrive la pianificazione dello sviluppo del plugin Requirement Tracker per Visual Studio Code. Ha lo scopo di fornire un quadro chiaro per comprendere come verrà realizzato il progetto, comprese le strategie, i rischi e le risorse necessarie per l'implementazione. 

Il documento sarà soggetto a modifiche e integrazioni durante il corso del progetto, in particolare durante le fasi di analisi e progettazione, e quindi non può essere considerato come definitivo.

== Scopo del prodotto
Il prodotto, un plug-in per Visual Studio Code chiamato "Requirement Tracker",
è progettato per automatizzare il tracciamento dei _requisiti_#super("G") nei progetti software complessi,
con un focus particolare sull'ambito embedded. L'obiettivo principale è migliorare la qualità
e la chiarezza dei requisiti, fornendo suggerimenti basati sull'analisi di un'intelligenza artificiale,
riducendo al contempo i tempi e gli errori legati alla verifica manuale dell'implementazione nel codice
sorgente. Il plug-in adotta un'architettura modulare che consente un'estensibilità semplice, rendendolo
facilmente adattabile a nuove funzionalità o esigenze future.
Inoltre, supporta gli sviluppatori avendo la capacità di utilizzare documenti tecnici come _knowledge_#super[G],
ad esempio datasheet e manuali, permette di garantire una corretta copertura dei requisiti.

== Struttura del documento

Il contenuto del documento è organizzato nelle seguenti sezioni:

- *Rischi Attesi e Mitigazione:* identificazione e valutazione dei possibili problemi che possono insorgere durante lo sviluppo, insieme alle strategie applicate per ridurre o eliminare il loro impatto.

- *Modello di sviluppo:* descrizione delle metodologie e degli approcci adottati.

- *Pianificazione:* dettagli sulle fasi, le risorse e i tempi necessari per la realizzazione del progetto.

- *Preventivo:*  dettagli sui costi stimati per ogni fase del progetto, evidenziando risorse e allocazioni di budget.

- *Consuntivo di periodo:* dettagli sulle variazioni di pianificazione e costi rispetto alle stime iniziali, spiegando le cause degli scostamenti e le misure correttive adottate.

== Glossario
I termini ambigui che necessitano di una spiegazione sono contrassegnati da una #super("G") come apice alla loro prima occorrenza nei documenti. Tutti i termini da glossario sono riportati in ordine alfabetico
nell'omonimo documento.

== Riferimenti
=== Riferimenti normativi
- Capitolato C8 : Requirement Tracker - Plug-in VS Code
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf
- Norme di Progetto
- Analisi dei Requisiti
=== Riferimenti informativi
- T02 - Processi di ciclo di vita
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf
- T04 - Gestione di progetto 
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf
- T05 - Analisi dei requisiti
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf


= Rischi attesi e mitigazione

Questa sezione identifica i potenziali _rischi_#super[G] di diversa natura e descrive le azioni pianificate per mitigarne l'impatto qualora si verificassero, oltre alle misure preventive adottate per evitarne l'insorgenza.
\
I rischi si dividono nel seguente modo: 
- *Rischi interni ed organizzativi*:
  sono tutti i possibili rischi che possono sorgere all'interno del gruppo di progetto e nella gestione del lavoro, influenzando la produttività, la comunicazione, il coordinamento e la distribuzione delle risorse. Questi rischi includono la scarsa definizione degli obiettivi, la mancanza di competenze, conflitti tra membri, difficoltà nella pianificazione e nei cambiamenti dei requisiti, con potenziali impatti negativi sulle tempistiche e sul successo del progetto.
#pagebreak()
- *Rischi tecnologici*: sono legati agli strumenti, alle tecnologie e alle infrastrutture utilizzate durante lo sviluppo di un progetto. Questi rischi possono derivare da incompatibilità software, malfunzionamenti hardware, limitazioni delle tecnologie adottate, aggiornamenti non previsti, vulnerabilità di sicurezza o difficoltà nell'integrazione con sistemi esterni. Se non gestiti correttamente, possono compromettere le prestazioni, l'affidabilità e l'efficacia del prodotto finale.
- *Rischi di capitolato*: 
  derivano dalla definizione, interpretazione e gestione dei requisiti del progetto. Questi rischi possono includere ambiguità o incompletezza delle specifiche, modifiche frequenti ai requisiti, disallineamento tra le aspettative del _proponente_#super[G] e l'implementazione, o difficoltà nella comprensione delle richieste. Una gestione inefficace di questi aspetti può portare a ritardi, aumento dei costi e necessità di revisioni significative nel progetto.
- *Rischi finanziari*:
  I rischi finanziari sono legati ai costi e alle risorse economiche necessarie per 
  lo sviluppo del progetto.
== Denominazione dei rischi
Ogni rischio presentato di seguito è distinto univocamente da un codice nel seguente modo:
#align(center)[#strong[R[Tipo]\_[Identificativo]]]
Dove:
- *R*: indica che si tratta di un rischio
- *Tipo*: specifica la categoria del rischio
  - *I*: rischio interno
  - *T*: rischio tecnologico
  - *C*: rischio capitolato
  - *F*: rischio finanziario
- *Identificativo*: numero progressivo che inizia da 001 per ogni tipologia di rischio


#show figure: set block(breakable: true)

== Rischi interni e organizzativi

#figure(
  table(
    columns: (0.5fr, 1fr, 1fr, 1fr),
    align: horizon,
    fill: (x,y) => if y == 0 {blue.lighten(90%) },
    
    [*Codice*],
    [*Rischio*], 
    [*Descrizione*], 
    [*Mitigazione*],
    [RI_001],
    [*Mancanza di coordinamento del gruppo di progetto*],
    [Una comunicazione inefficace tra i membri del gruppo può causare ritardi nelle attività e compromettere la consegna del _capitolato_#super[G].],
    [Ogni membro del gruppo deve mantenere un coinvolgimento attivo nel progetto, restando aggiornato su ogni fase dello sviluppo. Sarà responsabilità di ognuno sollecitare il contributo da parte di membri poco produttivi per garantire il rispetto degli impegni e delle scadenze.
    ],
    [RI_002],
    [*Abbandono di un membro del gruppo* ],
    [Un membro del gruppo potrebbe lasciare il progetto per motivi personali o professionali, compromettendo lo svolgimento delle attività.],
    [Il gruppo dovrà redistribuire il carico di lavoro tra i membri rimanenti. Inoltre, in collaborazione con il proponente, sarà necessario ridefinire la suddivisione delle attività per non superare il monte ore stabilito e quindi ridefinire le aspettative stabilite in precedenza. ],
    [RI_003],
    [*Disponibilità dei membri del gruppo di progetto*],
    [A causa di impegni personali o lavorativi, alcuni membri del gruppo potrebbero essere indisponibili in determinati periodi, causando un rallentamento nel raggiungimento degli obiettivi prefissati.],
    [Il gruppo si impegnerà a suddividere le attività in modo strategico, assegnando le _task_#super[G] in base alla loro priorità e alla disponibilità dei membri, così da minimizzare eventuali ritardi.],
    [RI_004],
    [*Contrasti interni al gruppo di progetto*],
    [Durante lo svolgimento del progetto potrebbero emergere conflitti tra i membri del gruppo, causando rallentamenti nel completamento delle attività.],
    [I membri del gruppo cercheranno di risolvere i contrasti attraverso una discussione collettiva. Se ciò non fosse sufficiente, il responsabile del progetto interverrà per mediare il conflitto, eventualmente ricorrendo a sondaggi per facilitare la decisione. Qualora il problema persistesse, si consulterà il committente per trovare una soluzione definitiva.],
  ),
  caption: [Rischi interni e organizzativi]
)


== Rischi tecnologici

#figure(
  table(
    columns: (0.5fr, 1fr, 1fr, 1fr),
    align: horizon,
    fill: (x,y) => if y == 0 {blue.lighten(90%) },
    
    [*Codice*], 
    [*Rischio*], 
    [*Descrizione*], 
    [*Mitigazione*],
    [RT_001],
    [*Prestazioni dei modelli LLM*],
    [L'utilizzo di _LLM_#super[G] potrebbe comportare tempi di risposta elevati, specialmente su macchine con risorse hardware limitate, compromettendo l'esperienza d'uso.],
    [Consentire all'utente di selezionare il modello LLM più adatto alle capacità del proprio sistema, offrendo opzioni più leggere per dispositivi meno performanti.\ \ Avvisare l'utente in caso di rischio di errori di connessione o rallentamenti dovuti a limitazioni hardware.],
    [RT_002],
    [*Obsolescenza tecnologica*],
    [L'uso di tecnologie non aggiornate o poco supportate potrebbe rendere difficile la manutenzione del progetto e causare ritardi.],
    [Selezionare tecnologie con ampio supporto da parte della community, monitorare regolarmente gli aggiornamenti di strumenti e tecnologie utilizzate.],  
    [RT_003],
    [*Mancanza di conoscenze*],
    [Alcuni membri del gruppo potrebbero non possedere le competenze necessarie per svolgere il progetto in modo efficace.],
    [Sarà responsabilità di ogni membro del gruppo con più conoscenze formare e supportare i colleghi meno esperti.],
  ),
  caption: [Rischi tecnologici]
)


== Rischi riguardanti il capitolato

#figure(
  table(
    columns: (0.5fr, 1fr, 1fr, 1fr),
    align: horizon,
    fill: (x,y) => if y == 0 {blue.lighten(90%) },
    
    [*Codice*], 
    [*Rischio*], 
    [*Descrizione*], 
    [*Mitigazione*],
    [RC_001],
    [*Ambiguità dei requisiti*],
    [Il capitolato potrebbe contenere indicazioni poco chiare o ambigue, rendendo difficile la comprensione delle reali esigenze del proponente],
    [Organizzare incontri periodici con proponente per chiarire eventuali dubbi e allineare le aspettative.],
    [RC_002],
    [*Modifiche al capitolato in corso d'opera*],
    [Durante lo sviluppo, i requisiti inizialmente concordati potrebbero subire modifiche a causa di fattori interni (nuove esigenze del gruppo) o esterni (richieste del proponente). Questo può portare a ritardi, aumento dei costi o necessità di modificare ulteriormente il codice sorgente del prodotto finale.],
    [Sarà necessario aggiornare il preventivo e rivedere gli accordi precedentemente stabiliti per garantire il rispetto delle scadenze e l’ottimizzazione delle risorse disponibili.],
    [RC_003],
    [*Disallineamento tra capitolato e vincoli tecnici*],
    [Il capitolato potrebbe richiedere funzionalità difficili da implementare a causa di limitazioni tecniche o di strumenti disponibili.],
    [Effettuare un'analisi di fattibilità prima di iniziare lo sviluppo e proporre eventuali alternative al proponente.],
    [RC_004],
    [*Divergenze tra le aspettative del proponente e l'interpretazione del gruppo*],
    [Il gruppo di progetto potrebbe interpretare diversamente alcune sezioni del capitolato rispetto alle intenzioni originali del proponente.],
    [Mantenere una comunicazione costante con il proponente per condividere e validare le scelte progettuali prima della loro implementazione.],
  ),
  caption: [Rischi riguardanti il capitolato]
)


== Rischi finanziari

#figure(
  table(
  columns: (0.5fr, 1fr, 1fr, 1fr),
  align: horizon,
  fill: (x,y) => if y == 0 {blue.lighten(90%) },
  
  [*Codice*], 
  [*Rischio*], 
  [*Descrizione*], 
  [*Mitigazione*],
  [RF_001],
  [*Superamento budget*],
  [Rallentameni dovuti a cause interne o esterne potrebbero portare al superamento del monte ore preventivato],
  [Monitorare correttamente e costantemente il lavoro dei membri del gruppo attraverso strumenti di rendicontazione oraria],
  ),
  caption: [Rischi finanziari]
  )

 
== Tabella riassuntiva
Nella seguente tabella vengono descritti: 
- L'*occorrenza*: rappresenta la probabilità che il rischio si verifichi. Un rischio con alta occorrenza è molto probabile e deve essere monitorato con attenzione, mentre un rischio con bassa occorrenza è meno preoccupante, ma comunque da considerare.
- L'*impatto*: misura la gravità delle conseguenze che il rischio potrebbe avere sul progetto. Un rischio con alto impatto può compromettere seriamente il raggiungimento degli obiettivi, mentre un impatto basso causa problemi gestibili senza significativi rallentamenti o costi aggiuntivi.
#pagebreak()
- L'*_efficacia_*#super[G]: indica quanto le azioni di mitigazione adottate siano in grado di ridurre l'impatto del rischio. Un valore alto significa che le contromisure sono efficaci e il rischio è ben gestito, mentre un valore basso indica che il rischio rimane problematico nonostante gli sforzi.

I possibili valori delle celle sono "Basso", "Medio" o "Alto".

#figure(
  table(
    columns: (0.5fr, 2fr, 1fr, 1fr, 1fr),
    align: horizon,
    fill: (x,y) => if y == 0 {blue.lighten(90%) },
     
    [*Codice rischio*],
    [*Titolo rischio*],
    [*occorrenza*],
    [*Impatto*],
    [*Efficacia*],
    [RI_001], [*Mancanza di coordinamento del gruppo di progetto*], [Medio], [Alto], [Alto],
    [RI_003], [*Disponibilità dei membri del gruppo di progetto*], [Alto], [Alto], [Medio],
    [RI_004], [*Contrasti interni al gruppo di progetto*], [Medio], [Alto], [Alto],
    [RT_001], [*Prestazioni dei modelli LLM*], [Basso], [Alto], [Alto],
    [RT_002], [*Obsolescenza tecnologica*], [Medio], [Medio], [Medio],
    [RT_003], [*Mancanza di conoscenze*], [Medio], [Medio], [Alto],
    [RC_001], [*Ambiguità dei requisiti*], [Basso], [Alto], [Medio],
    [RC_002], [*Modifiche al capitolato in corso d'opera*], [Basso], [Alto], [Alto],
    [RC_003], [*Disallineamento tra capitolato e vincoli tecnici*], [Basso], [Medio], [Alto],
    [RC_004], [*Divergenze tra le aspettative del committente e l'interpretazione del gruppo*], [Basso], [Alto], [Alto],
    [RF_001], [*Superamento budget*], [Medio], [Alto], [Medio],
  ),
  caption: [Tabella riassuntiva dei rischi],
)
= Modello di sviluppo

In questo capitolo viene illustrato il modello di sviluppo scelto per il progetto, ovvero l'approccio _Agile_#super[G]. Vengono descritti i concetti chiave, come le _retrospettive_#super[G], che permettono di riflettere e migliorare continuamente il processo, e il _backlog_#super[G], che rappresenta la lista delle attività da completare, prioritarizzate in base alle esigenze del gruppo.



== Scelta del Modello

Per questo progetto è stato adottato il modello Agile, che consente lo sviluppo del prodotto attraverso la suddivisione del periodo temporale in _sprint_#super[G]. Questa scelta permette di migliorare la gestione dei rischi e di adattare lo sviluppo in base ai feedback ricevuti.

- Ogni sprint produce valore verificabile.

- Sprint planning: ogni sprint viene pianificato in anticipo, definendo gli obiettivi e i task principali durante la riunione interna di inizio sprint.

=== Gestione del backlog

Un aspetto importante del modello agile è il backlog. Esso costituisce un elenco di attività, requisiti e funzionalità da sviluppare all'interno del progetto. Rappresenta la lista di cose da fare ed è costantemente aggiornato e riorganizzato in base alle priorità del progetto.

Il backlog viene gestito attraverso _GitHub Projects_#super[G], utilizzando le _issue_#super[G] per tracciare le attività da svolgere. Ogni elemento del backlog può includere nuove aggiunte, bug da risolvere o miglioramenti dalle verifiche fatte. Viene quindi creata una issue con descrizione chiara e presa in carico da un membro del gruppo. Durante lo sprint planning, le issues più prioritarie vengono decise e suddivise, vengono inoltre chiariti punti ambigui e programmate le attività di quel periodo.

=== Retrospettiva

Al termine di ogni sprint, viene pianificata una retrospettiva per analizzare l'andamento del lavoro svolto, identificare possibili miglioramenti e fare il punto della situazione di cosa manca. Durante questa fase, ogni membro del gruppo presenta quanto fatto, quali difficoltà sono emerse e quali aspetti richiedono un'ulteriore approvazione.

La retrospettiva viene svolta nel seguente modo: si analizzano gli obiettivi dello sprint appena concluso, si valutano i risultati ottenuti e si raccolgono feedback. Gli eventuali problemi riscontrati o ritardi nello sviluppo vengono discussi in modo collaborativo e vengono proposte soluzioni da applicare nei prossimi sprint.

= Pianificazione

La pianificazione permette di suddividere il progetto in fasi operative chiare, definendone risorse e tempistiche. Questo approccio assicura il coordinamento tra i membri del gruppo e il rispetto delle scadenze.
#pagebreak()
Per la pianificazione abbiamo considerato il periodo dal 16/11/2024 al 16/04/2025. Escludendo il periodo dal 17/01/2025 al 7/02/2025, nel quale ci sarà la sessione d'esami, il tempo restante per il progetto è stato suddiviso in 8 sprint bisettimanali e 2 sprint della durata di una settimana singola.

L'organizazione degli sprint sarà la seguente:
== Sprint 1 - Acquisizione di conoscenze

*Periodo*: 16/11/2024 - 30/11/2024

In questo sprint iniziale, data la scarsa conoscenza delle tecnologie richieste, sarà predisposto un periodo di studio di esse con lo scopo di formazione del gruppo.

=== Obiettivo

L'obiettivo è l'acquisizione delle conoscenze utili per lo svolgimento _milestone_#super[G] RTB usando _Notion_#super[G] per formare tutti i membri del progetto, in modo da raggiungere un livello di conoscenza uniforme.

=== Attività

Il completamento di questo sprint prevede la preparazione della repository per la documentazione della milestone RTB e l'acquisizione della conoscienza da parte del gruppo delle tecnologie da usare. Quindi verranno fatti dei test in locale di varie tecnologie concordate con il proponente e di vari LLM, testandone i parametri, risultati e chiamate API per prendere familiarità con queste tecnologie.

== Sprint 2 - Analisi e documentazione

*Periodo*: 01/12/2024 - 15/12/2024

In questo sprint ci si focalizzerà sulla documentazione. Poiché il gruppo avrà ormai acquisito familiarità con il processo, l'attenzione sarà rivolta alla creazione di un template comune per tutti i documenti e alla stesura di una loro versione iniziale. 

=== Obiettivo

L'obiettivo di questa fase è appunto l'inizio dello sviluppo dei documenti riguardanti la milestone RTB, definendone inizialmente la struttura e le sezioni principali. I documenti sono:

- *Analisi dei Requisiti*: compilato dagli Analisti, contiene i casi d'uso analizzati e i requisiti del prodotto

- *Piano di Progetto*: compilato dal Responsabile e dagli Amministratori, contiene la divisione delle risorse, il piano di preventivo e consuntivo e la pianificazione dei periodi

- *Piano di Qualifica*: compilato dagli Amministratori e Progettisti, contiene i modelli, indici e metriche scelte per raggiungere gli obiettivi di economicità

- *Norme di Progetto*: compilato dagli Amministratori, contiene le principali decisioni riguardanti il way of working

- *Glossario*: il suo contenuto viene aggiornato in parallelo con il resto dei documenti, contiene una definizione chiara di tutti i termini tecnici ambigui presenti nei documenti

=== Attività

L'attività assegnata al secondo sprint consiste principalmente nella redazione della documentazione. Per ciascun documento viene definita una struttura iniziale, suddividendo il lavoro e assegnando le sezioni rimanenti ai rispettivi ruoli di competenza. Trattandosi di una prima stesura, i documenti verranno migliorati e integrati nei successivi sprint.


== Sprint 3 - Knowledge Baseline

*Periodo*: 16/12/2024 - 03/01/2024

Questo sprint è dedicato alla continuazione dello sprint precedente, con particolare attenzione alla stesura dell'analisi dei requisiti a seguito della riunione con il proponente e delle decisioni prese durante alcuni incontri svolti durante questo periodo. Vengono descritte in ottica più approfondita anche le metriche riguardanti i test e il codice.

=== Obiettivo

L'obiettivo di questo sprint, oltre alla continuazione della documentazione, è quindi lo svolgimento di un'analisi delle tecnologie necessarie
per lo svolgimento dell'analisi dei requisiti.
=== Attività

Le attività principali sono:

- Redazione delle metriche del PdQ, includendo le formule dei vari indici, le soglie limite e le relative tabelle
- Applicazione del nuovo template alla documentazione
- Avanzamento analisi dei requisiti
#pagebreak()
== Sprint 4 - Baseline PoC

*Periodo*: 04/01/2025 - 17/01/2025

Questo sprint prevede la progettazione e lo sviluppo di una bozza del PoC, il quale verrà sviluppato parallelamente nel frontend e nel backend. Siccome si tratterà di una bozza, l'integrazione tra frontend e backend avverrà in un secondo momento.



=== Obiettivo

L'obiettivo è avere una grafica del plug-in funzionante integrata con le chiamate di Ollama in grado di soddisfare le prime richieste di test su dei requisiti d'esempio.

=== Attività

Oltre alla continuazione della documentazione, le attività da svolgere per il completamento di questo sprint sono:

- Sviluppo interfaccia grafica
- Sviluppo chiamate API ai modelli LLM
- Integrazione codice in preparazione alla fase di test

== Sprint 5 - Baseline Documentazione

*Periodo*: 07/02/2025 - 21/02/2025

In questo sprint viene portata avanti la documentazione, cercando di arrivare al completamento dell'AdR in
vista dei colloqui con il Professor Cardin e per la presentazione al proponente.

=== Obiettivo

L'obiettivo è il completamento dell'AdR, con particolare attenzione alla definizione dei casi d'uso e dei requisiti.
Inoltre, sarà necessario  ultimare la documentazione in vista della revisione della milestone RTB.

=== Attività
Le attività che verranno svolte durante questo sprint consistono principalmente nell'avanzamento della stesura della documentazione, con particolare attenzione all'AdR.

== Sprint 6 - Verifica finale del PoC e documentazione

*Periodo*: 22/02/2025 - 8/03/2025

Questo sprint è focalizzato sulla validazione del PoC e della documentazione. Comprende la verifica della conformità del sistema ai requisiti, la correzione di eventuali anomalie e la preparazione della versione 1.0.0 della documentazione. 

=== Obiettivo

L'obiettivo è assicurare che il prodotto e la documentazione siano pronti per il rilascio. Verrà richiesto un incontro con l'azienda per mostrare il PoC completo e ottenere feedback sul miglioramento.

=== Attività
Le attività da svolgere sono:

- Ultimare il PoC, correggendo eventuali bug e migliorando l'usabilità
- Verificare l'ultima versione di tutta la documentazione integrata delle novità dallo sprint precedente
- Fissare un incontro con l'azienda
== Sprint 7 - Stesura Documentazione PB

*Periodo*: 09/03/2025 - 20/03/2025

Questo sprint è dedicato alla stesura della documentazione per la Product Baseline.

=== Obiettivo

L'obiettivo è principalmente la stesura iniziale della documentazione PB, nello specifico:
- *Manuale Utente*: fornire una guida dettagliata per l'utilizzo del plug-in
- *Specifica Tecnica*: descrivere le funzionalità e l'architettura del sistema

Si prevede di arrivare alla stesura delle sezioni più generiche, in quanto comunque verrà riutilizzato il PoC per il completamento dell'_MVP_#super[G].
=== Attività

La principale attività di questo sprint sono:
- L'analisi dell'architettura PoC per il suo adattamento all'MVP e avvio della stesura della specifica tecnica e del manuale utente.
- L'avanzamento nella documentazione RTB al fine della pubblicazione della versione 2.0.0 
#pagebreak()

== Sprint 8 - Codifica MVP e Testing

*Periodo*: 21/03/2025 - 02/04/2025

Questo sprint si concentra sulla codifica e testing del Minimum Viable Product (MVP).

=== Obiettivo

L'obiettivo è arrivare ad una versione stabile dell'MVP partendo dal PoC e assicurarsi che tutte le funzionalità essenziali siano funzionanti.

=== Attività

- Implementazione di alcune delle funzionalità mancanti del prodotto finale
  - Riuso del PoC 
- Esecuzione di alcuni dei test definiti nel piano di progetto
  - Eventuale correzione dei bug riscontrati durante i test
- Stesura graduale del manuale utente e delle specifiche tecniche
== Sprint 9 - Baseline Documentazione

*Periodo*: 02/04/2025 - 08/04/2025

Questo sprint è dedicato al completamento della documentazione per la Product Baseline.

=== Obiettivo

L'obiettivo è portare tutta la documentazione necessaria per la milestone PB alla versione subito precedente a quella finale, in modo che possa essere validata definitivamente nello sprint successivo.

=== Attività

La principale attività di questo sprint sarà la  preparazione della documentazione per la consegna.

== Sprint 10 - Validazione finale e rilascio

*Periodo*: 09/04/2025 - 16/04/2025

Questo sprint è dedicato alla validazione finale del sistema e della documentazione, nonché alla preparazione per la consegna finale.

=== Obiettivo

L'obiettivo è validare il sistema e la documentazione, assicurandosi che siano pronti per il rilascio. Inoltre, sarà necessario preparare la presentazione finale.

=== Attività

- Validazione finale del sistema
- Correzione di eventuali bug residui
- Revisione finale della documentazione
- Preparazione della presentazione finale

= Preventivo
== Descrizione del Preventivo

Il preventivo include una distribuzione dettagliata delle ore lavorative assegnate ai vari ruoli, una stima dei costi associati e le giustificazioni delle scelte effettuate.

- *Totale Ore Lavorative:* 540
- *Costo Totale Stimato:* 10.980,00 €

== Ruoli e Distribuzione delle Ore
La seguente tabella riporta il costo orario per ciascun ruolo e la distribuzione delle ore lavorative previste per ogni membro del gruppo.
#figure(
table(
  columns: 3,
  fill: (x,y) => if y == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Costo Unitario (€)*], [*Ore totali per ruolo*],
  [*Responsabile*], [30 €/ora],[52],
  [*Amministratore*], [20 €/ora],[60], 
  [*Analista*], [25 €/ora], [113], 
  [*Progettista*], [25 €/ora],[108], 
  [*Programmatore*], [15 €/ora], [135],
  [*Verificatore*], [15 €/ora], [72]
  ),
  caption: "Ruoli e Distribuzione delle Ore"
)

Come gruppo abbiamo deciso di mirare al completamento delle ore designate per il progetto senza dividerle equamente, al fine di garantire una distribuzione del lavoro e un'efficienza ottimale relative alle disponibilità temporali di ciascun membro del gruppo. Questa decisione è dovuta al fatto di essere un gruppo ad intensità media, e anche per venire incontro alle esigenze personali e lavorative di ciascun membro del gruppo.

== Prospetti Orario ed Economici
Nella seguente sezione verrà preventivato per intero il prospetto orario ed economico di ogni sprint pianificato.
=== Sprint 1
*Periodo:* 16/11/2024 - 30/11/2024
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [6], [180],
    [*Amministratore*], [8], [160],
    [*Analista*], [15], [375],
    [*Progettista*], [17], [425],
    [*Programmatore*], [-], [-],
    [*Verificatore*], [2], [30],
    [*Totale*], [*48*], [*1170*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 1"
)
=== Sprint 2
*Periodo:* 01/12/2024 - 15/12/2024
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [6], [180],
    [*Amministratore*], [7], [140],
    [*Analista*], [15], [375],
    [*Progettista*], [17], [425],
    [*Programmatore*], [-], [-],
    [*Verificatore*], [2], [30],
    [*Totale*], [*47*], [*1150*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 2"
)
=== Sprint 3
*Periodo:* 16/12/2024 - 03/01/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [10], [300],
    [*Amministratore*], [10], [200],
    [*Analista*], [14], [350],
    [*Progettista*], [12], [300],
    [*Programmatore*], [-], [-],
    [*Verificatore*], [2], [30],
    [*Totale*], [*48*], [*1180*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 3"
)
=== Sprint 4
*Periodo:* 04/01/2025 - 17/01/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [5], [150],
    [*Amministratore*], [5], [100],
    [*Analista*], [12], [300],
    [*Progettista*], [10], [250],
    [*Programmatore*], [40], [600],
    [*Verificatore*], [14], [210],
    [*Totale*], [*86*], [*1610*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 4"
)
=== Sprint 5
*Periodo:* 07/02/2025 - 20/02/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [2], [60],
    [*Amministratore*], [5], [100],
    [*Analista*], [5], [125],
    [*Progettista*], [5], [125],
    [*Programmatore*], [30], [450],
    [*Verificatore*], [8], [120],
    [*Totale*], [*55*], [*980*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 5"
)
=== Sprint 6
*Periodo:* 21/02/2025 - 08/03/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [8], [240],
    [*Amministratore*], [8], [160],
    [*Analista*], [20], [500],
    [*Progettista*], [16], [400],
    [*Programmatore*], [26], [390],
    [*Verificatore*], [23], [345],
    [*Totale*], [*101*], [*2035*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 6"
)
=== Sprint 7
*Periodo:* 09/03/2025 - 20/03/2025 
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [5], [150],
    [*Amministratore*], [5], [100],
    [*Analista*], [8], [200],
    [*Progettista*], [8], [200],
    [*Programmatore*], [10], [150],
    [*Verificatore*], [4], [60],
    [*Totale*], [*40*], [*860*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 7"
)
=== Sprint 8
*Periodo:* 21/03/2025 - 02/04/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [4], [120],
    [*Amministratore*], [3], [60],
    [*Analista*], [5], [125],
    [*Progettista*], [5], [125],
    [*Programmatore*], [17], [255],
    [*Verificatore*], [5], [75],
    [*Totale*], [*39*], [*760*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 8"
)
=== Sprint 9
*Periodo:* 03/04/2025 - 08/04/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [4], [120],
    [*Amministratore*], [3], [60],
    [*Analista*], [4], [100],
    [*Progettista*], [4], [100],
    [*Programmatore*], [15], [225],
    [*Verificatore*], [10], [150],
    [*Totale*], [*40*], [*755*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 9"
)
=== Sprint 10
*Periodo:* 9/04/2025 - 16/04/2025
==== Prospetto economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [5], [150],
    [*Amministratore*], [3], [60],
    [*Analista*], [-], [-],
    [*Progettista*], [-], [-],
    [*Programmatore*], [4], [60],
    [*Verificatore*], [15], [225],
    [*Totale*], [*27*], [*495*]
  ),
  caption: "Prospetto economico preventivato per lo Sprint 10"
)
 

== Riepilogo prospetto economico e prospetto orario

#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [55], [1650],
    [*Amministratore*], [57], [1140],
    [*Analista*], [98], [2450],
    [*Progettista*], [94], [2350],
    [*Programmatore*], [142], [2130],
    [*Verificatore*], [85], [1275],
    [*Totale*], [*531*], [*10995*]
  ),
  caption: "Riepilogo prospetto economico preventivato"
)

= Consuntivo di periodo
Questa sezione confronta la pianificazione iniziale di ogni sprint con i risultati ottenuti a monte della retrospettiva. Si analizzano eventuali variazioni nei tempi e nei costi, identificandone le cause e le azioni correttive adottate.
In ogni sprint verrà elencato il periodo di svolgimento, gli obiettivi e le attività svolte.

== RTB

=== Sprint 1 - Acquisizione di conoscenze

*Periodo*: 16/11/2024 - 30/11/2024

==== Rendicontazione oraria
#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [2], [-], [1], [3], [-], [1],
    [*Ion*], [2], [1], [2], [1], [-], [2],
    [*Maria Fuensanta*], [-], [2], [-], [-], [-], [2],
    [*Stefano*], [1], [2], [-], [5], [-], [2],
    [*Marco*], [1], [1], [1], [3], [-], [1],
    [*Luca*], [-], [2], [1], [1], [-], [2],
  ),
  caption: "Rendicontazione Sprint 1",
)
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [6], [180],
  [*Amministratore*], [8], [160],
  [*Analista*], [5], [125],
  [*Progettista*], [13], [325],
  [*Programmatore*], [-], [-],
  [*Verificatore*], [10], [150],
  [*Totale*], [*42*], [*940*]
  ),
  caption: "Prospetto economico Sprint 1"
)

==== Rischi Occorsi
- *RI_003*: La disponibilità dei membri del gruppo di progetto è stata limitata a causa di impegni personali, ma abbiamo mitigato il rischio utilizzando task asincrone per migliorare il lavoro.

=== Sprint 2 - Analisi e documentazione

*Periodo*: 01/12/2024 - 20/12/2024

==== Rendicontazione oraria
#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [-], [2], [-], [4], [-], [2],
    [*Ion*], [3], [-], [2], [3], [-], [-],
    [*Maria Fuensanta*], [2], [-], [2], [-], [-], [1],
    [*Stefano*], [-], [1], [-], [4], [-], [2],
    [*Marco*], [1], [1], [-], [1], [-], [-],
    [*Luca*], [-], [2], [2], [1], [-], [2],
  ),
  caption: "Rendicontazione Sprint 2",
)
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [6], [180],
  [*Amministratore*], [6], [120],
  [*Analista*], [6], [150],
  [*Progettista*], [13], [325],
  [*Programmatore*], [-], [-],
  [*Verificatore*], [2], [105],
  [*Totale*], [*38*], [*880*]
  ),
  caption: "Prospetto economico Sprint 2"
)

==== Rischi Occorsi
- *RI_001*: La mancanza di coordinamento del gruppo ha causato ritardi nelle attività.
- *RI_003*: La disponibilità limitata dei membri del gruppo ha prolungato lo sprint.

=== Sprint 3 - Knowledge Baseline
*Periodo*: 21/12/2024 - 03/01/2024

==== Rendicontazione oraria
#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [2], [3], [-], [2], [-], [1],
    [*Ion*], [2], [1], [3], [-], [-], [2],
    [*Maria Fuensanta*], [-], [1], [2], [-], [-], [2],
    [*Stefano*], [1], [2], [-], [-], [-], [2],
    [*Marco*], [2], [-], [2], [2], [-], [-],
    [*Luca*], [-], [2], [3], [1], [-], [-],
  ),
  caption: "Rendicontazione Sprint 3",
)
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [7], [210],
  [*Amministratore*], [9], [180],
  [*Analista*], [10], [250],
  [*Progettista*], [5], [125],
  [*Programmatore*], [-], [-],
  [*Verificatore*], [7], [105],
  [*Totale*], [*38*], [*870*]
  ),
  caption: "Prospetto economico Sprint 3"
)

==== Rischi Occorsi
- *RC_001*: La mancanza di alcuni colloqui con il proponente ha causato un rallentamento nella stesura dell'AdR.

=== Sprint 4 - Baseline PoC
*Periodo*: 04/01/2025 - 17/01/2025

==== Rendicontazione oraria
#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [1], [3.5], [2], [2], [-], [2],
    [*Ion*], [1], [-], [2], [2], [15], [1],
    [*Maria Fuensanta*], [-], [-], [2], [-], [-], [2],
    [*Stefano*], [1], [1], [2], [3], [-], [2],
    [*Marco*], [1], [-], [3], [2], [7], [3],
    [*Luca*], [-], [1], [1], [1], [7], [2],
  ),
  caption: "Rendicontazione Sprint 4",
)
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [4], [120],
  [*Amministratore*], [5.5], [110],
  [*Analista*], [12], [300],
  [*Progettista*], [10], [250],
  [*Programmatore*], [29], [435],
  [*Verificatore*], [12], [180],
  [*Totale*], [*72.5*], [*1395*]
  ),
  caption: "Prospetto economico Sprint 4"
)

==== Rischi Occorsi
- *RC_001*: L'AdR non è stata ultimata a causa di ambiguità nei requisiti. Mentre per il PoC erano sorti dubbi riguardanti il formato CSV per l'importazione dei dati e l'interfaccia grafica.
=== Sprint 5 - Baseline Documentazione
*Periodo*: 07/02/2025 - 20/02/2025
==== Rendicontazione oraria
#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [2], [1], [2], [1], [5], [2],
    [*Ion*], [1], [1], [-], [1], [15], [2],
    [*Maria Fuensanta*], [-], [-], [-], [-], [-], [-],
    [*Stefano*], [1], [1], [2], [2], [2], [2],
    [*Marco*], [-], [-], [-], [-], [-], [2],
    [*Luca*], [-], [1], [3], [1], [3], [1],
  ),
  caption: "Rendicontazione Sprint 5",
)
#pagebreak()
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [4], [120],
  [*Amministratore*], [4], [80],
  [*Analista*], [7], [175],
  [*Progettista*], [5], [125],
  [*Programmatore*], [25], [375],
  [*Verificatore*], [9], [135],
  [*Totale*], [*54*], [*1010*]
  ),
  caption: "Prospetto economico Sprint 5"
)
==== Rischi Occorsi
- *RI_001*: la distribuzione sbilanciata del lavoro tra i membri del gruppo ha causato difficoltà nell'organizzazione e ritardi nella documentazione. Il tentativo di mitigazione non è servito a risolvere il problema.
- *RT_002*: un aggiornamento improvviso di _Typst_#super[G] ha causato problemi di compilazione all'interno della repository. Come mitigazione abbiamo deciso di utilizzare una sua versione stabile per evitare simili problemi futuri. 

=== Sprint 6 - Verifica finale del prodotto e documentazione
*Periodo*: 21/02/2025 - 8/03/2025
==== Rendicontazione oraria
#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [2], [1], [3], [2], [5], [4],
    [*Ion*], [1], [1], [3], [3], [10], [4],
    [*Maria Fuensanta*], [-], [2], [3], [3], [-], [2],
    [*Stefano*], [3], [2], [2], [2], [-], [3],
    [*Marco*], [1], [1], [2], [2], [-], [3],
    [*Luca*], [1], [1], [2], [2], [-], [3],
  ),
  caption: "Rendicontazione Sprint 6",
)
#pagebreak()
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [8], [240],
  [*Amministratore*], [8], [160],
  [*Analista*], [15], [375],
  [*Progettista*], [14], [350],
  [*Programmatore*], [15], [225],
  [*Verificatore*], [19], [285],
  [*Totale*], [*79*], [*1635*]
  ),
  caption: "Prospetto economico Sprint 6"
)
==== Rischi Occorsi
- *RI_001*: alcuni membri del gruppo non sono stati abbastanza produttivi, causando ritardi e difficoltà nella verifica finale. 
=== Riepilogo RTB
==== Prospetto economico
#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [35], [1050],
  [*Amministratore*], [40.5], [810],
  [*Analista*], [55], [1375],
  [*Progettista*], [60], [1500],
  [*Programmatore*], [69], [1035],
  [*Verificatore*], [64], [680],
  [*Totale*], [*324*], [*6730*]
  ),
  caption: "Prospetto economico Totale Sprint RTB"
)
