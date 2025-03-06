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
    "0.5.0", "03/02/2024", "Stefano Baso, Malik Giafar Mohamed, Luca Parise", "Miglioramento sezione Rischi, Inserimento tabelle preventivo e consuntivo", "",
    "0.4.0", "15/02/2024", "Stefano Baso", "Miglioramento sezione periodi", "Ion Cainareanu, Luca Parise",
    "0.3.2", "06/02/2024", "Malik Giafar Mohamed", "Miglioramento sezione rischi", "",
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

== Glossario
Per evitare possibili ambiguità, è stato incluso un glossario per definire i termini tecnici rilevanti utilizzati nei documenti presentati. I termini sono evidenziati e spiegati nel file “Glossario”. 

== Maturità 

Il progetto si trova in una fase preliminare, con una struttura modulare definita e un piano di sviluppo pronto. Gli obiettivi iniziali sono stati identificati, e l'approccio adottato garantisce flessibilità e adattabilità per le evoluzioni future. 

== Riferimenti

=== Riferimenti normativi

- Norme di Progetto
- Analisi dei Requisiti
- Capitolato C8 : Requirement Tracker - Plug-in VS Code
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf

=== Riferimenti informativi

- T02 - Processi di ciclo di vita
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf
- T04 - Gestione di progetto 
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf
- T05 - Analisi dei requisiti
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf


= Rischi attesi e mitigazione

Questa sezione identifica i potenziali rischi di diversa natura e descrive le azioni pianificate per mitigarne l'impatto qualora si verificassero, oltre alle misure preventive adottate per evitarne l'insorgenza.
\
I rischi si dividono nel seguente modo: 
- *Rischi interni ed organizzativi*:
  tutte quelle problematiche che possono sorgere all'interno del team di progetto e nella gestione del lavoro, influenzando la produttività, la comunicazione, il coordinamento e la distribuzione delle risorse. Questi rischi includono la scarsa definizione degli obiettivi, la mancanza di competenze, conflitti tra membri, difficoltà nella pianificazione e nei cambiamenti dei requisiti, con potenziali impatti negativi sulle tempistiche e sul successo del progetto.
- *Rischi tecnologici*:
  le problematiche legate agli strumenti, alle tecnologie e alle infrastrutture utilizzate durante lo sviluppo di un progetto. Questi rischi possono derivare da incompatibilità software, malfunzionamenti hardware, limitazioni delle tecnologie adottate, aggiornamenti non previsti, vulnerabilità di sicurezza o difficoltà nell'integrazione con sistemi esterni. Se non gestiti correttamente, possono compromettere le prestazioni, l'affidabilità e l'efficacia del prodotto finale.
- *Rischi di capitolato*: 
  riguardano le incertezze e le problematiche derivanti dalla definizione, interpretazione e gestione dei requisiti del progetto. Questi rischi possono includere ambiguità o incompletezza delle specifiche, modifiche frequenti ai requisiti, disallineamento tra le aspettative del committente e l'implementazione, o difficoltà nella comprensione delle richieste. Una gestione inefficace di questi aspetti può portare a ritardi, aumento dei costi e necessità di revisioni significative nel progetto.
- *Rischi finanziari*:
  I rischi finanziari sono le incertezze legate ai costi e alle risorse economiche necessarie per 
  lo sviluppo del progetto.
== Denominazione dei rischi
Ogni rischio presentato di seguito è distinto univocamente da un codice nel seguente modo:
#align(center)[#strong[R[Tipo]\_[identificativo]]]
Dove:
- *R*: indica che si tratta di un rischio
- *Tipo*: specifica la categoria del rischio
  - *I*: rischio interno
  - *T*: rischio tecnologico
  - *C*: rischio capitolato
  - *F*: rischio finanziario
- *identificativo*: numero progressivo che inizia da 1 e si resetta per ogni tipo di rischio


#show figure: set block(breakable: true)
#pagebreak()

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
    [Una comunicazione inefficace tra i membri del team può causare ritardi nelle attività e compromettere la consegna del capitolato],
    [Ogni membro del team deve mantenere un coinvolgimento attivo nel progetto, restando aggiornato su ogni fase dello sviluppo. In caso di assenze prolungate o inattività di alcuni membri, sarà loro responsabilità sollecitarne il contributo per garantire il rispetto degli impegni.
    \
    \
    Per facilitare la comunicazione e la gestione delle attività, verranno utilizzate piattaforme di collaborazione come GitHub, WhatsApp e Discord per organizzare incontri e suddividere il lavoro in modo efficiente.
    ],
    
    [RI_003],
    [*Disponibilità dei membri del gruppo di progetto*],
    [A causa di impegni personali o lavorativi, alcuni membri del team potrebbero essere indisponibili in determinati periodi, causando un rallentamento nel raggiungimento degli obiettivi prefissati.],
    [Il team si impegnerà a suddividere le attività in modo strategico, assegnando le task in base alla loro priorità e alla disponibilità dei membri, così da minimizzare eventuali ritardi.],
    [RI_004],
    [*Contrasti interni al gruppo di progetto*],
    [Durante lo svolgimento del progetto potrebbero emergere conflitti tra i membri del team, causando rallentamenti nel completamento delle attività.],
    [I membri del gruppo cercheranno di risolvere i contrasti attraverso una discussione collettiva. Se ciò non fosse sufficiente, il responsabile del progetto interverrà per mediare il conflitto, eventualmente ricorrendo a sondaggi per facilitare la decisione. Qualora il problema persistesse, si consulterà il docente o il committente per trovare una soluzione definitiva.],
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
    [L'utilizzo di modello di linguaggio di grandi dimensioni (LLM) potrebbe comportare tempi di risposta elevati, specialmente su macchine con risorse hardware limitate, compromettendo l'esperienza d'uso.],
    [Consentire all'utente di selezionare il modello LLM più adatto alle capacità del proprio sistema, offrendo opzioni più leggere per dispositivi meno performanti.],
    [RT_002],
    [*Obsolescenza tecnologica*],
    [L'uso di tecnologie non aggiornate o poco supportate potrebbe rendere difficile la manutenzione e l'espansione del progetto nel tempo.],
    [Selezionare tecnologie con ampio supporto da parte della community, monitorare regolarmente gli aggiornamenti e mantenere la documentazione aggiornata. Condurre test di regressione per ogni aggiornamento.],
    [RT_003],
    [*Problemi di compatibilità tra ambienti*],
    [Il progetto potrebbe comportarsi in modo diverso a seconda del sistema operativo o delle dipendenze installate, creando difficoltà nella distribuzione.],
    [Utilizzare containerizzazione (Docker) o ambienti virtuali per standardizzare l'esecuzione del software su diverse piattaforme.],
    [RT_004],
    [*Mancanza di conoscenze*],
    [Alcuni membri del team potrebbero non possedere le competenze necessarie per svolgere il progetto in modo efficace.],
    [Ogni membro sarà responsabile di colmare le proprie lacune attraverso studio autonomo. Inoltre, i membri più esperti forniranno supporto agli altri tramite spiegazioni individuali o collettive, oltre alla creazione di documentazione, riassunti e manuali, al fine di ridurre i tempi di apprendimento e minimizzare i ritardi nelle attività.
    \
    Inoltre, verranno utilizzate tecnologie di accentramento delle conoscenze come 'Notion' o 'Google Drive'.],
    [RT_005],
    [*Sicurezza dei dati e delle API*],
    [L'integrazione con API esterne e l'elaborazione di dati sensibili potrebbero esporre il sistema a vulnerabilità di sicurezza.],
    [Implementare protocolli di autenticazione sicuri, crittografare i dati sensibili e seguire best practice di cybersecurity.],
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
    [Il capitolato potrebbe contenere indicazioni poco chiare o ambigue, rendendo difficile la comprensione delle reali esigenze del committente],
    [Organizzare incontri periodici con il committente e il docente per chiarire eventuali dubbi e allineare le aspettative.],
    [RC_002],
    [*Modifiche al capitolato in corso d'opera*],
    [Durante lo sviluppo, i requisiti inizialmente concordati potrebbero subire modifiche a causa di fattori interni (nuove esigenze del team) o esterni (richieste del committente). Questo può portare a ritardi, aumento dei costi o necessità di rivedere parti già sviluppate.],
    [Gli stakeholder dovranno concordare preventivamente un processo per la gestione delle modifiche ai requisiti. Sarà inoltre necessario aggiornare il preventivo e gli accordi precedentemente stabiliti per garantire il rispetto delle scadenze e delle risorse disponibili.],
    [RC_003],
    [*Disallineamento tra capitolato e vincoli tecnici*],
    [Il capitolato potrebbe richiedere funzionalità difficili da implementare a causa di limitazioni tecniche o di strumenti disponibili.],
    [Effettuare un'analisi di fattibilità prima di iniziare lo sviluppo e proporre eventuali alternative al committente.],
    [RC_004],
    [*Divergenze tra le aspettative del committente e l'interpretazione del gruppo*],
    [Il team di progetto potrebbe interpretare diversamente alcune sezioni del capitolato rispetto alle intenzioni originali del committente.],
    [Mantenere una comunicazione costante con il committente e il docente per confermare le scelte progettuali prima di implementarle.],
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
  [Superamento budget],
  [Rallentameni dovuti a cause interne o esterne potrebbero portare al superamento del monte ore preventivato],
  [Monitorare correttamente e costantemente il lavoro dei membri del gruppo attraverso strumenti di rendicontazione oraria],
  ),
  caption: [Rischi finanziari]
  )

== Tabella riassuntiva
Nella seguente tabella vengono descritti: 
- L'*occorrenza*: rappresenta la probabilità che il rischio si verifichi. Un rischio con alta occorrenza è molto probabile e deve essere monitorato con attenzione, mentre un rischio con bassa occorrenza è meno preoccupante, ma comunque da considerare.
- L'*impatto*: misura la gravità delle conseguenze che il rischio potrebbe avere sul progetto. Un rischio con alto impatto può compromettere seriamente il raggiungimento degli obiettivi, mentre un impatto basso causa problemi gestibili senza significativi rallentamenti o costi aggiuntivi.
- L'*efficacia*: indica quanto le azioni di mitigazione adottate siano in grado di ridurre l'impatto del rischio. Un valore alto significa che le contromisure sono efficaci e il rischio è ben gestito, mentre un valore basso indica che il rischio rimane problematico nonostante gli sforzi.

I valori nella tabella possono quindi dividersi in "basso", "medio" o "alto" come descritto sopra. 


 
== Tabella riassuntiva
Nella seguente tabella vengono descritti: 
- L'*occorrenza*: rappresenta la probabilità che il rischio si verifichi. Un rischio con alta occorrenza è molto probabile e deve essere monitorato con attenzione, mentre un rischio con bassa occorrenza è meno preoccupante, ma comunque da considerare.
- L'*impatto*: misura la gravità delle conseguenze che il rischio potrebbe avere sul progetto. Un rischio con alto impatto può compromettere seriamente il raggiungimento degli obiettivi, mentre un impatto basso causa problemi gestibili senza significativi rallentamenti o costi aggiuntivi.
- L'*efficacia*: indica quanto le azioni di mitigazione adottate siano in grado di ridurre l'impatto del rischio. Un valore alto significa che le contromisure sono efficaci e il rischio è ben gestito, mentre un valore basso indica che il rischio rimane problematico nonostante gli sforzi.

I valori nella tabella possono quindi dividersi in "basso", "medio" o "alto" come descritto sopra. 

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
    [RT_003], [*Problemi di compatibilità tra ambienti*], [Basso], [Alto], [Alto],
    [RT_004], [*Mancanza di conoscenze*], [Medio], [Medio], [Alto],
    [RT_005], [*Sicurezza dei dati e delle API*], [Medio], [Alto], [Medio],
    [RC_001], [*Ambiguità dei requisiti*], [Basso], [Alto], [Medio],
    [RC_002], [*Modifiche al capitolato in corso d'opera*], [Basso], [Alto], [Alto],
    [RC_003], [*Disallineamento tra capitolato e vincoli tecnici*], [Basso], [Medio], [Alto],
    [RC_004], [*Divergenze tra le aspettative del committente e l'interpretazione del gruppo*], [Basso], [Alto], [Alto],
    [RF_001], [*Superamento budget*], [Medio], [Alto], [Medio],
  ),
  caption: [Tabella riassuntiva dei rischi],
)
= Modello di sviluppo

La scelta di un approccio metodologico adeguato garantisce che le attività del progetto siano organizzate in modo strutturato e produttivo. Vengono stabiliti i principi e le tecniche operative per assicurare un avanzamento coerente con gli obiettivi.

== Scelta del Modello

Per questo progetto è stato adottato il modello di Agile, che consente lo sviluppo del prodotto attraverso la suddivisione del periodo temporale in sprint. Questa scelta permette di migliorare la gestione dei rischi e di adattare lo sviluppo in base ai feedback ricevuti.

- Ogni sprint produce un incremento funzionale e significativo e rende possibile una verifica continua dei risultati.

- Sprint planning: ogni sprint viene pianificato in anticipo, definendo gli obiettivi e i task principali durante la riunione interna di inizio sprint.

- La modularità del plug-in facilita lo sviluppo indipendente delle diverse componenti, riducendo il rischio di blocchi e migliorando l'efficienza del lavoro di gruppo.

=== Gestione del backlog

Un aspetto importante del modello agile è il backlog. Esso costituisce un elenco di attività, requisiti e funzionalità da sviluppare all'interno del progetto. Rappresenta la lista di cose da fare ed è costantemente aggiornata e riorganizzata in base alle priorità del progetto.

Il backlog viene gestito attraverso GitHub Projects, utilizzando le issue per tracciare le attività da svolgere. Ogni elemento del backlog può includere nuove aggiunte, bug da risolvere o miglioramenti dalle verifiche fatte. Viene quindi creata una issue con descrizione chiara e presa in carico da un membro del team. Durante lo sprint planning, le issues più prioritarie vengono decise e suddivise, vengono inoltre chiariti punti ambigui e programmate le attività di quel periodo.

=== Retrospective

Al termine di ogni sprint, viene pianificata una retrospective per analizzare l'andamento del lavoro svolto, identificare possibili miglioramenti e fare il punto della situazione di cosa manca. Durante questa fase, ogni membro del team presenta quanto fatto, quali difficoltà sono emerse e quali aspetti richiedono un'ulteriore approvazione.

La retrospective viene svolta nel seguente modo: si analizzano gli obiettivi dello sprint appena concluso, si valutano i risultati ottenuti e si raccolgono feedback. Gli eventuali problemi riscontrati o ritardi nello sviluppo vengono discussi in modo collaborativo e vengono proposte soluzioni da applicare nei prossimi sprint.

== Strumenti e Metodologie

Per supportare il processo di sviluppo e garantire una gestione efficace, vengono utilizzati i seguenti strumenti:

- GitHub Projects per la gestione dei task, la pianificazione delle attività e la verifica continua dell'avanzamento del progetto.

- Discord come strumento di comunicazione per gli incontri previsti nei periodi di sprint

- Notion per la formazione del gruppo, verranno creati e divisi per argomento dei file "appunti" con lo scopo di allineare tutti i membri del gruppo su quanto studiato e avere una base equa di conoscenze

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
  [*Milestone*],[*Data*],[*Obiettivi raggiunti*],
  [Fine analisi iniziale],[Dicembre 2024/Gennaio 2025],[Conclusione della definizione dei requisiti.],
  [Progettazione completata],[Marzo 2025],[],
  [Proof of Concept completato],[Marzo 2025],[],
  [Sviluppo completato],[Marzo 2025/Aprile 2025],[Implementazione di tutte le funzionalità.],
  [Testing e validazione completati],[Aprile 2025],[Prodotto pronto per il rilascio.],
  [Consegna finale],[Aprile 2025],[Consegna al cliente],

), 
caption: "Tabella riassuntiva delle fasi del progetto"
)


= Preventivo
== Descrizione del Preventivo

Il preventivo include una distribuzione dettagliata delle ore lavorative assegnate ai vari ruoli, una stima dei costi associati e le giustificazioni delle scelte effettuate.

- *Totale Ore Lavorative:* 540
- *Costo Totale Stimato:* 10.980,00 €

== Ruoli e Distribuzione delle Ore
La seguente tabella riporta il costo orario per ciascun ruolo e la distribuzione delle ore lavorative previste per ogni membro del team.
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
Nella seguente sezione verrà preventivato per intero il prospetto orario ed economico di ogni sprint. Per tale preventivo abbiamo considerato il periodo dal 16/11/2024 al 16/04/2025, suddividendo quindi il tempo restante per il progetto in 10 sprint bisettimanali, dove vengono riportati i ruoli con associati i relativi orari e costi preventivati.

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
*Periodo:* 21/02/2025 - 07/03/2025
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
*Periodo:* 08/03/2025 - 20/03/2025 
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
*Periodo:* 02/04/2025 - 08/04/2025
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
*Periodo:* 9/03/2025 - 16/04/2025
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

= Consuntivo di periodo
Questa sezione confronta la pianificazione iniziale con i risultati effettivi ottenuti durante lo sviluppo. Si analizzano eventuali variazioni di tempi e costi, insieme alle cause che le hanno determinate e alle azioni correttive adottate.

== RTB

Nella seguente sezione verrà sviluppata nel dettaglio la suddivisione del periodo temporale che intercorre tra l'assegnazione dell'appalto e la consegna del RTB. Nelle varie fasi verrà elencato il periodo di svolgimento, gli obiettivi e i ruoli. Ogni sprint è bisettimanale e prevede un incontro interno a metà sprint, per fare il punto della situazione e vedere eventuali problemi, un secondo incontro verrà fatto a fine di ogni sprint per verificare i risultati ottenuti e programmare i compiti del successivo sprint. 


=== Sprint 1 - Acquisizione di conoscenze

Periodo: 16/11/2024 - 30/11/2024

In questo sprint iniziale, data la scarsa conoscenza delle tecnologie richieste, viene predisposto un periodo di studio di esse con lo scopo di formazione del gruppo.

==== Obiettivo

L'obiettivo è l'acquisizione delle conoscenze utili per lo svolgimento milestone RTB usando _Notion_#super[G] per formare tutti i membri del progetto, in modo da raggiungere un livello di conoscenza uniforme.

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

==== Attività

Il completamento di questo sprint prevede la preparazione della repository per la documentazione della milestone RTB e l'acquisizione della conoscienza da parte del gruppo delle tecnologie da usare. Quindi verranno fatti dei test in locale di varie tecnologie concordate con il proponente e di vari LLM, testandone i parametri, risultati e chiamate API per prendere familiarità con queste tecnologie.

=== Sprint 2 - Analisi e documentazione

Periodo: 01/12/2024 - 20/12/2024

In questo sprint ci si è focalizzati sulla documentazione, siccome il gruppo non aveva ancora acquisito
familitarità con l'omonimo processo, ci si è concentrati sulla creazione di un template comune a tutti 
i documenti e di una versione iniziale di essi. 

==== Obiettivo

L'obiettivo di questa fase è appunto l'inizio dello sviluppo dei documenti riguardanti la milestone RTB, definendone inizialmente la struttura e le sezioni principali. I documenti sono:

- *Analisi dei Requisiti*: compilato dagli Analisti, contiene i casi d'uso analizzati e i requisiti del prodotto

- *Piano di Progetto*: compilato dal Responsabile e dagli Amministratori, contiene la divisione delle risorse, il piano di preventivo e consuntivo e la pianificazione dei periodi

- *Piano di Qualifica*: compilato dagli Amministratori e Progettisti, contiene i modelli, indici e metriche scelte per raggiungere gli obiettivi di economicità

- *Norme di Progetto*: compilato dagli Amministratori, contiene le principali decisioni riguardanti il way of working

- *Glossario*: il suo contenuto viene aggiornato in parallelo con il resto dei documenti, contiene una definizione chiara di tutti i termini tecnici ambigui presenti nei documenti

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

==== Attività

L'attività assegnata al secondo sprint consiste principalmente nella scrittura della documentazione:
per ogni documento sopracitato viene redatta una struttura iniziale al fine di suddividere poi assegnando poi le sezioni rimanenti ai relativi ruoli di competenza. Trattandosi di una stesura iniziale del documento verranno migliorati e integrati nei successivi sprint.


=== Sprint 3 - Knowledge Baseline

Periodo: 21/12/2024 - 03/01/2024

Questo sprint è dedicato alla continuazione dello sprint precedente, con particolare attenzione alla stesura dell'analisi dei requisiti a seguito della riunione con il proponente e delle decisioni prese durante alcuni incontri svolti durante questo periodo. Vengono descritte in ottica più approfondita anche le metriche riguardanti i test e il codice.

==== Obiettivo

L'obiettivo questo sprint, oltre alla continuazione della documentazione, è quindi lo svolgimento di un'analisi delle tecnologie necessarie
per lo svolgimento dell'analisi dei requisiti.

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

==== Attività

Le attività principali sono:

- Scrittura delle metriche del PdQ e con formule dei vari indici, soglie limite e relative tabelle.
- Applicazione del nuovo template ai documentazione
- Avanzamento analisi dei requisiti

=== Sprint 4 - Baseline PoC

Periodo: 04/01/2025 - 17/01/2025

Questo sprint prevede la progettazione e lo sviluppo di una bozza del PoC, il quale verrà sviluppato parallelamente nel frontend e nel backend. Siccome si tratterà di una bozza, l'integrazione tra frontend e backend avverrà in un secondo momento.


non ho messo alcune cose tipo la continuazione della stesura della documentazione
==== Obiettivo

L'obiettivo è avere una grafica del plug-in funzionante integrata con le chiamate API in grado di soddisfare le prime richieste di test su requisiti d'esempio.

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

==== Attività

Oltre alla continuazione della documentazioe, le attività da svolgere per il completamento di questo sprint sono:

- Sviluppo interfaccia grafica
- Sviluppo chiamate API ai modelli LLM
- Integrazione codice in preparazione alla fase di test

=== Sprint 5 - Baseline Documentazione

Periodo: 07/02/2025 - 20/02/2025

In questo sprint viene portata avanti la documentazione, cercando di arrivare al completamento dell'AdR in
vista dei colloqui con il Professor Cardin e per la presentazione al proponente.

==== Obiettivo

L'obiettivo è il completamento dell'AdR, con particolare attenzione alla definizione dei casi d'uso e dei requisiti.
Inoltre sarà necessario anche ultimare la documentazione in vista della revisione della milestone RTB.

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

==== Attività

L'attività che verranno svolte per questo sprint consiste principalmente nell'avanzamento della stesura della documentazione, con particolare attenzione all'AdR.

=== Sprint 6 - Verifica finale del prodotto e documentazione

Periodo: 21/02/2025 - 7/03/2025

Questo sprint è focalizzato sulla validazione del PoC e della documentazione. Comprende la verifica della conformità del sistema ai requisiti, la correzione di eventuali anomalie e la preparazione della versione 1.0.0 della documentazione. 

==== Obiettivo

L'obiettivo è assicurare che il prodotto e la documentazione siano pronti per il rilascio. Verrà richiesto un incontro con l'azienda per mostrare il PoC completo e ottenere feedback sul miglioramento.

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

==== Attività

Le attività da svolgere sono:

- Ultimare il PoC, correggendo eventuali bug e migliorando l'usabilità
- Verificare l'ultima versione di tutta la documentazione integrata delle novità dallo sprint precedente
- Fissare un incontro con l'azienda

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