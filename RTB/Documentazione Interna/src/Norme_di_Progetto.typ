#import "../../../assets/template_v2.0.0.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Norme di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu", "Stefano Baso"),
  approvazione: (""),
  uso: "Interno",
  version: "0.4.1",
  date: "23/11/2024",
  versionamento: (
<<<<<<< HEAD
    "0.4.1", "11/02/2025", "Malik Giafar Mohamed","Integrazione di alcune specifiche relative al way of working","","",
    "0.4.0", "11/01/2025", "Malik Giafar Mohamed","Integrazione parti mancanti del documento","Marco Perazzolo, Stefano Baso","",
    "0.3.0", "05/01/2025", "Malik Giafar Mohamed", "Stesura sezione Documentazione fino a Norme Tipografiche", "Ion Cainareanu, Stefano Baso","",
    "0.2.0", "15/12/2024", "Malik Giafar Mohamed", "Stesura fino a sezione 2.1.2.2", "Ion Cainareanu","Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Stesura Prima Versione", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu",
=======
    "0.4.0", "11/01/2025", "Malik Giafar Mohamed","Integrazione parti mancanti del documento","Marco Perazzolo, Stefano Baso",
    "0.3.0", "05/01/2025", "Malik Giafar Mohamed", "Stesura sezione Documentazione fino a Norme Tipografiche", "Ion Cainareanu, Stefano Baso",
    "0.2.0", "15/12/2024", "Malik Giafar Mohamed", "Stesura fino a sezione 2.1.2.2", "Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Stesura Prima Versione", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu",
>>>>>>> origin/main

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

=== Riferimenti
*Riferimenti Normativi* \
- Presentazione del capitolato *Requirement Tracker - Plug-in VS Code*
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf
- Standard ISO/IEC 12207:1995
  - https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
- Documento Piano di Qualifica
*Riferimenti Informativi* \

= Processi Primari
==  Fornitura
=== Scopo e aspettative
Il processo di fornitura determina le procedure e le risorse necessarie per gestire
e garantire la consegna del capitolato#super("G"). Tale processo è iniziato con l'aggiudicazione dell'appalto
da parte di NextSoft#super("G").
Il gruppo NextSoft si aspetta quindi una comunicazione costante ed efficace con
il proponente#super("G") al fine di garantire il rispetto dei vincoli progettuali definiti
nella presentazione del capitolato e di produrre un applicativo che soddisfi le esigenze del proponente.
=== Maturità del documento
Il seguente documento sarà soggetto a modifiche e integrazioni durante il corso del progetto, in particolare durante le fasi di analisi e progettazione, pertanto non può essere considerato completo e definitivo.

=== Documentazione Fornita
Il processo di fornitura prevede la produzione dei seguenti documenti:
- *Norme di Progetto*: definisce il way of working del gruppo per la realizzazione del progetto
- *Piano di Progetto*: definisce le attività, le risorse e i tempi necessari per la realizzazione del progetto
- *Piano di Qualifica*: definisce le strategie e le metodologie di verifica e validazione adottate dal gruppo
- *Analisi dei Requisiti*: definisce i requisiti del progetto e i casi d'uso
- *Proof of Concept*: prodotto software usa e getta per dimostrare la fattibilità del progetto

//==== Collaudo e Rilascio del prodotto?

== Sviluppo
=== Scopo e aspettative
Il processo di sviluppo ha lo scopo di delineare i compiti e le attività necessarie per la creazione del prodotto software. In questa sezione vengono descritte le attività, le norme e le convenzioni adottate per la realizzazione di tale processo.
Il gruppo si aspetta di:

- Definire un metodo di sviluppo chiaro e strutturato
- Garantire la qualità del prodotto finale
- Consegnare il prodotto entro i tempi stabiliti senza sprecare risorse
- Soddisfare pienamente le richieste del proponente

//=== Attività
=== Analisi dei Requisiti
L'attività di analisi dei requisiti è compito degli Analisti#super("G"), consiste nell'analizzare ogni singolo requisito e caso d'uso del progetto. Ha lo scopo di:

- Comprendere a fondo le necessità del proponente
- Aiutare i progettisti#super("G")
- Fornire riferimenti utili ai verificatori#super("G")

==== Casi d'uso
Ogni caso d'uso verrà riportato con una denominazione chiara e univoca che identifichi l'azione principale e l'attore coinvolto, il formato adottato sarà il seguente:
#align(center)[#strong[UC\_[Numero caso d'uso].[Numero sottocaso o scenario alternativo (opzionale)] - Titolo]]

Mentre saranno strutturati nel seguente modo : 
- *Denominazione*: codice identificativo del caso d'uso, stabilito come enunciato sopra
- *Diagramma UML*: diagramma per rappresentare graficamente il caso d'uso (opzionale?)
- *Attori Principali*: entità esterne al sistema che interagiscono con esso
- *Precondizioni*: descrivono lo stato del sistema prima del verificarsi del caso d'uso
- *Postcondizioni*: descrivono lo stato del sistema dopo che si è verificato il caso d'uso
- *Descrizione*: breve descrizione del caso d'uso
- *Scenario principale*: elenco puntato che descrive il flusso degli eventi del caso d'uso
- *Scenario secondario/alternativo*: elenco puntato che descrive il flusso degli eventi del caso d'uso dopo un evento imprevisto che lo ha deviato dal caso principale. Può non esserci o possono essercene più di uno
==== Denominazione dei requisiti
Ogni requisito verrà riportato nel seguente formato:
#align(center)[#strong[R[Classificazione][Tipologia][Identificativo]]]
Dove:

- *R*: indica che si tratta di un requisito
- *Classificazione*: specifica la categoria del requisito
  - *F*: requisito funzionale
  - *P*: requisito prestazionale
  - *Q*: requisito qualitativo
  - *V*: vincolo
- *Tipologia*: descrive la natura del requisito
  - *D*: requisito desiderabile
  - *O*: requisito obbligatorio
  - *F*: requisito facoltativo
- *Identificativo*: numero intero progressivo e univoco del requisito

=== Progettazione
==== Scopo
L'attività di progettazione è legata al ruolo dei Progettisti#super("G"), consiste nel definire l'architettura della soluzione considerando i requisiti derivanti dall'analisi fatta in precedenza.
=== Codifica
==== Scopo
L'attività di codifica è legata al ruolo dei Programmatori#super("G"), consiste nell'implementazione del prodotto software tenendo conto della progettazione.
==== Strumenti
Per la codifica del prodotto, i principali strumenti adottati saranno:
- *Visual Studio Code*: in quanto è l'IDE più consigliato per realizzare proprie estensioni.

= Processi di Supporto
== Documentazione
=== Scopo e aspettative
Il processo di documentazione ha lo scopo di stabilire le linee guida per la redazione dei documenti di progetto.
=== Ciclo di vita del documento
Il ciclo di vita di un documento è suddiviso nelle seguenti fasi:
- *Creazione*: in questa fase viene definita la struttura del documento e vengono raccolte le informazioni necessarie per la sua stesura. Viene inoltre assegnato un responsabile per la redazione del documento.

- *Stesura*: redazione o modifica del documento secondo le linee guida e gli standard definiti.

- *Verifica*: una volta completata la stesura, il documento viene sottoposto a verifica da parte di uno o più verificatori. Quest'ultimi controllano la correttezza e la completezza del contenuto, segnalando eventuali errori o incongruenze. Eventualmente è possibile un ritorno alla fase di stesura in caso il documento non venga aprrovato.

- *Approvazione*: dopo la verifica, il documento viene inviato per l'approvazione finale. L'approvazione deve essere effettuata dal Responsabile di Progetto o dallo stesso revisore del documento. Una volta approvato, il documento viene considerato ufficiale e può essere distribuito o utilizzato come riferimento.

Ogni fase del ciclo di vita del documento è fondamentale per garantire la qualità e l'accuratezza delle informazioni contenute. È importante seguire rigorosamente queste fasi per assicurare che il documento finale soddisfi tutti i requisiti e gli standard previsti.

=== Tipologie di documenti
==== Documenti Interni
I documenti interni sono destinati all'uso esclusivo dei membri del gruppo di progetto e del committente. I principali documenti ad uso interno interni sono:
- Norme di Progetto
- Verbali interni

==== Documenti Esterni
I documenti esterni sono destinati all'uso del committente e agli stakeholders. I principali documenti ad uso esterno sono:
- Analisi dei Requisiti
- Piano di Qualifica
- Piano di Progetto
- Glossario
- Verbali esterni

=== Template
Sono stati creati dei template per facilitare la stesura dei documenti. Ogni template contiene uno stile unico utilizzato da tutti i documenti che lo importano. Possono esistere molteplici template contemporaneamente; attualmente i principali template sono quello della Candidatura e quello dell'RTB

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

Tutti i seguenti elementi sono disposti al centro del documento, versione e data di creazione sono disposti in linea; mentre redattori, verificatori e approvatori sono disposti in righe separate di una tabella creata ad hoc.

==== Registro dei cambiamenti
Il registro delle modifiche contiene la cronologia delle modifiche apportate ai documenti scritti in maniera incrementale. E' situato alla seconda pagina del documento sopra all'indice e contiene le seguenti informazioni:
- Versione del documento
- Data della modifica
- Nome e cognome del redattore
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
  - Numero di pagina: posizionato in basso al centro della pagina

==== Verbali
I verbali sono documenti che riportano le decisioni prese durante le riunioni del gruppo di progetto. I verbali differiscono leggermente nello stile grafico del frontespizio degli altri documenti, e non contengono il registro dei cambiamenti.

=== Norme Tipografiche
==== Nome del documento
Ogni documento ha una denominazione omogenea.
I verbali come nome file hanno la data del relativo incontro in formato YYYY-MM-DD, mentre gli altri documenti sarano denominati nel seguente modo:
#align(center)[#strong[Nome_File-vX.Y.Z]]

Per la denominazione dei file si fa riferimento alla convenzione "CamelCase#super("G")", le parole verranno separate dal carattere "\_" (underscore) e la versione sarà indicata con la lettera "v" seguita dal numero di versione, specificato a sua volta nel paragrafo _Versionamento_.

Per questioni di praticità, questo tipo di nomenclatura vale solo per i documenti interni ed esterni, non viene applicata ai template, alle immagini e altri tipi di documento. La nomenclatura dei documenti senza versionamento utilizza sempre gli underscore al posto degli spazi, e senza utilizzare il CamelCase.

==== Stile del testo
Il testo dei documenti deve essere scritto in lingua italiana utilizzerà i seguenti formati di testo:
- *Grassetto*: per evidenziare i titoli di sezioni
- *Corsivo*: per far riferimento ad un un termine utilizzato all'interno del documento o ad un paragrafo,

==== Elenchi
Gli elenchi puntati seguono le seguenti norme:
- Il simbolo che scandisce ogni elemento dell'elenco è il pallino (•), al secondo e terzo livello si trovano rispettivamente il trattino e il triangolo nero (‣)
- Le voci iniziano per lettera Maiuscola
- Le liste del tipo "Termine: descrizione" presentano il termine in grassetto con la prima lettera in maiuscolo
==== sigle
Nella documentazione verranno utilizzate delle sigle per facilitare l'identificazione di un documento, ruolo o revisione senza doverne scrivere il nome per intero. Queste sono rivelate utili soprattutto nell'utilizzo di tabelle.

Le sigle utilizzate sono le seguenti:
- Sigle relative ai documenti:
  - *AdR*: Analisi dei Requisiti
  - *NdP*: Norme di Progetto
  - *PdQ*: Piano di Qualifica
  - *PdP*: Piano di Progetto
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

==== Glossario
I termini ambigui che necessitano di una spiegazione sono contrassegnati da una "G" come apice della
loro prima occorrenza nel documenti. Tutti i termini da glossario sono riportati in ordine alfabetico
nel documento Glossario.

==== Elementi grafici
Vengono seguite le seguenti norme per utilizzare immagini, grafici e tabelle:
- *Immagini*: sono centrate e accompagnate da una didascalia
- *Grafici UML*: usati per rappresentare i casi d'uso, i diagrammi delle classi e i diagrammi di sequenza, verranno inseriti come immagini e trattati come tali
- *Collegamenti ipertestuali*: sono riportati in blu nel documento
=== Strumenti
Per la stesura dei documenti finora sono stati utilizzati i seguenti strumenti:
- *Typst*: linguaggio di markup simile a Markdown utilizzato per la stesura di documenti
- *Visual Studio Code*: IDE utilizzato per la scrittura del codice sorgente dei documenti
- *Typst.app*: sito web utilizzato come alternativa per la stesura dei documenti
//- *GitHub Actions*: utilizzate per la generazione dei file pdf derivanti dal codice sorgente dei documenti   
== Gestione della configurazione
=== Scopo e aspettative
Il processo di Gestione della configurazione ha lo scopo di gestire in modo ordinato e sistematico
la produzione di documenti e codice. Per ogni oggetto sottoposto a configurazione viene garantito il versionamento e controllo sulle modifiche per permettere il mantenimento dell'integrità del prodotto. Il gruppo si aspetta di mantenere un repository#super("G") organizzato e ben strutturato.
=== Versionamento
Per poter capire lo stato di avanzamento di un prodotto derivante delle attività del progetto è necessario un identificatore. Il formato del numero di versione utilizzato è il seguente:
#align(center)[#strong[X . Y . Z]]
dove:
- *X*, *Y* e *Z* sono numeri interi positivi
- *X* corrisponde ad una versione approvata dal Responsabile di Progetto. La numerazione parte da 0.
- *Y* indica l'aggiunta di un incremento, senza però essere arrivati ad avere una versione rilasciabile del prodotto. La numerazione parte da 0 e si azzera ad ogni incremento di *X*.
- *Z* viene incrementato ad ogni piccola modifica o correzione, questo tipo di versione assume il nome di _minor_. La numerazione parte da 0 e si azzera ad ogni incremento di *X* o *Y*.

=== Strumenti
Per il versionamento si è scelto di utilizzare un repository GitHub, che, a sua volta, implementa il software di controllo versione distribuito Git.

=== Struttura delle repository
==== Documenti
La repository utilizzata dal gruppo per la creazione dei documenti è strutturata nel seguente modo:
- Una cartella chiamata _Candidatura_ contenente i documenti relativi alla candidatura del gruppo per il capitolato. 
- Una cartella chiamata _RTB_ contenente i documenti relativi alla milestone RTB, quindi le norme di progetto, il piando di progetto e di qualifica, l'analisi dei requisiti e il glossario.
- una cartella "assets" contenente i vari template utilizzati dalla documentazione e immagini varie usate nella candidatura.

Nelle cartelle _Candidatura_ e _RTB_ sono contenuti anche i verbali effettuati in quei periodi.

Ogni cartella ad eccezione di "assets" contiene un'altra cartella denominata "src" contenente il codice sorgente utilizzato per la generazione dei documenti in formato pdf.
\
La repository inoltre è suddivisa in più branch#super("G") così definiti:

- *main*: il branch principale, che contiene l'ultima versione verificata di ogni documento
- *nome_documento*: uno per ogni documento, è dove il documento vive e viene attivamente stilato dai membri del gruppo.
La repository è pubblica e si può facilmente trovare al seguente link:
- https://github.com/nextsoftPD/Documenti
==== PoC
La repository del PoC è ancora da creare.
=== Branch, Issues e Pull Request
Non è consentito fare commit#super("G") direttamente sul branch main di nessuna repository, poiché porterebbe ad un elevato rischio di incongruenze e merge conflicts#super("G").
Si potranno applicare modifiche solo tramite il meccanismo di pull request#super("G"), con verifica obbligatoria da parte di un verificatore, in modo da garantire che sia sempre presente una versione verificata e corretta del documento, anche se incompleta. Non è obbligatoria la verifica nel caso di una minor.


Nel branch _nome_documento_ invece ogni membro può fare delle modifiche a patto che siano relativi solo ai configuration items#super("G") modificabili in quello specifico branch, ad esempio, non sarà possibile modificare il glossario dentro al branch del piano di progetto, ma drovrà essere modificato nel branch dedicato al glossario.


Potranno effettuare modifiche sul branch solo le persone assegnate alla issue che tratta quel configuration item specifico. Per quanto riguarda cambiamenti minimali (punteggiatura, errori ortografici, ecc.) è permessa la modifica autonoma da parte dei modificatori, a pattto che sia solo allo scopo di risolvere errori ortoggrafici o a migliorare la comprensibilità alcune frasi senza modificarne il signficicato logico.


Una volta verificata, una pull request può essere approvata dalla persona che l'ha creata, oppure dall'amministratore di progetto in caso sia rimasta aperta per troppo tempo.  
== Gestione della Qualità
=== Scopo
La gestione della qualità di progetto è l'insieme delle attività che vengono eseguite
all'interno di un progetto per garantire qualità su prodotti e processi in modo che il prodotto finale possa soddisfare i requisiti e le aspettative degli stakeholders.
=== Piano di Qualifica
Il documento Piano di Qualifica#super("G") definisce le strategie e le metodologie di verifica e validazione adottate dal gruppo,
e verrà utilizzato come riferimento per garantire la qualità del prodotto.(da migliorare)

=== Ciclo di Deming
Per mantenere un'alta qualità di lavoro si è stabilito l'utilizzo del ciclo di Deming#super("G") (o PDCA), uno schema iterativo di auto-miglioramento che consiste di quattro punti:
- *Plan*: individuare obiettivi di miglioramento
- *Do*: eseguire ciò che si è pianificato
- *Check*: verificare i risultati della fase precedente (do) e confrontarli con gli obiettivi individuati nella prima fase (plan)
- *Act*: se la fase precedente (check) ha dimostrato che il piano (plan) implementato nella seconda fase (do) è migliore rispetto agli standard precedentemente usati, allora questo piano diventa il nuovo standard. Altrimenti, rimarrà in uso il vecchio standard.
=== Denominazione Metriche
La denominazione delle metriche segue il seguente formato:
#align(center)[#strong[M[Categoria][TipoProdotto][Numero]]]
dove:
- *M*: indica che si tratta di una metrica di qualità
- *[Categoria]*: indica a quale categoria appartiene la metrica, e può assumere i seguenti valori:
  - *PD*: per indicare i prodotti
  - *PC*: per indicare i processi
  - *TS*: per indicare i test
- *[TipoProdotto]*: indica se si riferisce a documenti o software ed è presente solo nel caso sia una metrica di prodotto. Può assumere i seguenti valori:
  - *D*: per indicare i documenti
  - *S*: per indicare i prodotti software
- *Numero*: rappresenta il codice numerico identificativo della metrica, inizia da 1

== Verifica 
=== Scopo e aspettative
Il processo di verifica ha lo scopo di garantire che i prodotti e i processi siano conformi agli standard e ai requisiti definiti. Il gruppo si aspetta di verificare costantemente i prodotti e i processi per garantire la qualità del lavoro svolto.

I processi di analisi tuttavia sono ancora da definire.
=== Verifica della Documentazione
La documentazione è considerata valida quando:
- E' coerente e rispetta i criteri specificati nel seguente documento.
- E' completa ed esaustiva, coprendo tutti gli aspetti richiesti. 
- La gestione della configurazione dei documenti segue le procedure specificate nei paragrafi addietro.

== Validazione
=== Scopo e aspettative
Il processo di validazione è necessario per determinare se il prodotto finale è pronto per l'utilizzo,
sono quindi necessari vari test per assicurare che il prodotto contenga tutte le funzionalità richieste dal proponente.
Le aspettative del gruppo sono di avere un prodotto che soddisfi i requisiti del proponente e che sia pronto per l'utilizzo.


= Processi Organizzativi
== Gestione dei Processi
=== Scopo e aspettative
Il processo di gestione dei processi ha lo scopo di definire le attività e le responsabilità necessarie per garantire il corretto svolgimento dei processi di progetto.
(da migliorare)

=== Ruoli di progetto
I ruoli di progetto non sono assegnati a periodo ma ad attività, in modo da garantire una maggiore flessibilità e adattabilità alle esigenze del progetto.

I ruoli che ciascun membro dovrà ricoprire sono i seugenti:

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
- Svolgere l'Analisi dei Requisiti e redigere relativo documento

*Progettista*
\
Gestisce gli aspetti tecnologici e tecnici del progetto. In particolare si occupa di:
- Effettuare scelte riguardanti gli aspetti tecnici e tecnologici del progetto, favorendone l'efficacia e l'efficienza
- Definire un'architettura del prodotto da sviluppare che miri all'economicità e alla manutenibilità a partire dal lavoro svolto dall'analista
- Redigere la Specifica Tecnica e la parte pragmatica del Piano di Qualifica

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

==== Riunioni
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


La frequenza delle riunioni dipende dalle esigenze del progetto e può variare nel tempo. In generale, si prevede di tenere una riunione interna settimanale per discutere lo stato di avanzamento e pianificare le attività future. E' prevista, ma ancora da definire, la frequenza delle riunioni esterne con il proponente.


Per ogni riunione viene redatto un verbale che riporta:
- Data e ora della riunione
- Argomenti trattati
- Decisioni prese
- Azioni da intraprendere
- Analisi delle criticità riscontrate

I verbali delle riunioni vengono archiviati e resi disponibili a tutti i membri del gruppo per garantire la trasparenza e la tracciabilità delle decisioni prese.
==== Comunicazioni
Le comunicazioni all'interno del gruppo avvengono principalmente attraverso i seguenti canali:
- *Whatsapp*: per fissare le riunioni
- *Discord*: per prendere discutere eventuali problemi e definire delle azioni da intraprendere di conseguenza

Per le comunicazioni formali con il proponente o altre parti interessate, si utilizzano principalmente:
- *Email*: per fissare riunioni o per lo scambio di risorse e documenti
- *Zoom*: per ottenere feedback sull'avanzamento del progetto e discutere eventuali dubbi 
== Strumenti
Per la gestione dei rischi sono stati utilizzati i seguenti strumenti:
- *GitHub*: per la gestione delle issue e dei pull request
- *Typst*: per la stesura dei documenti
- *Discord*: per le comunicazioni interne
- *WhatsApp*: per le comunicazioni informali e rapide
- *Zoom*: per le riunioni online
- *Visual Studio Code*: per la scrittura del codice sorgente

== Formazione del Personale
I componenti di NextSoft si diveranno in due macrogruppi,
uno dedito alla ricerca delle tecnologie necessarie per il Capitolato e l'altro dedito al processo di stesura della documentazione e alla discussione delle scelte progettuali proposte.
L'assegnazione ad un macrogruppo avviene in base alle preferenze dei singoli membri e sulle eventuali competenze pregresse sui requisiti obbligatori del capitolato.
Tale approccio permette una divisione del lavoro equa e una maggiore efficienza nella ricerca delle tecnologie, mantenendo comunque un alto ritmo di tracciabilità delle scelte progettuali.
