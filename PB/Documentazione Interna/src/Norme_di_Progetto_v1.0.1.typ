#import "../../../assets/template_v2.0.0.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Norme di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: (""),
  approvazione: ("",),
  uso: "Interno",
  version: "1.0.1",
  date: "23/11/2024",
  versionamento: (
    "1.1.0", "14/04/2025", "Malik Giafar Mohamed", "Introduzione modifiche derivanti dalla correzione dell'RTB", "",
    "1.0.1", "07/03/2025", "Malik Giafar Mohamed", "Inserimento data di ultimo accesso nelle fonti", "",
  )
)
= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire in modo dettagliato le _best practice_#super("G")
e il _way of working_#super("G") del nostro gruppo per il progetto al fine di garantire qualità e coerenza nel lavoro svolto. Il documento sarà quindi soggetto a modifiche e integrazioni durante il corso del progetto, in particolare durante le fasi di analisi e progettazione, e quindi non può essere considerato come definitivo.

== Scopo del prodotto
Il prodotto, un _plug-in_#super("G") per _Visual Studio Code_#super("G") chiamato _"Requirement Tracker"_#super("G"),
è progettato per automatizzare il _tracciamento dei requisiti_#super("G") nei progetti software complessi,
con un focus particolare sull'ambito embedded. L'obiettivo principale è migliorare la qualità
e la chiarezza dei requisiti, fornendo suggerimenti basati sull'analisi di un'_intelligenza artificiale_#super("G"),
riducendo al contempo i tempi e gli errori legati alla verifica manuale dell'implementazione nel codice
sorgente. Il plug-in adotta un'architettura modulare che consente un'estensibilità semplice, rendendolo
facilmente adattabile a nuove funzionalità o esigenze future.

== Glossario
I termini ambigui che necessitano di una spiegazione sono contrassegnati da una #super("G") come apice alla loro prima occorrenza nei documenti. Tutti i termini da glossario sono riportati in ordine alfabetico
nell'omonimo documento.

== Riferimenti
*Riferimenti Normativi* 
- Presentazione del capitolato *Requirement Tracker - Plug-in VS Code*
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf
- Standard ISO/IEC 12207:1995
  - https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
- _Piano di Qualifica_#super("G")

*Riferimenti Informativi*
- Materiale didattico del corso di Ingegneria del Software
  - https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/
- Documentazione _GitHub_#super("G"):
  - https://help.github.com/en/github #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
- Documentazione _git_#super[G]:
  - https://git-scm.com/docs #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
- Documentazione Typst:
  - https://typst.app/docs/ #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
- Documentazione Visual Studio Code:
  - https://code.visualstudio.com/docs #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
  - https://code.visualstudio.com/api #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
- Documentazione _Ollama_#super("G"):
  - https://github.com/ollama/ollama/tree/main/docs #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
- Documentazione _NodeJS_#super("G"):
  - https://nodejs.org/en/docs/ #h(1fr)#text(size: 8pt)[ultumo acceso: 5/04/2025 13:06]
= Processi Primari
==  Fornitura
=== Descrizione
Il processo di _fornitura_#super("G") determina le procedure e le risorse necessarie per gestire
e garantire la consegna del prodotto. Tale processo è iniziato con l'aggiudicazione dell'appalto da parte di _NextSoft_#super("G").
=== Comunicazione con il proponente
Il proponente#super("G") mette a disposizione alcuni canali di comunicazione
tramite i quali chiarire eventuali dubbi e stabilire nuovi incontri telematici.
La cadenza dei meeting non è regolare, ma viene fissata in base alle necessità del gruppo
o dell'azienda. I meeting sono tenuti da uno o più membri del team, i quali hanno il compito
di riportare le informazioni per cui è necessario un confronto con il proponente.
Tra i motivi di discussione figurano:
- Chiarimenti relativi a requisiti o vincoli del _capitolato_#super("G");
- Dubbi sulla gestione delle tecnologie utilizzate;
- Richiesta di feedback su quanto prodotto.

Per ogni colloquio con il proponente verrà steso un resoconto nel _Verbale Esterno_#super("G") che
riporta la data in cui tale incontro è avvenuto. Per ogni _baseline_#super("G"), i verbali redatti
potranno essere visualizzati nella cartella che ne riporta il nome nel repository#super("G") documentale, al percorso: `"NomeBaseline"/Documentazione Esterna/Verbali`.
=== Documentazione fornita
La docuentazione che verrà consegnata al proponente sarà la seguente:
- *Analisi dei Requisiti v2.0.0*: descrive dettagliatamente i requisiti funzionali e non funzionali del progetto. Include una lista dettagliata di requisiti e tutti i _casi d'uso_#super("G") necessari per descrivere al meglio le esigenze del proponente sul prodotto software. Questo documento è fondamentale per comprendere a fondo le necessità del proponente e per fornire una base solida per la progettazione e lo sviluppo del prodotto.

- *Piano di Qualifica v2.0.0*: definisce le strategie e le metodologie di _verifica_#super("G") e _validazione_#super("G") adottate dal gruppo. Include le _metriche_#super("G") di qualità, i _test_#super("G") pianificati e le procedure per garantire che il prodotto finale soddisfi i requisiti. In questo modo si assicura che il prodotto sia conforme agli standard di qualità e che tutte le funzionalità richieste siano implementate correttamente. 

- *Piano di Progetto v2.0.0*: descrive la _pianificazione_#super("G") temporale e le risorse necessarie per completare il progetto. Esso Include gli orari sia preventivati che effettivi di tutta la durata del progetto. Contiene anche una lista dei rischi possibili o già verificati, insieme alla loro _mitigazione_#super("G") e le strategie per affrontare eventuali imprevisti. Inoltre, le informazioni riportate prima verranno integrate in ogni periodo produttivo.   

- *_MVP_*#super[G]: il Minimum Valuable Product, ovvero il prodotto software con le funzionalità di base essenziali che verrà presentato al proponente. Esso dovrà soddisfare i requisiti obbligatori e dimostra la fattibilità delle soluzioni proposte. L'MVP è essenziale per ottenere il feedback del proponente e per garantire che il prodotto soddisfi le aspettative.

- *Glossario v2.0.0*: documento che contiene la definizione dei termini tecnici e delle sigle utilizzate nel progetto. Questo documento è essenziale per garantire che tutti i membri del gruppo e le parti interessate abbiano una comprensione comune dei termini utilizzati nel progetto.

- *Manuale Utente v1.0.0*: un documento che fornisce istruzioni dettagliate su come utilizzare il prodotto software. Include informazioni su come installare, configurare e utilizzare il plug-in, nonché suggerimenti per migliorare l'esperienza dell'utente. Questo documento è fondamentale per garantire che gli utenti siano in grado di utilizzare il prodotto in modo efficace e per massimizzare il valore del software.

- *Specifica Tecnica v1.0.0*: un documento che fornisce dettagli tecnici sul funzionamento del prodotto software. Include informazioni sull'architettura del sistema, le tecnologie utilizzate e le scelte progettuali adottate. Questo documento è essenziale per garantire che il prodotto sia sviluppato in modo coerente e che tutte le parti interessate abbiano una comprensione chiara delle scelte tecniche effettuate.

=== Strumenti
Per la gestione della fornitura del prodotto, il gruppo utilizzerà tutti gli strumenti nella sezione "Strumenti" dei capitoli "Codifica", "Documentazione", "Gestione della configurazione", "Gestione delle comunicazioni".
== Sviluppo
=== Descrizione
Secondo lo standard ISO/IEC 12207:1995, il processo di sviluppo comprende le attività e i compiti svolti dai _Programmatori_#super("G") e dai _Progettisti_#super("G"). Questo processo include le seguenti attività principali:
- *Analisi dei Requisiti*: definizione e documentazione dei requisiti e dei casi d'uso del sistema, svolta dagli _Analisti_#super("G").
- *Progettazione*: definizione dell'architettura del sistema e delle scelte tecnologiche, a cura dei _Progettisti_#super("G").
- *Codifica*: implementazione del prodotto software basata sulla progettazione, realizzata dai _Programmatori_#super("G").

=== Analisi dei Requisiti
Durante l'attività di _analisi dei requisiti_#super("G"),
svolta dagli _Analisti_#super("G"), vengono definiti e documentati
i requisiti e i casi d'uso del sistema. I requisiti rappresentano
le caratteristiche e le funzionalità che il sistema deve possedere
per soddisfare le esigenze degli utenti e degli _stakeholder_#super("G").
I casi d'uso, invece, descrivono le interazioni tra gli utenti e il sistema,
specificando come il sistema deve comportarsi in risposta a determinate azioni degli utenti.

==== Casi d'uso
Ogni caso d'uso verrà riportato con una denominazione chiara e univoca che identifichi l'azione principale e l'_attore_#super("G") coinvolto, il formato adottato sarà il seguente:
#align(center)[#strong[UC\_[Numero caso d'uso](.[Numero sottocaso o scenario alternativo])\* - Titolo]]

Mentre essi saranno strutturati nel seguente modo : 
- *Denominazione*: codice identificativo del caso d'uso, stabilito come enunciato sopra
- *Diagramma UML*: diagramma per rappresentare graficamente il caso d'uso (opzionale?)
- *Attori Principali*: entità esterne al sistema che interagiscono con esso
- *Precondizioni*: descrivono lo stato del sistema prima del verificarsi del caso d'uso
- *Postcondizioni*: descrivono lo stato del sistema dopo che si è verificato il caso d'uso
- *Descrizione*: breve descrizione del caso d'uso
- *Scenario principale*: elenco puntato che descrive il flusso degli eventi del caso d'uso
- *Estensioni*: elenco puntato di sottocasi d'uso che descrivono il flusso degli eventi del caso d'uso dopo un evento imprevisto che lo ha deviato dal caso principale. Possono non esserci o possono essercene varie.

==== Denominazione dei requisiti
Ogni requisito verrà riportato nel seguente formato:
#align(center)[#strong[R[Classificazione][Tipologia][Identificativo]]]
Dove:

- *R*: indica che si tratta di un requisito
- *Classificazione*: specifica la categoria del requisito
  - *F*: _requisito funzionale_#super("G")
  - *P*: _requisito prestazionale_#super("G")
  - *Q*: _requisito qualitativo_#super("G")
  - *V*: _vincolo_#super("G")
- *Tipologia*: descrive la natura del requisito
  - *D*: _requisito desiderabile_#super("G")
  - *O*: _requisito obbligatorio_#super("G")
  - *F*: _requisito facoltativo_#super("G")
- *Identificativo*: numero intero progressivo e univoco del requisito

=== Progettazione
==== Descrizione
L'attività di progettazione è legata al ruolo dei _Progettisti_#super("G"),
consiste nel definire l'architettura della soluzione considerando i requisiti
derivanti dall'analisi fatta in precedenza. La progettazione si articola in due fasi principali:

- *Progettazione logica*: in questa fase si definisce l'architettura generale del sistema, identificando i componenti principali e le interazioni tra loro stessi e con chi utilizzerà il prodotto. In questa fase vengono documentati i requisiti nel relativo documento e vengono creati i diagrammi UML per rappresentare graficamente le interazioni con il sistema da parte dell'utente.

- *Progettazione di dettaglio*: in questa fase si approfondiscono i dettagli tecnici di ciascun componente, definendo design patterns, best practices e diagrammi UML per descrivere l'architettura delle classi, eventuali diagrammi di attività per descrivere il comportamento di determinati moduli, tutte le scelte riportate dovranno poi essere implementate nella programmazione e riportate nel documento di specifica tecnica.

==== Requirements and Technology Baseline
Lo scopo della _Requirements and Technology Baseline_#super("G") è di fornire una base solida per la progettazione e lo sviluppo del prodotto, dimostrando la fattibilità delle soluzioni proposte e garantendo che le tecnologie scelte siano adeguate per soddisfare i requisiti del proponente.

In questa _baseline_#super("G") dovranno essere forniti:
- *_Proof of Concept_*#super("G"): un prodotto temporaneo creato per dimostrare la fattibilità del capitolato. Verrà realizzato senza seguire le linee guida di progettazione e codifica definite in questo documento, ma con l'obiettivo di dimostrare che il prodotto finale sarà realizzabile.

- *Scelte tecnologiche*: verranno raccolti requisiti, casi d'uso e scelte tecnologiche
  che verranno utilizzate per la realizzazione del prodotto finale. Le scelte tecnologiche comprendono le tecnologie, i linguaggi di programmazione e gli strumenti che verranno utilizzati per lo sviluppo del prodotto. Tutte le scelte dovranno essere riportate nel documento di analisi dei requisiti

- *Diagrammi dei casi d'uso*: verranno utilizzati per rappresentare graficamente le interazioni tra gli utenti e il sistema. Questi diagrammi sono fondamentali per comprendere le esigenze degli utenti e per garantire che il prodotto soddisfi i requisiti richiesti.

==== Product Baseline
Lo scopo della Product Baseline è di fornire un prodotto software che verrà valutato come MVP, ovvero un prodotto software con le funzionalità di base essenziali che verrà presentato al proponente. Esso dovrà soddisfare i requisiti obbligatori definiti nel capitolato, dovrà essere implementato secondo quanto scritto nel documento di specifica tecnica e soprattutto dovrà essere accettato dall'azienda proponente per essere considerato soddisfacente.

Durante l'avanzamento di questa baseline, verranno progettati:
- *Diagrammi delle classi*: verranno utilizzati per descrivere l'architettura delle classi dell'MVP 
- *_Design Patterns_*#super("G"): soluzioni di programmazione che consentono di risolvere problemi ricorrenti in modo rapido ed efficace. I design pattern sono schemi riutilizzabili di progettazione illustrati con diagrammi che ne mostrano la struttura
- *_Test di unità_*#super("G"): ovvero la definizione, l'implementazione e il resoconto dei test eseguiti per verificare che il funzionamento delle classi e dei singoli _moduli_#super("G") che implementano il sistema siano corretti e conformi ai requisiti.

=== Codifica
==== Descrizione
L'attività di _codifica_#super("G") è legata al ruolo dei _Programmatori_#super("G"), consiste nell'implementazione del prodotto software tenendo conto della progettazione.
==== Metodi
I metodi di un progetto verranno considerati accettabili solamente se brevi. Risulta essere una buona pratica in quanto porta notevoli vantaggi quali:
- *Manutenibilità*: sono più facili da mantenere rispetto a metodi lunghi e complessi in quanto il codice è più leggibile e comprensibile. Si ottiene così un codice robusto e meno suscettibile a errori.
- *Leggibilità*: il codice è reso più accessibile a tutti gli sviluppatori che potrebbero doverlo leggere, comprendere o modificare in futuro.
- *Debugging*: se un metodo è breve e semplice, è più facile identificare eventuali _bug_#super("G") o problemi nel codice. Questo rende il processo di _debugging_#super("G") più efficiente.

Per la dichiarazione dei metodi si fa riferimento alla convenzione "_CamelCase_#super("G")" per la scelta del nome del metodo.

==== Univocità dei nomi
Tutte le variabili, i metodi e le classi dovranno avere un nome che li distingua univocamente, per evitare di creare confusione durante la stesura e l'analisi.

==== Ricorsione
La ricorsione può essere un approccio utile per lo sviluppo, però gli svantaggi che porta possono essere maggiori dei vantaggi. È importante valutare attentamente l'utilizzo della ricorsione perché potrebbe comportare alcune sfide e limitazioni, tra cui:
- *Performance*: la ricorsione può comportare una maggiore complessità computazionale rispetto ad altre soluzioni, poiché ogni chiamata ricorsiva comporta l'aggiunta di un nuovo livello alla pila delle chiamate. Quindi aumenta la quantità di memoria utilizzata e ridurre la velocità di esecuzione del programma.
- *Debugging*: la ricorsione richiede maggior attenzione durante l'attività di debugging, questo può rendere più complesso capire dove si verifica un errore o dove un problema sta influenzando il comportamento del programma.

Qualora si dovesse ricorrere alla di ricorsione, la decisione dovrà essere adeguatamente giustificata tramite commenti.
==== Strumenti
Per la codifica del prodotto, i principali strumenti adottati saranno:
- *Visual Studio Code*: in quanto è l'_IDE_#super("G") più consigliato per realizzare proprie estensioni.
- *StarUML*: per la creazione dei _diagrammi UML_#super("G")

= Processi di Supporto
== Documentazione
=== Descrizione
Secondo lo standard ISO/IEC 12207:1995, il processo di documentazione è un processo per registrare le informazioni prodotte da un processo o attività del ciclo di vita. Il processo comprende un insieme di attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono quei documenti necessari a tutte le parti interessate, come manager, ingegneri e utenti del sistema o del prodotto software.
=== Ciclo di vita del documento
Il ciclo di vita di un documento è suddiviso nelle seguenti fasi:
- *Creazione*: in questa fase viene definita la struttura del documento e vengono raccolte le informazioni necessarie per la sua stesura. Viene inoltre assegnato un responsabile per la redazione del documento.

- *Stesura*: redazione o modifica del documento secondo le linee guida e gli standard definiti.

- *Verifica*: una volta completata la stesura, il documento viene sottoposto a verifica da parte di uno o più verificatori. Quest'ultimi controllano la correttezza e la completezza del contenuto, segnalando eventuali errori o incongruenze. Eventualmente è possibile un ritorno alla fase di stesura in caso il documento non venga approvato.

- *Approvazione*: una volta completato il documento, l'approvazione finale deve essere effettuata dal _Responsabile di Progetto_#super("G"). Una volta approvato, il documento viene considerato ufficiale e può essere distribuito o utilizzato come riferimento.

Ogni fase del ciclo di vita del documento è fondamentale per garantire la qualità e l'accuratezza delle informazioni contenute. È importante seguire rigorosamente queste fasi per assicurare che il documento finale soddisfi tutti i requisiti e gli standard previsti.

=== Tipologie di documenti
==== Documenti ad uso Interno
I documenti ad uso interno sono destinati all'uso esclusivo dei membri del gruppo di progetto e del _committente_#super("G"). I principali documenti ad uso interno sono:
- Norme di Progetto
- Verbali interni

==== Documenti ad uso Esterno
I documenti ad uso esterno sono destinati all'uso del committente e agli stakeholders. I principali documenti ad uso esterno sono:
- Analisi dei Requisiti
- Piano di Qualifica
- Piano di Progetto
- Specifica Tecnica
- Manuale Utente
- Glossario
- Verbali esterni

=== Template
Sono stati creati dei _template_#super("G") per facilitare la stesura dei documenti. Ogni template contiene uno stile unico utilizzato da tutti i documenti che lo importano. Possono esistere molteplici template contemporaneamente; attualmente i principali template sono quello della Candidatura e quello dell'RTB.

=== Struttura del documento
==== Frontespizio
La prima pagina di ogni documento contiene le seguenti informazioni:
- Logo del gruppo
- Titolo del documento
- Sottotitolo del documento (opzionale)
- Data di creazione del documento
- Versione del documento
- Nome e cognome dei redattori
- Nome e cognome dei verificatori
- Nome e cognome del responsabile di progetto che ha approvato quel documento
- Uso del documento (interno/esterno)
- Email del gruppo

Tutti i seguenti elementi sono disposti al centro del documento, versione e data di creazione sono disposti in linea; mentre il responsabile di progetto, i redattori e i verificatori sono disposti in righe separate di una tabella creata _ad hoc_#super("G").
==== Registro dei cambiamenti
Il registro delle modifiche contiene la cronologia delle modifiche apportate ai documenti scritti in maniera incrementale. È situato alla seconda pagina del documento sopra all'indice e contiene le seguenti informazioni:
- Versione del documento
- Data della modifica
- Nome e cognome dei redattori
- Breve descrizione della modifica
- Nome e cognome dei verificatori

Le informazioni sono disposte in colonne separate di una tabella creata ad hoc.
==== Indice
L'indice del documento è disposto dopo il frontespizio e prima del corpo del documento, contiene la lista dei capitoli e delle sezioni presenti nel documento, con i relativi numeri di pagina.

==== Corpo del documento
In ogni pagina del documento sono presenti i seguenti elementi:
- *Intestazione*
  - Nome del gruppo: posizionato in alto a sinistra della pagina
  - Titolo del documento: posizionato in alto al centro della pagina
  - Versione del documento: posizionato in alto a destra della pagina
- *Contenuto*
  - Testo del documento
- *Piè di pagina*
  - Numero di pagina: posizionato in basso a destra della pagina

==== Verbali
I verbali sono documenti che riportano le decisioni prese durante le riunioni del gruppo di progetto. I verbali differiscono leggermente nello stile grafico del frontespizio degli altri documenti, e non contengono il registro dei cambiamenti.

=== Norme Tipografiche
==== Nome del documento
Ogni documento ha una denominazione omogenea.
I verbali come nome file hanno la data del relativo incontro in formato YYYY-MM-DD, mentre gli altri documenti saranno denominati nel seguente modo:
#align(center)[#strong[`Nome_File_vX.Y.Z`]]

Per la denominazione dei file si fa riferimento alla convenzione _CamelCase_#super("G"), le parole verranno separate dal carattere "\_" (underscore) e la versione sarà indicata con la lettera "v" seguita dal numero di versione, specificato a sua volta nel paragrafo  del Versionamento.

Per questioni di praticità, questo tipo di nomenclatura vale solo per i documenti ad uso interno ed esterno, non viene applicata ai template, alle immagini e altri tipi di documento. La nomenclatura dei documenti senza versionamento utilizza sempre gli underscore al posto degli spazi, ma senza utilizzare il CamelCase.

==== Stile del testo
Il testo dei documenti deve essere scritto in lingua italiana, e utilizzerà i seguenti formati di testo:
- *Grassetto*: per evidenziare i titoli di sezioni
- *Corsivo*: per far riferimento alla prima occorrenza di un termine del glossario
- *Monospace*: per riportare nomi di file, cartelle o elementi che richiamano alla stesura di codice
==== Elenchi
Gli elenchi seguono le seguenti norme:
- Il simbolo che scandisce ogni elemento di un elenco puntato è il pallino (•), al secondo e terzo livello si trovano rispettivamente il trattino(-) e il triangolo nero (‣); mentre per le liste numerate si utilizzano i numeri arabi, poi le lettere minuscole e infine i numeri romani
- Le voci iniziano per lettera maiuscola
- Le liste del tipo "Termine: descrizione" presentano il termine in grassetto con la prima lettera in maiuscolo
==== Sigle
Nella documentazione verranno utilizzate delle sigle per facilitare l'identificazione di un documento, ruolo o revisione senza doverne scrivere il nome per intero. Queste si sono rivelate utili soprattutto nell'utilizzo di tabelle.

Le sigle utilizzate sono le seguenti:
- Sigle relative ai documenti:
  - *AdR*: Analisi dei Requisiti
  - *NdP*: Norme di Progetto
  - *PdQ*: Piano di Qualifica
  - *PdP*: Piano di Progetto
  - *ST*: Specifica Tecnica
  - *MU*: Manuale Utente
  - *VI*: Verbale Interno
  - *VE*: Verbale Esterno

- Sigle relative alle revisioni:
  - *RTB*: Requirement and Technology Baseline
  - *PB*: Product Baseline
  - *CA*: Customer Acceptance

- Sigle relative ai ruoli:
  - *Re*: Responsabile
  - *Am*: Amministratore
  - *An*: Analista
  - *Prj*: Progettista
  - *Ve*: Verificatore
  - *Prg*: Programmatore

==== Elementi grafici
Vengono seguite le seguenti norme per utilizzare immagini, grafici e tabelle:
- *Immagini*: sono centrate e accompagnate da una didascalia
- *Diagrammi dei casi d'uso*: anch'essi verranno inseriti come immagine nel documento; verranno centrati, numerati e accompagnati da una didascalia
- *Tabelle*: come per i diagrammi, anch'esse sono centrate e numerate, con una didascalia che le descrive. Non è stato definito uno stile grafico standard per le tabelle, dunque è possibile che esso possa essere diverso per i vari documenti
- *Collegamenti ipertestuali*: sono riportati nel documento di colore blu, più precisamente del colore #text(fill: rgb("#005d88"))[\#005d88]
=== Strumenti
Per la stesura dei documenti finora sono stati utilizzati i seguenti strumenti:
- *Typst*: linguaggio di markup simile a Markdown utilizzato per la stesura di documenti
- *Visual Studio Code*: IDE utilizzato per la scrittura del codice sorgente dei documenti
- *Typst.app*: sito web utilizzato come alternativa per la stesura dei documenti
- *GitHub Actions*: utilizzate per la generazione automatica dei file pdf derivanti dal codice sorgente dei documenti
== Gestione della configurazione
=== Descrizione
Secondo lo standard ISO/IEC 12207:1995, il processo di gestione della configurazione è un processo
che applica procedure amministrative e tecniche durante l'intero ciclo di vita del software per:
- identificare, definire e stabilire baseline per gli elementi software di un sistema
- controllare le modifiche e i rilasci degli elementi
- registrare e riportare lo stato degli elementi e delle richieste di modifica
- garantire la completezza, la coerenza e la correttezza degli elementi
- controllare l'archiviazione, la gestione e la consegna degli elementi.

=== Versionamento
Per poter capire lo stato di avanzamento di un prodotto derivante dalle attività del progetto è necessario un identificatore. Il formato del numero di versione utilizzato è il seguente:
#align(center)[#strong[X . Y . Z]]
dove:
- *X*, *Y* e *Z* sono numeri interi positivi
- *X* corrisponde ad una versione approvata dal Responsabile di Progetto. La numerazione parte da 0.
- *Y* indica l'aggiunta di un incremento, senza però essere arrivati ad avere una versione rilasciabile del prodotto. La numerazione parte da 0 e si azzera ad ogni incremento di *X*.
- *Z* viene incrementato ad ogni piccola modifica o correzione, questo tipo di versione assume il nome di _minor_. La numerazione parte da 0 e si azzera ad ogni incremento di *X* o *Y*.
- Per evitare un eccessivo overhead burocratico, le versioni *Z* possono essere verificate insieme alle *Y*, mentre le versioni *X* devono sempre essere verificate prima di nuove modifiche.


=== Struttura delle repository
==== Documenti
La repository utilizzata dal gruppo per la creazione dei documenti è strutturata nel seguente modo:
- `Candidatura`: contiene i documenti relativi alla candidatura del gruppo per il capitolato.
  - `src`: contiene il codice sorgente documenti relativi alla candidatura.
  - `Verbali`: contiene i verbali esterni ed interni delle riunioni relativi alla candidatura.
- `RTB`: contiene i documenti relativi alla milestone RTB, quindi le norme di progetto, il piano di progetto e di qualifica, l'analisi dei requisiti e il glossario.
  - `Documentazione Esterna`: contiene i documenti ad uso interno relative alla milestone RTB.
    - `src`: contiene il codice sorgente dei documenti esterni relativi all'RTB.
      - `img`: contiene i file delle immagini a supporto dei documenti, ogni insieme di immagini è raggruppato in una cartella denominata con la sigla del documento al quale essa è associata.
    - `Verbali`: contiene i verbali esterni fatti con il proponente per discutere del capitolato e del _PoC_#super("G").
  - `Documentazione Interna`: contiene i verbali delle riunioni relative alla milestone RTB.
    - `src`: contiene il codice sorgente dei documenti interni relativi all'RTB.
    - `Verbali`: contiene i verbali delle riunioni relative alla milestone RTB.
- `PB`: contiene i documenti relativi alla milestone PB, quindi la specifica tecnica e il manuale utente.ù
  - `Documentazione Esterna`: contiene i documenti ad uso interno relative alla milestone PB.
    - `src`: contiene il codice sorgente dei documenti esterni relativi alla PB.
      - `img`: contiene i file delle immagini a supporto dei documenti, ogni insieme di immagini è raggruppato in una cartella denominata con la sigla del documento al quale essa è associata.
    - `Verbali`: contiene i verbali esterni fatti con il proponente per discutere del capitolato e del _PoC_#super("G").
  - `Documentazione Interna`: contiene i verbali delle riunioni relative alla milestone PB.
    - `src`: contiene il codice sorgente dei documenti interni relativi alla PB.
    - `Verbali`: contiene i verbali delle riunioni relative alla milestone PB.
- `assets`: contiene tutto ciò che è di supporto alla documentazione, come:
  - file di template per i documenti.
  - il logo del gruppo, utilizzato per tutta la repository.
- `README.md`: file che contiene le informazioni principali della repository, come la struttura e le e la lista dei membri.
La repository è pubblica e si può facilmente trovare al seguente link:
- https://github.com/nextsoftPD/Documenti
==== PoC
La repository del Proof of Concept è strutturata nel seguente modo:
- `API`: contiene il codice sorgente dell'API utilizzate dal plugin.
- `Plugin`: contiene il codice sorgente dell'estensione di Visual Studio Code.
- `TestProject`: contiene un progetto di test utilizzato per verificare il funzionamento del Proof of Concept.
- `README.md`: file che contiene le informazioni principali della repository, come la struttura e le istruzioni per l'utilizzo del Proof of Concept.

La repository è pubblica e si può facilmente trovare al seguente link:
- https://github.com/nextsoftPD/PoC

==== MVP
La repository dell'MVP al momento è privata e accessibile solo dai membri del gruppo in quanto si trova ancora in fase di sviluppo.
=== Branch
Tutte le repository del gruppo si compongono di più _branch_#super[G], suddivisi ad hoc, in modo da garantire una separazione da ciò che è stabile e verificato e ciò che è in fase di sviluppo. Ogni membro può fare delle modifiche in un branch specifico a patto che esse siano relative solo ai _configuration items_#super("G") modificabili in quello specifico branch.

La suddivisione dei branch varia in base allo scopo della repository. 


In nessuna repository è consentito modificare direttamente il branch principale, poiché porterebbe ad un elevato rischio di incongruenze e _merge conflicts_#super("G").
Si potranno applicare modifiche solo tramite il meccanismo di _pull request_#super("G"), con verifica obbligatoria da parte di un verificatore, in modo da garantire che sia sempre presente una versione verificata e corretta del documento, anche se incompleta. Nel caso di una minor invece, la verifica può essere svolta nel momento stesso in cui viene aggiunta una versione "stabile".


Per quanto riguarda cambiamenti minimali (punteggiatura, errori ortografici, ecc.) è permessa la modifica autonoma da parte dei verificatori, a patto che sia solo allo scopo di risolvere errori ortografici o per migliorare la comprensibilità alcune frasi senza modificarne il significato logico. Questa decisione è stata presa al fine di evitare la creazione di numerose minor e di poter proseguire più velocemente con la stesura dei documenti.

La repository dei documenti è suddivisa in più _branch_#super("G") così definiti:

- *`main`*: il branch principale, che contiene l'ultima versione verificata di ogni documento
- *`nome_documento`*: branch che assume il nome del documento a cui fa riferimento, qui sarà possibile modificare solo il documento in questione.
- *`bugfix`*: branch secondario utilizzato per la correzione di errori di vario genere.

Mentre le repository contenenti del codice verranno suddivise nel seguente modo:

- *`main`*: il branch principale, che contiene l'ultima versione verificata del codice sorgente
- *`develop`*: branch secondario utilizzato per lo sviluppo del codice sorgente, qui sarà possibile modificare solo il codice sorgente.
- *`feature`*: branch secondario utilizzato per lo sviluppo di nuove funzionalità, il nome del branch sarà lo stesso della feature sviluppata e sarà eliminato una volta che la funzionalità è stata implementata e verificata.

=== Strumenti
Per il versionamento e la gestione del codice sorgente, si è scelto di utilizzare i seguenti strumenti:

- *Git*: software di controllo versione distribuito, utilizzato per tracciare le modifiche al codice sorgente.
- *GitHub*: piattaforma per la gestione dei repository Git, che consente la collaborazione tra i membri del team e l'hosting del codice sorgente.
- *Visual Studio Code Source Control*: funzionalità integrata in Visual Studio Code per interagire con Git, che permette di gestire le modifiche, effettuare commit, creare branch e risolvere conflitti direttamente dall'IDE.

== Gestione della Qualità
=== Descrizione
Il processo di gestione della qualità ha lo scopo di garantire che il prodotto software sviluppato sia funzionale, affidabile, sicuro, manutenibile e compatibile con l'ambiente in cui deve essere eseguito.
Tale processo definisce un insieme di attività che vengono eseguite all'interno di un progetto per garantire la qualità sia sui prodotti che sui processi, in modo che il prodotto finale risulti conforme agli standard e alle norme in vigore. 
=== Piano di Qualifica
Il documento del  piano di qualifica verrà utilizzato per il _controllo della qualità_#super[G] su processi e prodotti dell'intero progetto, esso definisce le strategie e le metodologie di verifica e
validazione adottate dal gruppo, verrà quindi utilizzato come riferimento per garantire che il processo
di gestione della qualità raggiunga l'_economicità_#super("G").

=== Ciclo di Deming
Per mantenere un'alta qualità di lavoro si è stabilito l'utilizzo del _ciclo di Deming_#super("G") (o PDCA),un approccio continuo e costante al miglioramento della qualità dei processi e dei prodotti, basandosi su uno schema sistematico e iterativo che consiste di quattro punti:

- *Plan*: Si identificano gli obiettivi di miglioramento e si pianificano le azioni necessarie per raggiungerli. Si analizzano i processi attuali, si raccolgono dati e si individuano le aree che necessitano di miglioramenti. Il principale strumento utilizzato per la decisione e la pianificazione delle modifiche saranno i verbali interni.
- *Do*: si implementano le azioni pianificate nella fase precedente. Si eseguono le attività necessarie per apportare i miglioramenti, raccogliendo dati e documentando i risultati ottenuti.

- *Check*: si verificano i risultati ottenuti tramite risultati di test o tramite un'analisi con gli obiettivi stabiliti nella fase di pianificazione. Infine si analizzano i dati raccolti per determinare se le azioni intraprese hanno portato ai miglioramenti desiderati.

- *Act*: si decide se standardizzare le nuove pratiche integrandole nel way of working o apportare ulteriori modifiche. Se i risultati della fase di verifica dimostrano che le azioni intraprese hanno portato a miglioramenti significativi, queste diventano il nuovo standard. Altrimenti, si ritorna alla fase di pianificazione per individuare nuove azioni correttive.

=== Denominazione Metriche e Obiettivi
Metriche e obiettivi sono strumenti importanti per valutare la qualità del prodotto e dei processi. Le metriche sono misurazioni quantitative che forniscono informazioni sui prodotti e sui processi, mentre gli obiettivi sono traguardi specifici che il gruppo si propone di raggiungere. Entrambi sono fondamentali per monitorare le prestazioni e identificare aree di miglioramento.
Le metriche e gli obiettivi vengono definiti in modo da essere misurabili e quantificabili, in modo da poter monitorare i progressi nel tempo. Le metriche possono riguardare vari aspetti del prodotto, come la qualità del codice, la copertura dei test, il numero di bug trovati e risolti, ecc. Gli obiettivi possono riguardare aspetti come la riduzione dei tempi di sviluppo, l'aumento della soddisfazione del cliente o il miglioramento della qualità del prodotto.

La denominazione delle metriche e degli obiettivi nei vari documenti segue questo formato:
#align(center)[#strong[Sigla[Categoria][TipoProdotto][Numero]]]
dove:
- *Sigla*: indica che si tratta di una metrica o un obiettivo
  - *M*: per indicare una metrica
  - *O*: per indicare un obiettivo
- *[Categoria]*: indica a quale categoria appartiene la metrica, e può assumere i seguenti valori:
  - *PD*: per indicare i prodotti
  - *PC*: per indicare i processi
  - *TS*: per indicare i test
- *[TipoProdotto]*: indica se si riferisce a documenti o software ed è presente solo nel caso sia una metrica di prodotto. Può assumere i seguenti valori:
  - *D*: per indicare i documenti
  - *S*: per indicare i prodotti software
- *Numero*: rappresenta il codice numerico identificativo della metrica o dell'obiettivo, inizia da 1 per ogni tipologia di categoria e prodotto

== Verifica 
=== Descrizione
Secondo lo standard ISO/IEC 12207:1995, il processo di verifica è un processo per determinare se i prodotti software di un'attività soddisfano
i requisiti o le condizioni imposte nelle attività precedenti. Per garantire efficacia in termini di costi e prestazioni, la verifica dovrebbe
essere integrata, il prima possibile, con il processo che la utilizza  (fornitura, sviluppo, ecc). La verifica del software verrà eseguita principalmente tramite analisi ed esecuzione di test.
=== Analisi statica
L'analisi statica è una tecnica di verifica del software che si effettua senza eseguire il codice. Si basa sull'esame del codice sorgente, della documentazione e di altri _artefatti_#super("G") del progetto per individuare errori, violazioni di standard e altre problematiche. Nell'analisi statica si distinguono due tecniche principali:

- *Walkthrough*: consiste in una ricerca generale di errori, analizzando l'insieme di tutti i configuration items. Durante un walkthrough, i membri del team esaminano il codice o i documenti per identificare problemi evidenti, errori di logica, violazioni degli standard di codifica e altre anomalie.

- *Inspection*: consiste nell'eseguire una lettura mirata di una specifica unità di testing. Le inspection sono solitamente più brevi rispetto ai walkthrough. Durante un'inspection, un team di revisori esamina il codice o alcuni paragrafi di documenti, utilizzando una _checklist_#super("G") di criteri predefiniti per identificare difetti. Ogni difetto trovato viene documentato e discusso, e vengono proposte soluzioni per correggerlo.

=== Analisi dinamica
L'analisi dinamica è applicabile solo al prodotto software in quanto prevede l'esecuzione di test, cioè prove sul codice in esecuzione. Un test definito correttamente deve:
- Essere ripetibile: dato un determinato input si deve ottenere sempre lo stesso output per ogni prova effettuata
- Specificare l'ambiente di esecuzione
- Identificare input e output richiesti
- Fornire informazioni utili sui risultati dell'esecuzione

Esistono diverse categorie di test, ognuno con uno scopo e oggetto di verifica diverso.

==== Test di unità
I test di unità verificano la correttezza di una piccola parte di software testabile, chiamata unità, per stabilirne il corretto funzionamento
rispetto alle attese. Eventualmente le unità vengono testate con l'ausilio di _driver_#super("G") e _stub_#super("G") che simulano rispettivamente un'unità chiamante e un'unità chiamata che però non sono state ancora implementate del tutto, i driver e gli stub sono utilizzati per testare le unità in modo isolato, senza dipendenze esterne.
==== Test di Sistema
I test di sistema verificano il sistema completo del prodotto software, prendendo in considerazione tutti i componenti e interfacce con altri
sistemi. Questi test controllano che il software rispetti tutti i requisiti prestabiliti e che sia adatto all'uso in produzione.

==== Test di Regressione
I test di regressione servono a testare che gli aggiornamenti o modifiche rilasciati nel software non incidano negativamente sulle funzioni già
presenti. Ciò consiste nella ripetizione di test di unità, integrazione e sistema.

=== Strumenti
Non sono ancora stati individuati strumenti per la verifica del codice.

=== Codice identificativo dei test
I test vengono identificati dal codice
#align(center)[#strong[T[Tipo]-[ID]]]
dove:
- *T*: indica che si tratta di un test
- *Tipo*: indica il tipo di test e può assumere i seguenti valori
  - *U* per i test di unità
  - *I* per i test d'integrazione
  - *S* per i test di sistema
  - *R* per i test di regressione
  - *A* per i test di accettazione.
- *ID*: codice numerico progressivo che inizia da 1 per ogni tipo d test

=== Verifica della Documentazione
Per la verifica della documentazione, si utilizzeranno solamente le tecniche inspection definite in precedenza.
Quando verrà aggiornato un document, verrà eseguita una lettura mirata ad un singolo paragrafo o ai cambiamenti regstrati dal sistema di versionamento, per una verifica dei documenti più veloce.
La verifica della documentazione si dice aver esito positivo quando:
- Il contenuto dei documenti vari documenti è coerente, completo ed esaustivo per tutti gli argomenti trattati da esso.
- I documenti sono stati redatti secondo le norme di progetto e soddisfano i criteri qualitativi del piano di qualifica.
- La gestione della configurazione dei documenti segue le procedure specificate nei paragrafi addietro.

== Validazione
=== Descrizione
Il processo di validazione è necessario per determinare se il prodotto finale è pronto per l'utilizzo,
è quindi necessario il superamento di tutti i test definiti nella fase di verifica per assicurare che il prodotto implementi correttamente tutte le funzionalità richieste dal proponente, in modo da essere ritenuto accettabile come MVP.

==== Test di Accettazione
Il test di accettazione o collaudo è un'attività esterna, supervisionata dal committente e consiste nel dimostrare il soddisfacimento
dei requisiti. A tale test seguirà il rilascio del prodotto.

= Processi Organizzativi
== Gestione dei Processi
=== Descrizione
Secondo lo standard ISO/IEC 12207:1995, il processo di gestione dei processi identifica le attività e i compiti di progetto necessari per gestire efficacemente i processi utilizzati dal team. Le attività di gestione dei processi definite dallo standard sono le seguenti:
- Assegnazione dei ruoli di progetto
- Assegnazione delle task
- Gestione delle comunicazioni

=== Ruoli di progetto
I ruoli di progetto sono assegnati ad ogni periodo produttivo, in modo da garantire una maggiore flessibilità e adattabilità alle esigenze del progetto. Ogni membro del gruppo avrà un ruolo definito in base ad accordi presi sulla ripartizione di determinate _task_#super("G") per quello sprint. 

I ruoli che ciascun membro dovrà ricoprire sono i seguenti:

*Responsabile di Progetto*
\
Rappresenta l'intero progetto, punto di riferimento sia per il committente sia per il proponente, con lo scopo di mediare tra le due parti. Si assume la responsabilità delle scelte del gruppo dopo averle approvate. In particolare, si occupa di:
- Approvare l'emissione della documentazione
- Approvare l'offerta economica sottoposta al committente
- Pianificare e coordinare le attività di progetto
- Gestire le risorse umane

*Amministratore di Progetto*
\
Esegue delle procedure di controllo e amministrazione dell'ambiente di lavoro. In particolare, si occupa di:
- Risolvere problemi legati alla gestione dei processi
- Gestire la documentazione di progetto
- Automatizzare i processi
- Individuare punti di miglioramento nei processi
- Redigere e attuare i piani e le procedure per la gestione della qualità

*Analista*
\
Possiede maggiori competenze riguardo il dominio applicativo del problema. Si occupa di:
- Studiare il problema e il relativo contesto applicativo
- Comprendere il problema e definire la complessità e i requisiti
- Svolgere l'Analisi dei Requisiti e redigere il relativo documento

*Progettista*
\
Gestisce gli aspetti tecnologici e tecnici del progetto. In particolare si occupa di:
- Effettuare scelte riguardanti gli aspetti tecnici e tecnologici del progetto, favorendone l'efficacia e l'_efficienza_#super("G")
- Definire un'architettura del prodotto da sviluppare che miri all'economicità e alla manutenibilità a partire dal lavoro svolto dall'analista
- Redigere la parte pragmatica del Piano di Qualifica

*Verificatore*
\
Verifica il lavoro svolto dagli altri componenti del gruppo, sulla base delle proprie competenze tecniche, esperienza e conoscenza delle norme. In particolare si occupa di:
- Esaminare i prodotti in fase di revisione, con l'ausilio delle tecniche e degli strumenti definiti nelle Norme di Progetto
- Verificare la conformità dei prodotti ai requisiti funzionali e di qualità
- Segnalare eventuali errori

*Programmatore*
\
Svolge la fase di codifica del progetto e delle componenti di supporto che verranno utilizzate per eseguire prove di verifica e validazione sul prodotto. In particolare, si occupa di:
- Scrivere un codice ordinato e facile da mantenere
- Realizzare gli strumenti per la verifica e la validazione del software

=== Issue Tracking System
Un _issue tracking system_#super[G] permette di tenere traccia delle attività e dei problemi legati al progetto. Esso consente di monitorare lo stato di avanzamento delle attività, assegnare compiti ai membri del team e gestire le richieste di modifica.
Il gruppo adotta _GitHub Projects_#super("G") per  gestione semplice e chiara dei compiti da svolgere. Lo stato di avanzamento è segnato tramite le seguenti colonne:
- `To do`: contiene la lista delle task create dal responsabile.
- `In progress`: contiene le task che sono in fase di svolgimento.
- `In review`: contiene le task completate e in attesa di verifica.
- `Done`: contiene le task completate e verificate.

Ogni volta che è necessario portare a termine un compito, si segue questa procedura:
+ Il responsabile crea e assegna la task su _GitHub Issues_#super("G")
  + una task può essere creata da chiunque, ma deve essere assegnata al responsabile per essere inserita nel progetto
  + una _issue_#super("G") può corrispondere a più task o ad una singola parte di una task
+ L'incaricato si assegna la task spostando la issue nella colonna `In progress`, segnando l'inizio del lavoro di produzione
  + Sono possibili spostamenti in avanti di più colonne, aggiungendo un commento che ne spiega il motivo.
+ Finito il lavoro di produzione, viene aperta la pull request su GitHub per fare il merge dal branch sul quale si stava lavorando al branch principale
  + Una pull request può corrispondere a più issues e quindi incorporare più task purché siano correlate tra loro
+ La task viene marcata come `In review` su GitHub Issues.
+ Il verificatore verifica la presenza di errori, incongruenze o bug all'interno del lavoro svolto.
  + Se la verifica ha esito positivo:
    + Il verificatore approva la pull request su GitHub con una review, che può essere richiesta da chi ha aperto la pull request
    + Il cambiamento viene integrato sul branch principale, facendo il merge della pull request
    + La issue viene marcata come `Done` su GitHub Issues
  + Se la verifica ha esito negativo:
    + Il verificatore richiede dei cambiamenti sul _commit_#super("G") della pull request
    + Si ritorna al punto precedente

*Considerazioni aggiuntive:*

  - Una pull request può essere approvata dalla persona che l'ha creata, oppure dall'amministratore di progetto in caso sia rimasta aperta per troppo tempo. 
  - Nel caso della verifica dei documenti, il verificatore aggiunge il suo nome nella lista dei verificatori del documento o nella colonna di verifica del versionamento
  - Nel caso un branch contenga troppi errori, o ci siano state molte modifiche ad una pull request molto vecchia, il verificatore può richiedere all'amministratore di chiudere quella pull-request con un commento che ne spiega il motivo
  - Nel caso in cui la verifica abbia esito negativo, quando verranno effettuate le modifiche, non sarà necessario aumentare di una versione, poiché il configuration item verrà ritenuto valido quando "stabile" e di conseguenza privo di errori o incongruenze
  - I cambiamenti possono essere richiesti tramite un commento su github o possono essere accordati in una riunione o una breve chiamata

=== Gestione delle riunioni
Le riunioni sono un momento fondamentale per coordinare le attività del gruppo e prendere decisioni importanti. Esse si dividono in:
*Riunioni interne*
\
Riservate ai membri del gruppo di progetto e con lo scopo di:
- Coordinare le attività del gruppo
- Discutere e risolvere eventuali problemi
- Pianificare le attività future
- Verificare lo stato di avanzamento del progetto

*Riunioni esterne*
\
Che coinvolgono anche il Proponente o altre parti interessate e hanno lo scopo di:
- Presentare lo stato di avanzamento del progetto
- Discutere e approvare le decisioni importanti
- Ricevere feedback dal Proponente


La frequenza delle riunioni dipende dalle esigenze del progetto e può variare nel tempo. In generale, si prevede di tenere una riunione interna settimanale per discutere lo stato di avanzamento e pianificare le attività future. È prevista, ma ancora da definire, la frequenza delle riunioni esterne con il proponente.


Per ogni riunione viene redatto un verbale che riporta:
- Data e ora della riunione
- Argomenti trattati
- Decisioni prese
- Azioni da intraprendere
- Analisi delle criticità riscontrate

I verbali delle riunioni vengono archiviati e resi disponibili a tutti i membri del gruppo per garantire la trasparenza e la tracciabilità delle decisioni prese.
==== Gestione delle comunicazioni
Le comunicazioni all'interno del gruppo avvengono principalmente attraverso i seguenti canali:
- *Whatsapp*: per fissare le riunioni
- *Discord*: per prendere discutere eventuali problemi e definire delle azioni da intraprendere di conseguenza

Per le comunicazioni formali con il proponente o altre parti interessate, si utilizzano principalmente:
- *Email*: per fissare riunioni o per lo scambio di risorse e documenti
- *Zoom*: per ottenere feedback sull'avanzamento del progetto e discutere eventuali dubbi
== Strumenti
Tutti gli strumenti di supporto ai processi organizzativi utilizzati sono stati i seguenti:
- *GitHub*: per la gestione del repository e il versionamento del codice
- *GitHub Projects*: per il tracking delle issue e la gestione delle task
- *Zoom*: per le riunioni con il proponente e altre parti interessate
- *Whatsapp*: per fissare le riunioni interne
- *Discord*: per discutere eventuali problemi e definire azioni da intraprendere
== Formazione del Personale
I componenti di NextSoft si divideranno in due macrogruppi,
uno dedito alla ricerca delle tecnologie necessarie per il Capitolato e l'altro dedito al processo di stesura della documentazione e alla discussione delle scelte progettuali proposte.
L'assegnazione ad un macrogruppo avviene in base alle preferenze dei singoli membri e sulle eventuali competenze pregresse sui requisiti obbligatori del capitolato.
Tale approccio permette una divisione del lavoro equa e una maggiore efficienza nella ricerca delle tecnologie, mantenendo comunque un alto ritmo di tracciabilità delle scelte progettuali.
