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
    "0.4.0", "15/02/2024", "Stefano Baso", "Miglioramento sezione periodi", "Ion Cainareanu, Luca Parise",
    "0.3.2", "06/02/2024", "Malik Giafar Mohamed", "Miglioramento sezione rischi", "",
    "0.3.1", "12/1/2024", "Maria Fuensanta Trigueros Hernandez", "Continuazione e completamento di tutte le parti relative a RTB", "Marco Perazzolo",
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

- *Rischi attesi e mitigazione:* identificazione e valutazione dei possibili problemi che possono insorgere durante lo sviluppo. Inoltre, viene fornita una soluzione per prevenire o mitigare questi rischi. 

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
#pagebreak()
== Riferimenti

=== Riferimenti normativi

- File Norme di Progetto
- File Analisi dei Requisiti
- Capitolato C8 : Requirement Tracker - Plug-in VS Code
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf

=== Riferimenti informativi

- T02 - Processi di ciclo di vita
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf
- T04 - Gestione di progetto 
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf
- T05 - Analisi dei requisiti
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf



#pagebreak()
= Rischi attesi e mitigazione

Questa sezione identifica i potenziali rischi di diversa natura e descrive le azioni pianificate per mitigarne l'impatto qualora si verificassero, oltre alle misure preventive adottate per evitarne l’insorgenza.
\
I rischi si dividono nel seguente modo: 
- *Rischi interni ed organizzativi*:
  tutte quelle problematiche che possono sorgere all'interno del team di progetto e nella gestione del lavoro, influenzando la produttività, la comunicazione, il coordinamento e la distribuzione delle risorse. Questi rischi includono la scarsa definizione degli obiettivi, la mancanza di competenze, conflitti tra membri, difficoltà nella pianificazione e nei cambiamenti dei requisiti, con potenziali impatti negativi sulle tempistiche e sul successo del progetto.
- *Rischi tecnologici*:
  le problematiche legate agli strumenti, alle tecnologie e alle infrastrutture utilizzate durante lo sviluppo di un progetto. Questi rischi possono derivare da incompatibilità software, malfunzionamenti hardware, limitazioni delle tecnologie adottate, aggiornamenti non previsti, vulnerabilità di sicurezza o difficoltà nell'integrazione con sistemi esterni. Se non gestiti correttamente, possono compromettere le prestazioni, l'affidabilità e l'efficacia del prodotto finale.
- *Rischi capitolato*: 
  riguardano le incertezze e le problematiche derivanti dalla definizione, interpretazione e gestione dei requisiti del progetto. Questi rischi possono includere ambiguità o incompletezza delle specifiche, modifiche frequenti ai requisiti, disallineamento tra le aspettative del committente e l'implementazione, o difficoltà nella comprensione delle richieste. Una gestione inefficace di questi aspetti può portare a ritardi, aumento dei costi e necessità di revisioni significative nel progetto.
- *Rischi finanziari*:
  I rischi finanziari sono le incertezze legate ai costi e alle risorse economiche necessarie per 
  lo sviluppo del progetto.

Ogni rischio presentato di seguito è distinto univocamente da un codice nel seguente modo:
[R][T]\_[x] 
- R = Rischio
- T = Tipo (I=Interno, T=Tecnologico, C=Capitolato, F=finanziario)
- x = numero progressivo che inizia da 1 e si resetta per ogni tipo di rischio

(es. RI_001 = Rischio Interno numero 001)

== Rischi interni e organizzativi

  #table(
  columns: (0.5fr, 1fr, 1fr, 1fr),
  align: center,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  table.header(
    table.cell(fill: rgb("#0096c7"))[*Codice*],
    table.cell(fill: rgb("#0096c7"))[*Rischio*], 
    table.cell(fill: rgb("#0096c7"))[*Descrizione*], 
    table.cell(fill: rgb("#0096c7"))[*Mitigazione*]),

  [RI_001],
  [*Mancanza di coordinamento del gruppo di progetto* ],
  [Una comunicazione inefficace tra i membri del team può causare ritardi nelle attività e compromettere la consegna del capitolato],
  [Ogni membro del team deve mantenere un coinvolgimento attivo nel progetto, restando aggiornato su ogni fase dello sviluppo. In caso di assenze prolungate o inattività di alcuni membri, sarà loro responsabilità sollecitarne il contributo per garantire il rispetto degli impegni.
  \
  \
  Per facilitare la comunicazione e la gestione delle attività, verranno utilizzate piattaforme di collaborazione come GitHub, WhatsApp e Discord per organizzare incontri e suddividere il lavoro in modo efficiente.
],

  [RI_002],
  [*Abbandono di un membro del gruppo* ],
  [Un membro del gruppo potrebbe lasciare il progetto per motivi personali o professionali, compromettendo lo svolgimento delle attività.],
  [Il gruppo dovrà redistribuire il carico di lavoro tra i membri rimanenti. Inoltre, in collaborazione con il committente, sarà necessario ridefinire la suddivisione delle attività per non superare il monte ore stabilito e quindi ridefinire le aspettative stabilite in precedenza. ],

  [RI_003],
  [*Disponibilità dei membri del gruppo di progetto*],
  [A causa di impegni personali o lavorativi, alcuni membri del team potrebbero essere indisponibili in determinati periodi, causando un rallentamento nel raggiungimento degli obiettivi prefissati.],
  [ Il team si impegnerà a suddividere le attività in modo strategico, assegnando le task in base alla loro priorità e alla disponibilità dei membri, così da minimizzare eventuali ritardi.],

  /*-------------------*/
  [RI_004],
  [*Contrasti interni al gruppo di progetto*],
  [Durante lo svolgimento del progetto potrebbero emergere conflitti tra i membri del team, causando rallentamenti nel completamento delle attività.],
  [I membri del gruppo cercheranno di risolvere i contrasti attraverso una discussione collettiva. Se ciò non fosse sufficiente, il responsabile del progetto interverrà per mediare il conflitto, eventualmente ricorrendo a sondaggi per facilitare la decisione. Qualora il problema persistesse, si consulterà il docente o il committente per trovare una soluzione definitiva. ],
    
  )

#align(center, [Tab. 1] )



#pagebreak() 

== Rischi tecnologici

#table(
  columns: (0.5fr, 1fr, 1fr, 1fr),
  align: center,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  table.header(
    table.cell(fill: rgb("#0096c7"))[*Codice*], 
    table.cell(fill: rgb("#0096c7"))[*Rischio*], 
    table.cell(fill: rgb("#0096c7"))[*Descrizione*], 
    table.cell(fill: rgb("#0096c7"))[*Mitigazione*]),
/*-----------------------------*/

/*-----------------------------*/
  [RT_001],
  [*Prestazioni dei modelli LLM*],
  [L'utilizzo di modello di linguaggio di grandi dimensioni (LLM) potrebbe comportare tempi di risposta elevati, specialmente su macchine con risorse hardware limitate, compromettendo l'esperienza d'uso. ],
  [Consentire all'utente di selezionare il modello LLM più adatto alle capacità del proprio sistema, offrendo opzioni più leggere per dispositivi meno performanti.],

/*-----------------------------*/
  [RT_002],
  [*Obsolescenza tecnologica*],
  [L'uso di tecnologie non aggiornate o poco supportate potrebbe rendere difficile la manutenzione e l'espansione del progetto nel tempo.],
  [Selezionare tecnologie con ampio supporto da parte della community,monitorare regolarmente gli aggiornamenti e mantenere la documentazione aggiornata. Condurre test di regressione per ogni aggiornamento. ],
/*-----------------------------*/
  [RT_003],
  [*Problemi di compatibilità tra ambienti*],
  [Il progetto potrebbe comportarsi in modo diverso a seconda del sistema operativo o delle dipendenze installate, creando difficoltà nella distribuzione.],
  [Utilizzare containerizzazione (Docker) o ambienti virtuali per standardizzare l'esecuzione del software su diverse piattaforme. ],
/*-----------------------------*/  
  [RT_004],
  [*Mancanza di conoscenze*],
  [Alcuni membri del team potrebbero non possedere le competenze necessarie per svolgere il progetto in modo efficace.],
  [Ogni membro sarà responsabile di colmare le proprie lacune attraverso studio autonomo. Inoltre, i membri più esperti forniranno supporto agli altri tramite spiegazioni individuali o collettive, oltre alla creazione di documentazione, riassunti e manuali, al fine di ridurre i tempi di apprendimento e minimizzare i ritardi nelle attività.
  
  Inoltre, verranno utilizzate tecnologie di accentramento delle conoscenze come 'Notion' o 'Google Drive'. ],
/*-----------------------------*/
  [RT_005],
  [*Sicurezza dei dati e delle API*],
  [L'integrazione con API esterne e l'elaborazione di dati sensibili potrebbero esporre il sistema a vulnerabilità di sicurezza.],
  [Implementare protocolli di autenticazione sicuri, crittografare i dati sensibili e seguire best practice di cybersecurity.],
)
#align(center, [Tab. 2] )





== Rischi riguardanti il capitolato

#table(
  columns: (0.5fr, 1fr, 1fr, 1fr),
  align: center,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  table.header(
    table.cell(fill: rgb("#0096c7"))[*Codice*], 
    table.cell(fill: rgb("#0096c7"))[*Rischio*], 
    table.cell(fill: rgb("#0096c7"))[*Descrizione*], 
    table.cell(fill: rgb("#0096c7"))[*Mitigazione*]),

  
/*-----------------------------*/
  [RC_001],
  [*Ambiguità dei requisiti*],
  [Il capitolato potrebbe contenere indicazioni poco chiare o ambigue, rendendo difficile la comprensione delle reali esigenze del committente],
  [Organizzare incontri periodici con il committente e il docente per chiarire eventuali dubbi e allineare le aspettative.],
  
/*-----------------------------*/
  [RC_002],
  [*Modifiche al capitolato in corso d'opera*],
  [Durante lo sviluppo, i requisiti inizialmente concordati potrebbero subire modifiche a causa di fattori interni (nuove esigenze del team) o esterni (richieste del committente). Questo può portare a ritardi, aumento dei costi o necessità di rivedere parti già sviluppate.],
  [ Gli stakeholder dovranno concordare preventivamente un processo per la gestione delle modifiche ai requisiti. Sarà inoltre necessario aggiornare il preventivo e gli accordi precedentemente stabiliti per garantire il rispetto delle scadenze e delle risorse disponibili.],
/*-----------------------------*/
  [RC_003],
  [*Disallineamento tra capitolato e vincoli tecnici*],
  [Il capitolato potrebbe richiedere funzionalità difficili da implementare a causa di limitazioni tecniche o di strumenti disponibili.],
  [Effettuare un'analisi di fattibilità prima di iniziare lo sviluppo e proporre eventuali alternative al committente.],
/*-----------------------------*/
  [RC_004],
  [*Divergenze tra le aspettative del committente e l'interpretazione del gruppo*],
  [ Il team di progetto potrebbe interpretare diversamente alcune sezioni del capitolato rispetto alle intenzioni originali del committente.],
  [Mantenere una comunicazione costante con il committente e il docente per confermare le scelte progettuali prima di implementarle.],

)
#align(center, [Tab. 3] )





== Rischi finanziari

#table(
  columns: (0.5fr, 1fr, 1fr, 1fr),
  align: center,
  fill: (x,y) => if x == 0 {blue.lighten(90%) },
  table.header(
    table.cell(fill: rgb("#0096c7"))[*Codice*], 
    table.cell(fill: rgb("#0096c7"))[*Rischio*], 
    table.cell(fill: rgb("#0096c7"))[*Descrizione*], 
    table.cell(fill: rgb("#0096c7"))[*Mitigazione*]),
  [RF_001],
  [Superamento budget],
  [Rallentameni dovuti a cause interne o esterne potrebbero portare al superamento del monte ore preventivato],
  [Monitorare correttamente e costantemente il lavoro dei membri del gruppo attraverso strumenti di rendicontazione oraria],
)
#align(center, [Tab. 4] )


#pagebreak()
== Tabella riassuntiva
Nella seguente tabella vengono descritti: 
- L'*occorrenza*: rappresenta la probabilità che il rischio si verifichi. Un rischio con alta occorrenza è molto probabile e deve essere monitorato con attenzione, mentre un rischio con bassa occorrenza è meno preoccupante, ma comunque da considerare.
- L'*impatto*: misura la gravità delle conseguenze che il rischio potrebbe avere sul progetto. Un rischio con alto impatto può compromettere seriamente il raggiungimento degli obiettivi, mentre un impatto basso causa problemi gestibili senza significativi rallentamenti o costi aggiuntivi.
- L'*efficacia*: indica quanto le azioni di mitigazione adottate siano in grado di ridurre l'impatto del rischio. Un valore alto significa che le contromisure sono efficaci e il rischio è ben gestito, mentre un valore basso indica che il rischio rimane problematico nonostante gli sforzi.

I valori nella tabella possono quindi dividersi in "basso", "medio" o "alto" come descritto sopra. 


    #table(
    columns: (0.5fr,2fr, 1fr, 1fr, 1fr),
    align: center,
    fill: (x,y) => if x == 0 {blue.lighten(90%) },
    table.header( 
      table.cell(fill: rgb("#0096c7"))[*Codice rischio*],
      table.cell(fill: rgb("#0096c7"))[*Titolo rischio*],
      table.cell(fill: rgb("#0096c7"))[*occorrenza*],
      table.cell(fill: rgb("#0096c7"))[*Impatto*],
      table.cell(fill: rgb("#0096c7"))[*Efficacia*],
    ),
  /*----------------------------*/
    [RI_001],[*Mancanza di coordinamento del gruppo di progetto*],[Medio],[Alto],[Alto],
  /*----------------------------*/
    [RI_002],[*Abbandono di un membro del gruppo*],[Basso],[Alto],[Alto],
    /*----------------------------*/
    [RI_003],[*Disponibilità dei membri del gruppo di progetto*],[Alto],[Alto],[Medio],
    /*----------------------------*/
    [RI_004],[*Contrasti interni al gruppo di progetto*],[Medio],[Alto],[Alto],
    /*----------------------------*/
    [RT_001],[*Prestazioni dei modelli LLM*],[Basso],[Alto],[Alto],
    /*----------------------------*/
    [RT_002],[*Obsolescenza tecnologica*],[Medio],[Medio],[Medio],
    /*----------------------------*/
    [RT_003],[*Problemi di compatibilità tra ambienti*],[Basso],[Alto],[Alto],
    /*----------------------------*/
    [RT_004],[*Mancanza di conoscenze*],[Medio],[Medio],[Alto],
    /*----------------------------*/
    [RT_005],[*Sicurezza dei dati e delle API*],[Medio],[Alto],[Medio],
    /*----------------------------*/
    [RC_001],[*Ambiguità dei requisiti*],[Basso],[Alto],[Medio],
    /*----------------------------*/
    [RC_002],[*Modifiche al capitolato in corso d'opera*],[Basso],[Alto],[Alto],
    /*----------------------------*/
    [RC_003],[*Disallineamento tra capitolato e vincoli tecnici*],[Basso],[Medio],[Alto],
    /*----------------------------*/
    [RC_004],[*Divergenze tra le aspettative del committente e l'interpretazione del gruppo*],[Basso],[Alto],[Alto],
    /*----------------------------*/
    [RF_001],[*Superamento budget*], [Medio], [Alto], [Medio],
    )
#align(center, [Tab. 5] )
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

= Pianificazione

Nella seguente sezione verrà sviluppata nel dettaglio la suddivisione del periodo temporale che intercorre tra l'assegnazione dell'appalto e la consegna del RTB. Nelle varie fasi verrà elencato il periodo di svolgimento, gli obiettivi e i ruoli. Ogni sprint è bisettimanale e prevede un incontro interno a metà sprint, per fare il punto della situazione e vedere eventuali problemi, un secondo incontro verrà fatto a fine di ogni sprint per verificare i risultati ottenuti e programmare i compiti del successivo sprint. 

== Sprint 1 - Acquisizione di conoscenze

Periodo 01/12/2024 - 20/12/2024

In questo sprint iniziale, data la scarsa conoscenza delle tecnologie richieste, viene predisposto un periodo di studio di esse con lo scopo di formazione del gruppo.

=== Obiettivo

L'obiettivo è la ricerca delle librerie consigliate e la redazione di file usando il tool online Notion per formare tutti i membri del progetto ed arrivare ad un livello di conoscenze tale da affrontare in modo consapevole il PoC.

=== Ruoli richiesti

I ruoli coinvolti sono:

- Analista
- Progettista

=== Attività

Il completamento di questo sprint prevede la chiara conoscienza da parte del gruppo delle tecnologie da usare, vengono quindi fatti dei test in locale di vari LLM testandone i parametri e risultati e chiamate API per prendere familiarità con queste tecnologie.

== Sprint 2 - Analisi e documentazione

Periodo: 21/12/2024 - 03/01/2024

Nel secondo sprint vengono consolidate e confermate le decisioni riguardanti l'andamento del lavoro contenute nel way of working. Vengono inoltre definite le norme da adottare al fine di raggiungere l'ottimo in termini di efficienza ed efficacia, a tal proposito è necessario fissare i requisiti principali da rispettare all'interno del progetto.

=== Obiettivo

L'obiettivo di questa fase è lo sviluppo di una struttura di base dei seguenti documenti, definendone inizialmente i concetti e le sezioni principali. I documenti sono:

- *Analisi dei Requisiti*: compilato dagli Analisti, contiene i casi d'uso analizzati e i requisiti del prodotto

- *Piano di Progetto*: compilato dal Responsabile e dagli Amministratori, contiene la divisione delle risorse, il piano di preventivo e consuntivo e la pianificazione dei periodi

- *Piano di Qualifica*: compilato dagli Amministratori e Progettisti, contiene i modelli, indici e metriche scelte per raggiungere gli obiettivi di efficienza e efficacia

- *Norme di Progetto*: compilato dagli Amministratori, contiene le principali decisioni riguardanti il way of working

- *Glossario*: il suo contenuto viene aggiornato in parallelo con il resto dei documenti, contiene una definizione chiara di tutti i termini tecnici / ambigui presenti nei documenti

=== Ruoli richiesti

I ruoli coinvolti in questo sprint sono:

- Responsabile
- Amministratore
- Analista
- Progettista

=== Attività

L'attività assegnata al secondo sprint è:

- Scrittura della documentazione: per ogni documento sopracitato viene redatta una struttura iniziale al fine di suddividere poi le sezioni in task e assegnarle alle relative persone di competenza. Trattandosi di una stesura iniziale del documento verranno migliorati e integrati nei successivi sprint.

== Sprint 3 - Baseline documentazione

Periodo: 04/01/2025 - 17/01/2025

Questo sprint è dedicato al consolidamento dello sprint precedente e alla formalizzazione delle decisioni prese durante gli incontri. Vengono descritte in ottica più approfondita le norme da seguire nella stesura di tutti i documenti e le metriche riguardanti i test e il codice.

=== Obiettivo

In parallelo viene continuata la stesura dei documenti AdR, PdQ, PdP e NdP, verificando per tutti la coerenza con gli obiettivi decisi inizialmente. Lo scopo dunque è avere una più chiara definizione di tutte le norme e metriche per iniziare lo sviluppo del codice e procedere poi con i test.

=== Ruoli richiesti

I ruoli coinvolti in questo sprint sono:

- Responsabile
- Amministratore
- Analista
- Progettista
- Verificatore

=== Attività

Le attività principali sono:

- Scrittura delle metriche e indici con formule di calcolo, soglie limite e relative tabelle.
- Applicazione del nuovo template ai documenti
- Verifiche di ambiguità tra documenti

== Sprint 4 - Baseline PoC

Periodo: 07/02/2025 - 20/02/2025

Questo sprint prevede l'applicazione di quanto definito finora per la progettazione del PoC. Verrà sviluppato parallelamente il frontend e il backend, e sviluppando la loro integrazione in un secondo momento.

=== Obiettivo

L'obiettivo è avere una grafica del plug-in funzionante integrata con le chiamate API in grado di soddisfare le prime richieste di test su requisiti d'esempio. Vengono inoltre inseriti e integrati in modo incrementale i diagrammi dei casi d'uso nel documento AdR.

=== Ruoli richiesti

I ruoli coinvolti in questo sprint sono:

- Responsabile
- Amministratore
- Progettista
- Programmatore

=== Attività

Le attività da svolgere per il completamento di questo sprint sono:

- Sviluppo interfaccia grafica
- Sviluppo chiamate API ai modelli LLM
- Integrazione codice in preparazione alla fase di test
- Scrittura nella documentazione dei diagrammi UML

== Sprint 5 - Verifica finale del prodotto e documentazione

Periodo: 21/02/2025 - 28/02/2025

Questo sprint è focalizzato sulla validazione del prodotto finale e sulla conclusione della documentazione. Comprende la verifica della conformità del sistema ai requisiti, il testing finale, la correzione di eventuali anomalie e la preparazione della documentazione definitiva. 

=== Obiettivo

L'obiettivo è assicurare che il prodotto sia pronto per il rilascio e soddisfi gli standard qualitativi richiesti e definiti. Verrà richiesto un incontro con l'azienda per mostrare il PoC completo e ottenere feedback sul miglioramento.

=== Ruoli richiesti

I ruoli coinvolti in questo sprint sono:

- Responsabile
- Amministratore
- Verificatore

=== Attività

Le attività da svolgere sono:

- Testare il prodotto e verificare la sua conformità con le metriche definite. Trattandosi di un PoC, quindi un prodotto temporaneo, non verranno rispettate tutte le metriche.
- Verificare l'ultima versione di tutta la documentazione integrata delle novità dallo sprint precedente
- Fissare un incontro con l'azienda

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

== Resoconto 





#pagebreak()
= Conclusioni
