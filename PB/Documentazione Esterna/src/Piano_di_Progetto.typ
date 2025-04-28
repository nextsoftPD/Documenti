#import "../../../assets/template_v2.0.0.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Piano di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed","Stefano Baso","Luca Parise", "Maria Fuensanta Trigueros Hernandez", ),
  verifica: ("Ion Cainareanu" ,"Luca Parise","Marco Perazzolo","Maria Fuensanta Trigueros Hernandez",),
  approvazione: ("Luca Parise",),
  uso: "Esterno",
  version: "1.3.0",
  date: "23/11/2024",
  versionamento: (
    "1.3.0", "29/04/2025", "Stefano Baso", "Aggiunto consuntivo sprint 7 e 8", "",
    "1.2.0", "08/04/2025", "Malik Giafar Mohamed", "Aggiunti nuovi rischi, aggiunta sezione rischi attesi nella pianificazione e modificata la sezione del consuntivo degli sprint PB", "",
    "1.1.1", "08/04/2025", "Malik Giafar Mohamed", "Correzione errori minori", "",
    "1.1.0", "08/04/2025", "Stefano Baso", "Nuova versione del prospetto", "Malik Giafar Mohamed",
    "1.0.0", "08/03/2025", "Malik Giafar Mohamed", "Versione finale", "Marco Perazzolo",
    "0.5.0", "08/03/2025", "Stefano Baso, Malik Giafar Mohamed, Luca Parise", "Miglioramento sezione rischi, inserimento tabelle preventivo e consuntivo, miglioramento sezione pianificazione", "Ion Cainareanu",
    "0.4.0", "15/02/2025", "Stefano Baso", "Miglioramento sezione periodi", "Ion Cainareanu, Luca Parise",
    "0.3.2", "06/02/2025", "Malik Giafar Mohamed", "Miglioramento sezione rischi", "Marco Perazzolo",
    "0.3.1", "12/1/2025", "Maria Fuensanta Trigueros Hernandez", "Continuazione e completamento di tutte le parti relative a RTB", "Marco Perazzolo",
    "0.2.0", "19/12/2024", "Maria Fuensanta Trigueros Hernandez", "Creazione della struttura e avvio della stesura del documento", "Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
  )
)

#show figure: set block(breakable: true)

#outline(
  title: [Elenco delle tabelle],
  target: figure.where(kind: table),
  
)

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

== Struttura del documento

Il contenuto del documento è organizzato nelle seguenti sezioni:

- *Rischi Attesi e Mitigazione:* identificazione e valutazione dei possibili problemi che possono insorgere durante lo sviluppo, insieme alle strategie applicate per ridurre o eliminare il loro impatto.

- *Modello di sviluppo:* descrizione delle modello di sviluppo adottato per il progetto, con dettagli sulle fasi e le attività previste.

- *Pianificazione:* dettagli sulle fasi, le risorse e i tempi necessari per la realizzazione del progetto.

- *Preventivo:*  dettagli sui costi stimati per ogni fase del progetto, evidenziando risorse e allocazioni di budget.

- *Consuntivo di periodo:* dettagli sulle variazioni di pianificazione e costi rispetto alle stime iniziali, citando il vebrale che conterrà la retrospettiva del periodo produttivo. Verranno inoltre riportati i rischi occorsi durante ogni sprint.
=== Aggiornamento a seguito della revisione RTB

In seguito al colloquio di revisione RTB, sono stati suggeriti dei miglioramenti da attuare al seguente documento in vista della successiva revisione, tali cambiamenti riguardano la sua riorganizzazione per renderlo più utile alla guida dell'avanzamento del progetto. Siccome tali suggerimenti sono stati presi in considerazione tra la fine dell'RTB e l'inizio della PB, gli ultimi sprint (dal 7 al 10) presenteranno delle discrepanze nei contenuti e nella loro forma, nonché in alcuni dettagli della struttura del documento. Alcuni esempi sono la discrepanza delle date degli sprint a causa del cambiamento della data di consegna, oppure l'introduzione dei rischi attesi nella pianificazione degli sprint.

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
    [*Membri del gruppo improduttivi* ],
    [Un membro del gruppo potrebbe smettere di partecipare al progetto per motivi personali o professionali, compromettendo lo svolgimento delle attività.],
    [Il gruppo dovrà redistribuire il carico di lavoro tra i membri rimanenti. Inoltre, in collaborazione con il proponente, sarà necessario ridefinire la suddivisione delle attività per non superare il monte ore stabilito e quindi ridefinire le aspettative stabilite in precedenza. ],
    [RI_003],
    [*Poca disponibilità dei membri del gruppo*],
    [A causa di impegni personali o lavorativi, alcuni membri del gruppo potrebbero essere indisponibili in determinati periodi, causando un rallentamento nel raggiungimento degli obiettivi prefissati.],
    [Il gruppo si impegnerà a suddividere le attività in modo strategico, assegnando le _task_#super[G] in base alla loro priorità e alla disponibilità dei membri, così da minimizzare eventuali ritardi.],
    [RI_004],
    [*Contrasti interni al gruppo*],
    [Durante lo svolgimento del progetto potrebbero emergere conflitti tra i membri del gruppo, causando rallentamenti nel completamento delle attività.],
    [I membri del gruppo cercheranno di risolvere i contrasti attraverso una discussione collettiva. Se ciò non fosse sufficiente, il responsabile del progetto interverrà per mediare il conflitto, eventualmente ricorrendo a sondaggi per facilitare la decisione. Qualora il problema persistesse, si consulterà il committente per trovare una soluzione definitiva.],
    [RI_005],
    [*Completamento di task prioritarie in sospeso*],
    [Alcune task del progetto potrebbero non venir completate all'interno dello sprint nel quale sono state designate, causando ritardi e rallentamenti nel completamento delle altre attività.],
    [I membri del gruppo daranno la priorità a completare le attività in sospeso più critiche, completando in un secondo momento quelle che non siano ritenute essenziali per l'avanzamento del progetto.],
    [RI_006],
    [*Completamento mancante o parziale di una task*],
    [Una task assegnata potrebbe non essere completata entro la scadenza prevista, causando ritardi nelle attività successive e potenziali sovraccarichi di lavoro per altri membri del gruppo.],
    [Il gruppo valuterà se il completamento della task sia prorogabile o se sia necessario completarla prima di continuare con altro. In caso di proroga, il gruppo dovrà rivedere le priorità delle attività rimanenti, ricordandosi di non tralasciare la task da completare in sospeso.],
    [RI_007],
    [*Sovraccarico di lavoro per alcuni membri*],
    [La distribuzione non uniforme delle attività tra i membri del gruppo potrebbe portare a un sovraccarico di lavoro per alcuni membri del gruppo.],
    [I membri del gruppo che si troveranno in questa situazione dovranno avvisare gli altri, per cercare di distribuire equamente le task da svolgere. In caso non ci fosse collaborazione, si dovrà prendere in considerazione di contattare il committente per valutare una soluzione alternativa.],
    [RI_008],
    [*Documentazione incompleta*],
    [La documentazione potrebbe risultare incompleta o da aggiornare a seguito di un'attività di verifica, presentando informazioni sbagliate o non aggiornate rispetto all'attuale stato di avanzamento del progetto.],
    [I membri del gruppo dovranno correggere tempestivamente gli errori e riportare le informazioni corrette al fine di evitare di consegnare dei documenti non aggiornati.],
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
    [RT_004],
    [*Cambio di tecnologie*],
    [Durante la fase di implementazione del prodotto software si potrebbe scoprire che una determinata tecnologia non è più supportata o non è più in grado di soddisfare le esigenze del progetto.],
    [Il gruppo dovrà valutare se sia possibile continuare a utilizzare la tecnologia esistente o se sia necessario passare a una nuova tecnologia. Nell'ultimo caso, sarà necessario condurre al più presto un'analisi sulla nuova tecnologia e verificare se possa soddisfare le esigenze implementative o del progetto, per evitare di rifare lo stesso errore.],
    [RT_005],
    [*Mancato superamento dei test*],
    [Alcuni test di potrebbero non essere superati, oppure potrebbero avere una percentuale di superamento non soddisfacente, richiedendo modifiche al codice sorgente.],
    [I programmatori e i verificatori del gruppo si impegneranno nella correzione dei problemi che impediscono il superamento dei test. In alternativa, si valuterà se il test possa essere considerato superato anche se con una soglia non soddisfacente.],
    [RT_006],
    [*Test non adeguato al prodotto software*],
    [Al seguito di modifiche al codice sorgente o all'architettura del prodotto, si potrebbe scoprire che un determinato test è diventato inadeguato per l'MVP.],
    [I programmatori e i verificatori del gruppo si impegneranno nella ridefinizione di un test più adeguato al prodotto software.],
    [RT_007],
    [*Modifiche architetturali necessarie*],
    [Al seguito di una verifica durante l'implementazione, si potrebbe scoprire che l'architettura necessiti di modifiche al fine di essere funzionante],
    [I programmatori, i verificatori e i progettisti del gruppo si impegneranno a modificare l'architettura del prodotto software in modo da renderla funzionante.],
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
    [*Modifiche ai requisiti in corso d'opera*],
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
    [RC_005],
    [*Mancata validazione da parte del proponente*],
    [Il proponente potrebbe non fornire un feedback tempestivo o dettagliato durante le revisioni, causando ritardi nella correzione e nella finalizzazione della documentazione e del prodotto.],
    [L'intero gruppo dovrà accordare dei nuovi cambiamenti da attuare al prodotto software e adattare la documentazione di conseguenza. Inevitabilmente, il gruppo dovrà rivedere le tempistiche di consegna per garantire il rispetto delle aspettative del proponente.],
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
  [RF_002],
  [*Aumento dei costi imprevisti*],
  [Eventuali modifiche ai requisiti o problemi tecnici potrebbero richiedere più ore di lavoro del previsto, portando a un aumento dei costi rispetto al preventivo.],
  [Le ore aggiuntive svolte verranno sottratte dalle ore preventivate per gli altri sprint, per evitare di superare il budget stabilito.],
  ),
  caption: [Rischi finanziari]
  )


 
== Tabella riassuntiva
Nella seguente tabella vengono descritti: 
- L'*occorrenza*: rappresenta la probabilità che il rischio si verifichi. Un rischio con alta occorrenza è molto probabile e deve essere monitorato con attenzione, mentre un rischio con bassa occorrenza è meno preoccupante, ma comunque da considerare.
- L'*impatto*: misura la gravità delle conseguenze che il rischio potrebbe avere sul progetto. Un rischio con alto impatto può compromettere seriamente il raggiungimento degli obiettivi, mentre un impatto basso causa problemi gestibili senza significativi rallentamenti o costi aggiuntivi.

- L'*_efficacia_*#super[G] della mitigazione: indica quanto le azioni di mitigazione adottate siano in grado di ridurre l'impatto del rischio. Un valore alto significa che le contromisure sono efficaci e il rischio è ben gestito, mentre un valore basso indica che il rischio rimane problematico nonostante gli sforzi.

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
    [*Efficacia mitigazione*],
    [RI_001], [*Mancanza di coordinamento del gruppo *], [Medio], [Medio], [Alto],
    [RI_002], [*Membri del gruppo improduttivi*], [Medio], [Alto], [Medio],
    [RI_003], [*Poca disponibilità dei membri del gruppo*], [Alto], [Medio], [Medio],
    [RI_004], [*Contrasti interni al gruppo*], [Basso], [Alto], [Alto],
    [RI_005], [*Completamento di task prioritarie in sospeso*], [Medio], [Alto], [Medio],
    [RI_006], [*Completamento mancante o parziale di una task*], [Medio], [Alto], [Medio],
    [RI_007], [*Sovraccarico di lavoro per alcuni membri*], [Medio], [Alto], [Medio],
    [RI_008], [*Documentazione incompleta*], [Medio], [Alto], [Alto],
    [RT_001], [*Prestazioni dei modelli LLM*], [Basso], [Alto], [Alto],
    [RT_002], [*Obsolescenza tecnologica*], [Basso], [Medio], [Medio],
    [RT_003], [*Mancanza di conoscenze*], [Medio], [Medio], [Alto],
    [RT_004], [*Cambio di tecnologie*], [Basso], [Alto], [Medio],
    [RT_005], [*Mancato superamento dei test*], [Medio], [Alto], [Medio],
    [RT_006], [*Test non adeguato al prodotto software*], [Basso], [Alto], [Basso],
    [RT_007], [*Modifiche architetturali necessarie*], [Basso], [Alto], [Basso],
    [RC_001], [*Ambiguità dei requisiti*], [Basso], [Alto], [Medio],
    [RC_002], [*Modifiche al capitolato in corso d'opera*], [Basso], [Alto], [Alto],
    [RC_003], [*Disallineamento tra capitolato e vincoli tecnici*], [Basso], [Medio], [Alto],
    [RC_004], [*Divergenze tra le aspettative del committente e l'interpretazione del gruppo*], [Basso], [Alto], [Alto],
    [RC_005], [*Mancata validazione da parte del proponente*], [Basso], [Alto], [Basso],
    [RF_001], [*Superamento budget*], [Medio], [Alto], [Medio],
    [RF_002], [*Aumento dei costi imprevisti*], [Medio], [Alto], [Medio],
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

Per la pianificazione abbiamo considerato il periodo dal 16/11/2024 al 16/04/2025. Escludendo il periodo dal 17/01/2025 al 7/02/2025, nel quale ci sarà la sessione d'esami, il tempo restante per il progetto è stato suddiviso in 8 sprint bisettimanali e 2 sprint della durata di una settimana singola.

L'organizazione degli sprint sarà la seguente:
== Sprint 1 - Acquisizione di conoscenze

*Periodo*: 16/11/2024 - 30/11/2024

In questo sprint iniziale, data la scarsa conoscenza delle tecnologie richieste, sarà predisposto un periodo di studio di esse con lo scopo di formazione del gruppo.

=== Obiettivo

L'obiettivo è l'acquisizione delle conoscenze utili per lo svolgimento _milestone_#super[G] RTB usando _Notion_#super[G] per formare tutti i membri del progetto, in modo da raggiungere un livello di conoscenza uniforme.

=== Attività

Il completamento di questo sprint prevede la preparazione della repository per la documentazione della milestone RTB e l'acquisizione della conoscenza da parte del gruppo delle tecnologie da usare. Quindi verranno fatti dei test in locale di varie tecnologie concordate con il proponente e di vari LLM, testandone i parametri, risultati e chiamate API per prendere familiarità con queste tecnologie.

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

=== Sprint 7 - Stesura Documentazione PB

*Periodo*: 22/03/2025 - 05/04/2025

Questo sprint è dedicato alla stesura della documentazione per la Product Baseline.

==== Obiettivo

L'obiettivo è principalmente la stesura iniziale della documentazione PB, nello specifico:
- *Manuale Utente*: fornire una guida dettagliata per l'utilizzo del plug-in
- *Specifica Tecnica*: descrivere le funzionalità e l'architettura del sistema

Si prevede di arrivare alla stesura delle sezioni più generiche, in quanto comunque verrà riutilizzato il PoC per il completamento dell'_MVP_#super[G].
==== Attività

La principale attività di questo sprint sono:
- L'analisi dell'architettura PoC per il suo adattamento all'MVP e avvio della stesura della specifica tecnica e del manuale utente.
- L'avanzamento nella documentazione RTB al fine della pubblicazione della versione 2.0.0 

==== Rischi attesi
I rischi attesi durante questo sprint sono legati alla stesura della documentazione in mancanza di conoscenze specifiche. In particolare, si prevede che i rischi meno banali che si possano verificare siano i seguenti:

- *RI_001 - Poca disponibilità dei membri del gruppo*: Potrebbero verificarsi ritardi a causa di impegni personali o lavorativi di alcuni membri del gruppo assegnati alle task di questo sprint.

- *RT_003 - Mancanza di conoscenze specifiche*: La mancanza di conoscienza sulla struttura della documentazione da creare e la difficoltà intrinseca della creazione di un'architettura per il prodotto finale potrebbero portare a ritardi nel completamento delle task assegnate (causando quindi il rischio *RI_006 - Completamento mancante o parziale di una task*).

=== Sprint 8 - Codifica MVP e Testing

*Periodo*: 06/04/2025 - 20/04/2025

Questo sprint si concentra sulla codifica e testing del Minimum Viable Product (MVP).

==== Obiettivo

L'obiettivo è arrivare ad una versione stabile dell'MVP partendo dal PoC e assicurarsi che tutte le funzionalità essenziali siano funzionanti.

==== Attività

- Implementazione di alcune delle funzionalità mancanti del prodotto finale
  - Riuso del PoC 
- Esecuzione di alcuni dei test definiti nel piano di progetto
  - Eventuale correzione dei bug riscontrati durante i test
- Stesura graduale del manuale utente e delle specifiche tecniche
==== Rischi attesi
I rischi attesi durante questo sprint sono legati alla codifica e al testing dell'MVP. In particolare, si prevede i rischi meno banali che si possano verificare siano i seguenti:

- *RT_007 - Modifiche architetturali necessarie*: Esiste la possibile necessità di modifiche architetturali nel caso in cui la codifica effettiva dell'MVP richieda un'architettura diversa rispetto a quella inizialmente prevista.

- *RT_004 - Cambio di tecnologie*: Potrebbe emergere la necessità di modificare le tecnologie utilizzate, per esempio a seguito di scelte tecnolgiche errate per l'implementazione dei test.

- *RF_002* - *Aumento dei costi imprevisti*: L'attività di programmazione, sia per la stesura dei test che per quella dell'MVP, potrebbe dilungarsi troppo a causa di molteplici attività refactoring o di perfezionamento del codice, portando all'utilizzo intensivo del ruolo di programmatore con un conseguente aumento dei costi rispetto al preventivo iniziale. 

- *RT_005 - Mancato superamento dei test*: Indubbiamente alcuni test potrebbero non essere superati, in questo caso la mitigazione sar un semplice miglioramento dei moduli che non superano i test.  
=== Sprint 9 - Baseline Documentazione

*Periodo*: 21/04/2025 - 28/04/2025

Questo sprint è dedicato al completamento della documentazione per la Product Baseline.

==== Obiettivo

L'obiettivo è portare tutta la documentazione necessaria per la milestone PB alla versione subito precedente a quella finale, in modo che possa essere validata definitivamente nello sprint successivo.

==== Attività

La principale attività di questo sprint saranno:
- Aggiornamento specifica tecnica e del manuale utente con le ultime informazioni relative all'MVP
- Aggiornamento delle metriche del piano di qualifica all'ultima versione ed eventuali revisioni o modifiche al documento
==== Rischi attesi
I principali rischi non banali attesi durante questo sprint saranno:

- *RI_005 - Completamento di task prioritarie in sospeso*: Potrebbero verificarsi ritardi nel completamento dell'attività di codifica.

- *RT_007 - Modifiche architetturali necessarie*: Durante la verifica del codice e dell'architettura per la sua integrazione nella specifica tecnica, potrebbe comunque emergere la necessità di modificare l'architettura del prodotto per adattarla a possibili migliorie o per correggere errori individuati durante un'analisi.

- *RT_006 - Test non adeguato al prodotto software*: A seguito di un'analisi oppure al verificarsi di *RT_005* potrebbe emergere la necessità di modificare i test definiti in precedenza, in quanto non più adeguati al prodotto software finale.

- *RC_004 - Divergenze tra le aspettative del proponente e l'interpretazione del gruppo*: L'MVP, una volta completato, potrebbe non soddisfare pienamente le aspettative del proponente, ad esempio per una difficoltà di utilizzo o per la mancanza di alcune funzionalità.

=== Sprint 10 - Validazione finale e rilascio

*Periodo*: 29/04/2025 - 06/05/2025

Questo sprint è dedicato alla validazione finale del sistema e della documentazione, nonché alla preparazione per la consegna finale.

==== Obiettivo

L'obiettivo è validare il sistema e la documentazione, assicurandosi che siano pronti per il rilascio. Inoltre, sarà necessario preparare la presentazione finale.

==== Attività

- Validazione finale del sistema
- Correzione di eventuali bug residui
- Revisione finale della documentazione
- Preparazione della presentazione finale
==== Rischi attesi
I rischi attesi durante questo sprint sono legati alla validazione finale del sistema e della documentazione. In particolare, si prevede che i rischi meno banali che si possano verificare siano i seguenti:

- *RI_003 - Poca disponibilità dei membri del gruppo*: La collaborazione in questa fase è essenziale, soprattutto considerando che alcuni membri potrebbero dichiarare il termine delle proprie attività, riducendo la disponibilità complessiva.

- *RI_005 - Completamento di task prioritarie in sospeso*: Potrebbero verificarsi ritardi nel completamento della documentazione o delle attività di validazione, compromettendo la consegna finale.

- *RT_005 - Mancato superamento dei test*: Alcuni test potrebbero non essere superati, richiedendo modifiche al codice o alla documentazione. Nel caso si arrivi in questa situazione verso gli ultimi giorni, il gruppo dovrà decidere se rispettare le scadenze previste o posticipare la consegna finale per risolvere i problemi.

- *RF_001 - Superamento del budget*: Le ore effettivamente lavorate potrebbero superare quelle pianificate, comportando un incremento dei costi rispetto al preventivo iniziale.

- *RI_008 - Documentazione incompleta*: La documentazione potrebbe risultare incompleta o non aggiornata dallo sprint precedente, richiedendo ulteriori revisioni e correzioni.

- *RC_005 - Mancata validazione da parte del proponente*: Il proponente potrebbe non fornire un feedback non tempestivo o negativo del prodotto finale, causando ritardi nella correzione e nella finalizzazione della documentazione e del sistema.

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
  [*Analista*], [25 €/ora], [72], 
  [*Progettista*], [25 €/ora],[108], 
  [*Programmatore*], [15 €/ora], [135],
  [*Verificatore*], [15 €/ora], [113]
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
*Periodo:* 22/03/2025 - 05/04/2025 
==== Prospetto orario ed economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [5], [150],
    [*Amministratore*], [6.5], [130],
    [*Analista*], [7], [175],
    [*Progettista*], [16], [400],
    [*Programmatore*], [25], [375],
    [*Verificatore*], [7], [105],
    [*Totale*], [*66.5*], [*1335*]
  ),
  caption: "Prospetto orario ed economico preventivato per lo Sprint 7"
)

=== Sprint 8
*Periodo:* 06/04/2025 - 20/04/2025
==== Prospetto orario ed economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [4], [120],
    [*Amministratore*], [5], [100],
    [*Analista*], [6], [150],
    [*Progettista*], [14], [350],
    [*Programmatore*], [20], [300],
    [*Verificatore*], [7], [105],
    [*Totale*], [*56*], [*1125*]
  ),
  caption: "Prospetto orario ed economico preventivato per lo Sprint 8"
)
=== Sprint 9
*Periodo:* 21/04/2025 - 28/04/2025
==== Prospetto orario ed economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [4], [120],
    [*Amministratore*], [5], [100],
    [*Analista*], [4], [100],
    [*Progettista*], [13], [325],
    [*Programmatore*], [15], [225],
    [*Verificatore*], [15], [225],
    [*Totale*], [*56*], [*1095*]
  ),
  caption: "Prospetto orario ed economico preventivato per lo Sprint 9"
)
=== Sprint 10
*Periodo:* 29/04/2025 - 06/05/2025
==== Prospetto orario ed economico
#figure(
  table(
    columns: 3,
    fill: (x,y) => if x == 0 {blue.lighten(70%) },
    [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
    [*Responsabile*], [4], [120],
    [*Amministratore*], [3], [60],
    [*Analista*], [-], [-],
    [*Progettista*], [5], [125],
    [*Programmatore*], [6], [90],
    [*Verificatore*], [20], [300],
    [*Totale*], [*38*], [*695*]
  ),
  caption: "Prospetto orario ed economico preventivato per lo Sprint 10"
)

== Riepilogo prospetto orario ed economico e prospetto orario

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
  caption: "Riepilogo prospetto orario ed economico preventivato"
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
    [*Ion*], [-], [-], [2], [-], [-], [2],
    [*Maria Fuensanta*], [1], [-], [2], [2], [15], [1],
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
== PB
=== Sprint 7 - Stesura Documentazione PB
*Periodo*: 22/03/2025 - 05/04/2025 \
*Verbale di Retrospettiva*: VI2025-04-05
==== Rendicontazione oraria

#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [2], [-], [-], [3], [6], [-],
    [*Ion*], [-], [0.5], [-], [2], [3], [-],
    [*Maria Fuensanta*], [1], [3], [3], [2], [3], [3],
    [*Stefano*], [1], [-], [-], [3], [5], [1],
    [*Marco*], [1], [-], [2], [3], [5], [2],
    [*Luca*], [-], [3], [2], [3], [3], [1],
  ),
  caption: "Rendicontazione Sprint 7",
)

==== Prospetto economico

#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [5], [150],
  [*Amministratore*], [6.5], [130],
  [*Analista*], [7], [175],
  [*Progettista*], [16], [400],
  [*Programmatore*], [25], [375],
  [*Verificatore*], [7], [105],
  [*Totale*], [*66.5*], [*1335*]
  ),
  caption: "Prospetto economico Sprint 7"
)

=== Rischi Occorsi
Si è verificato il rischio *RI_001* a causa di impegni personali di alcuni membri del gruppo, tuttavia non ha causato ritardi nello sprint attuale.

Durante lo svolgimento dello sprint invece, i rischi *RT_003* e *RI_005* hanno influito sull'inizio della stesura della specifica tecnica, si prevede quindi di completarla nel prossimo sprint.

Si è verificato inoltre il rischio *RI_006*, in quanto non tutta la documentazione è stata completata, tuttavia la documentazione rimanente è facilmente completabile in parallelo alla stesura del codice nel prossimo sprint, quindi non si prevede un impatto significativo nel prossimo sprint.

=== Sprint 8 - Codifica MVP e Testing 
*Periodo*: 06/04/2025 - 20/04/2025 \
*Verbale di Retrospettiva*: VI2025-04-19
==== Rendicontazione oraria

#figure(
  table(
    columns: 7,
    fill: (x,y) => if y == 0 {blue.lighten(70%) },
    [*Membro*] , [*Re*] , [*Am*], [*An*], [*Prj*], [*Prg*], [*Ver*],
    [*Malik*], [-], [-], [-], [2], [5], [2],
    [*Ion*], [-], [-], [-], [2], [5], [-],
    [*Maria Fuensanta*], [1], [2], [3], [2], [3], [3],
    [*Stefano*], [-], [1], [3], [-], [5], [1],
    [*Marco*], [2], [-], [-], [5], [-], [1],
    [*Luca*], [1], [2], [-], [3], [2], [-],
  ),
  caption: "Rendicontazione Sprint 8",
)

==== Prospetto economico

#figure(
  table(
  columns: 3,
  fill: (x,y) => if x == 0 {blue.lighten(70%) },
  [*Ruolo*], [*Ore Totali*], [*Costo Totale (€)*],
  [*Responsabile*], [4], [120],
  [*Amministratore*], [5], [100],
  [*Analista*], [6], [150],
  [*Progettista*], [14], [350],
  [*Programmatore*], [20], [300],
  [*Verificatore*], [7], [105],
  [*Totale*], [*56*], [*1125*]
  ),
  caption: "Prospetto economico Sprint 8"
)

=== Rischi Occorsi
Durante lo svolgimento dello sprint non si sono verificati problemi di improduttività tra i membri del gruppo, e il lavoro è stato portato avanti in modo collaborativo.

Il rischio *RT_007* si è concretizzato durante l'implementazione di alcune funzionalità, richiedendo interventi per adattare l'architettura alle esigenze emerse durante lo sviluppo.

Si è verificato anche il rischio *RI_006*, in quanto i test non sono ancora stati completamente definiti e il codice rimane da sistemare. Questo aspetto sarà prioritario nel prossimo sprint per garantire la consegna dell'MVP nei tempi previsti.

Gli obiettivi principali dello sprint sono stati comunque raggiunti, e non è necessario applicare correzioni per il futuro. La collaborazione tra i membri del gruppo è stata efficace e ha portato a risultati soddisfacenti.
