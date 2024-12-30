#import "../../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Piano di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed", "Maria Fuensanta Trigueros Hernandez", ),
  verifica: ("Ion Cainareanu" , "Maria Fuensanta Trigueros Hernandez",),
  approvazione: ("Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez"),
  uso: "Esterno",
  version: "0.1.0",
  date: "23/11/2024",
  versionamento: (
    "0.2.1", "23/12/2024", "Maria Fuensanta Trigueros Hernandez", "Sviluppo di sezioni incomplete", "", "",
    "0.2.0", "19/12/2024", "Maria Fuensanta Trigueros Hernandez", "Creazione della struttura e avvio della stesura del documento", "Ion Cainareanu", "Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez", "Maria Fuensanta Trigueros Hernandez",
  )
)

= Introduzione 

== Scopo del documento

Questo documento descrive la pianificazione dello sviluppo del plugin Requirement Tracker per Visual Studio Code. Ha lo scopo di fornire un quadro chiaro per comprendere come verrà realizzato il progetto, comprese le strategie, i rischi e le risorse necessarie per l'implementazione. 

== Scopo del capitolato
Il capitolato scelto si concentra sullo sviluppo di un plug-in avanzato per il tracciamento dei requisiti all'interno di Visual Studio Code. Questo strumento è progettato per semplificare il lavoro di analisti, progettisti e sviluppatori, migliorando la gestione dei requisiti durante il ciclo di vita di un progetto software. 

== Struttura del documento

Il contenuto del documento è organizzato nelle seguenti sezioni:

- Analisi dei rischi: identificazione e valutazione dei possibili problemi che possono insorgere durante lo sviluppo.

- Modello di sviluppo: descrizione delle metodologie e degli approcci adottati.

- Pianificazione: dettagli sulle fasi, le risorse e i tempi necessari per la realizzazione del progetto.

- Preventivo:  dettagli sui costi stimati per ogni fase del progetto, evidenziando risorse e allocazioni di budget.

- Consuntivo di periodo: dettagli sule variazioni di pianificazione e costi rispetto alle stime iniziali, spiegando le cause degli scostamenti e le misure correttive adottate.

- Caso di studio: esempio pratico di utilizzo del plugin in un ambiente reale.

- Mitigazione dei rischi: illustra le strategie applicate per ridurre o eliminare l'impatto dei rischi identificati.

- Conclusioni: riflessione sui risultati attesi e sulla fattibilità del progetto.


== Glossario
Per evitare possibili ambiguità, è stato incluso un glossario per definire i termini tecnici rilevanti utilizzati nei documenti presentati. I termini sono evidenziati e spiegati nel file “Glossario”. 

== Riferimenti

=== Riferimenti normativi
- File Norme di Progetto


=== Riferimenti informativi

= Analisi dei rischi
Questa sezione descrive i rischi potenziali associati al progetto e le relative misure di mitigazione. L'analisi dei rischi consente di identificare e mitigare i potenziali problemi in una fase iniziale del progetto.  Ogni rischio è valutato in termini di probabilità di accadimento e di impatto potenziale.

== Rischi tecnologici

Disponibilità e compatibilità con le API di IA
- Descrizione: l'integrazione di modelli di IA tramite API REST può fallire a causa dell'accessibilità o della compatibilità.
- Probabilità: media
- Impatto: alto
- Precauzioni: progettare un livello di astrazione, eseguire test controllati.

Limitazioni dei modelli di intelligenza artificiale
- Descrizione: i modelli di IA potrebbero non elaborare dati specifici o di bassa qualità.
- Probabilità: media
- Impatto: medio
- Precauzioni: Addestrare i modelli con dati pertinenti, eseguire convalide manuali.

Compatibilità con Visual Studio Code
- Descrizione: le modifiche alle versioni di Visual Studio Code potrebbero causare incompatibilità.
- Probabilità: media
- Impatto: alto
- Precauzioni: eseguire test di regressione , mantenere aggiornata la documentazione.


== Rischi legati ai requisiti

Ambiguità dei requisiti

- Descrizione: requisiti mal definiti rendono difficile l'implementazione.
- Probabilità: alta
- Impatto: alto
- Precauzioni: utilizzare validatori automatici, condurre revisioni collaborative.


Modifiche frequenti dei requisiti
- Descrizione: le continue modifiche generano rilavorazioni e aumentano i costi.
- Probabilità: alta
- Impatto: medio
- Precauzioni: progettare un'architettura modulare.


== Rischi organizzativi

Mancanza di coordinamento del team
-Descrizione: le riunioni poco frecuenti possono influenzare la comunicazione.
- Probabilità: media
- Impatto: alto
- Precauzioni: programmare riunioni regolari, utilizzare strumenti di collaborazione.

Dipendenza da risorse chiave
-Descrizione: l'assenza di risorse tecniche o umane essenziali causa ritardi. 
- Probabilità: media
- Impatto: alto
- Precauzioni: documentare i processi critici.
== Rischi legati alle persone 

Disponibilità del team
- Descrizione: Gli impegni esterni dei membri del team potrebbero influire negativamente sulla loro capacità di partecipare al progetto.
- Probabilità: media
- Impatto: alto
- Precauzioni: Pianificare un programma flessibile che consenta di adattarsi agli impegni dei membri e assegnare priorità ai compiti fondamentali.

Mancanza di competenze tecniche
- Descrizione: Alcuni membri del team potrebbero non possedere una conoscenza approfondita delle tecnologie chiave necessarie per il progetto.
- Probabilità: alta
- Impatto: medio
- Precauzioni: fornire formazione e materiale didattico al team.

== Rischi finanziari
Superamento dei costi di sviluppo
- Descrizione: le funzionalità avanzate possono superare il budget.
- Probabilità: media
- Impatto: medio
- Precauzioni : definire l'ambito dell'MVP, dare priorità alle funzionalità essenziali.


== Rischi per l'utente finale

Bassa usabilità del plug-in
- Descrizione: un'interfaccia non intuitiva scoraggia l'adozione.
- Probabilità: media
- Impatto: alto
- Precauzioni: eseguire test di usabilità fin dalle prime fasi.

== Piano di contingenza
Manca il piano di contingenza


= Modello di sviluppo
La scelta di un approccio metodologico adeguato garantisce che le attività del progetto siano organizzate in modo strutturato e produttivo. Vengono stabiliti i principi e le tecniche operative per assicurare un avanzamento coerente con gli obiettivi.
= Pianificazione
La pianificazione permette di suddividere il progetto in fasi operative chiare, definendo risorse, tempistiche e responsabilità. Questo approccio assicura il coordinamento tra i membri del team e il rispetto delle scadenze.

== Fasi del progetto

=== Analisi iniziale e definizione dei requisiti

- Periodo: Novembre 2024 - Dicembre 2024

- Obiettivi:
+ Identificare e analizzare i requisiti funzionali e non funzionali.
+ Creare una visione condivisa del progetto con gli stakeholder.

- Attività principali:
+ Conduzione di incontri iniziali con il cliente per chiarire i requisiti.
+ Redazione dei documenti iniziali: Analisi dei Requisiti, Glossario e Norme di Progetto.
+ Creazione del piano preliminare delle attività.

#table (
  columns: 3;
  [*Milestone*],[*Data*],[*Obiettivi raggiunti*],
  [Fine analisi iniziale],[Dicembre 2024/Gennaio 2025],[Conclusione della definizione dei requisiti.],
  [Progettazione completata],[Marzo 2025],[],
  [Proof of Concept completato],[Marzo 2025],[],
  [Sviluppo completato],[Marzo 2025/Aprile 2025],[Implementazione di tutte le funzionalità.],
  [Testing e validazione completati],[Aprile 2025],[Prodotto pronto per il rilascio.],
  [Consegna finale],[Aprile 2025],[Consegna al cliente],

)
= Preventivo
La definizione del budget è cruciale per allocare correttamente le risorse e mantenere il progetto nei limiti economici previsti. Una stima accurata consente di monitorare i costi e di ottimizzare gli investimenti.
= Consuntivo
Questa sezione confronta la pianificazione iniziale con i risultati effettivi ottenuti durante lo sviluppo. Si analizzano eventuali variazioni di tempi e costi, insieme alle cause che le hanno determinate e alle azioni correttive adottate.
= Organigramma
La struttura organizzativa definisce i ruoli e le responsabilità dei membri del team, facilitando la comunicazione e la gestione delle attività. Una chiara assegnazione dei compiti aiuta a ottimizzare la collaborazione e a garantire l’efficienza operativa.
= Mitigazione dei Rischi 
Questa sezione dettaglia le strategie messe in atto per gestire i rischi individuati. Vengono evidenziate le azioni preventive adottate per ridurre l’impatto dei problemi durante lo sviluppo.
== Rischi tecnologici
Disponibilità e compatibilità con le API di IA
- Descrizione: L'integrazione con modelli di IA potrebbe fallire a causa di limitazioni tecniche.
- Mitigazione: Creare un livello di astrazione tra il sistema e le API esterne per ridurre la dipendenza e pianificare test periodici per garantire l'affidabilità.

Compatibilità con Visual Studio Code
- Descrizione: Le modifiche a Visual Studio Code potrebbero causare incompatibilità.
- Mitigazione: Monitorare regolarmente gli aggiornamenti di Visual Studio Code e mantenere la documentazione aggiornata. Condurre test di regressione per ogni aggiornamento.


== Rischi legati ai requisiti
Ambiguità dei requisiti
- Descrizione: Requisiti mal definiti possono complicare l'implementazione.
- Mitigazione: Utilizzare tecniche di elicitation e convalidare regolarmente i requisiti con il cliente. Aggiornare la documentazione con revisioni iterative.

Modifiche frequenti ai requisiti
- Descrizione: Cambiamenti continui ai requisiti possono aumentare i costi e i tempi.
- Mitigazione: Progettare un'architettura modulare e adottare strumenti di versionamento per tracciare e gestire i cambiamenti.

== Rischi organizzativi
Mancanza di coordinamento del team
- Descrizione: La scarsa comunicazione può rallentare il progetto.
- Mitigazione: Utilizzare piattaforme di collaborazione (ad esempio Slack, Trello) per centralizzare le comunicazioni e organizzare riunioni settimanali per aggiornare il progresso del progetto.

Dipendenza da risorse chiave
- Descrizione: L'assenza di membri chiave del team può causare ritardi.
- Mitigazione: Pianificare risorse di backup per i ruoli critici e documentare dettagliatamente i processi.

== Rischi legati al team
Disponibilità del team
- Descrizione: Impegni personali dei membri del team possono influire negativamente sul lavoro.
- Mitigazione: Creare un calendario flessibile e assegnare prioritarie responsabilità critiche a risorse disponibili.

Mancanza di competenze tecniche
- Descrizione: Alcuni membri del team potrebbero non possedere le competenze richieste.
- Mitigazione: Fornire formazione mirata, materiali di apprendimento e sessioni di mentoring per migliorare le competenze del team.

== Rischi finanziari
Superamento dei costi di sviluppo
- Descrizione: Le funzionalità avanzate possono richiedere risorse aggiuntive.
- Mitigazione: Monitorare regolarmente il budget e rivedere le priorità in caso di eccedenze. Concentrarsi sulle funzionalità essenziali per rispettare il budget.


== Rischi per l’utente finale
Bassa usabilità del plug-in
- Descrizione: Interfaccia poco intuitiva potrebbe ridurre l'adozione.
- Mitigazione: Condurre test di usabilità con utenti target e incorporare il feedback per migliorare il design dell'interfaccia e l'esperienza utente.

