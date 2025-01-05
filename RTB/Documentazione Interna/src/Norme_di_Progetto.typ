#import "../../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Norme di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu"),
  approvazione: ("Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu"),
  uso: "Interno",
  version: "0.3.0",
  date: "23/11/2024",
  versionamento: (
    "0.3.0", "15/12/2024", "Malik Giafar Mohamed", "Stesura sezione Documentazione fino a Norme Tipografiche", "","",
    "0.2.0", "15/12/2024", "Malik Giafar Mohamed", "Stesura fino a sezione 2.1.2.2", "Ion Cainareanu","Ion Cainareanu",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Stesura Prima Versione", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez, Ion Cainareanu",

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

== Glossario
Per evitare ambiguità relative alle terminologie utilizzate è stato creato un documento denominato *Glossario*.
Questo documento comprende tutti i termini tecnici scelti dai membri del gruppo e utilizzati nei
vari documenti con le relative definizioni. Tutti i termini inclusi in questo glossario vengono segnalati
all'interno del documento con l'apice #super("G") accanto alla parola.
=== Riferimenti
==== Normativi
- Presentazione del capitolato *Requirement Tracker - Plug-in VS Code*
  - https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C8.pdf
- Standard ISO/IEC 12207:1995
  - https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
==== Informativi
- TBA
= Processi Primari
==  Fornitura
=== Descrizione e aspettative
Il processo di fornitura determina le procedure e le risorse necessarie per gestire
e garantire la consegna del capitolato#super("G"). Tale processo è iniziato con l'aggiudicazione dell'appalto
da parte di NextSoft#super("G") del capitolato.
Il gruppo NextSoft si aspetta quindi una comunicazione costante ed efficace con
il proponente#super("G") al fine di garantire il rispetto dei vincoli progettuali definiti
nella presentazione del capitolato e di produrre un applicativo che soddisfi le esigenze del proponente.
=== Attività
==== Normazione
Questa attività prevede la scrittura del seguente documento in maniera incrementale, 
modificandone il contenuto ogni qualvolta sia necessario.
==== Piano di Progetto
==== Piano di Qualifica

//==== Collaudo e Rilascio del prodotto?


== Sviluppo
=== Scopo e aspettative
Il processo di sviluppo ha lo scopo di delineare i compiti e le attività necessarie per lo sviluppo del prodotto software. In questa sezione vengono descritte le attività, le norme e le convenzioni adottate per la realizzazione di tale processo.
Il gruppo si aspetta di:

Definire un processo di sviluppo chiaro e strutturato
Garantire la qualità del prodotto finale
Rispettare i tempi e le risorse stabilite
Soddisfare pienamente le richieste del proponente

=== Attività
==== Analisi dei Requisiti
L'attività di analisi dei requisiti è un compito degli Analisti#super("G"), e consiste nell'analizzare ogni singolo requisito e caso d'uso del progetto. Ha lo scopo di:

- comprendere a fondo le necessità del proponente
- aiutare i Progettisti#super("G")
- fornire riferimenti utili ai Verificatori#super("G")

===== Casi d'uso
Ogni caso d'uso verrà riportato con una denominazione chiara e univoca che identifichi l'azione principale e l'attore coinvolto, il formato adottato sarà il seguente:
#align(center)[#strong[UC\_[Numero caso d'uso].[Numero scenario alternativo (opzionale)] - Titolo]]

Mentre saranno strutturati nel seguente modo : 
- *Denominazione*: codice identificativo del caso d'uso, stabilito come enunciato sopra;
- *Diagramma UML*: diagramma per rappresentare graficamente il caso d'uso;
- *Descrizione*: breve descrizione del caso d'uso;
- *Attori Principali*: entità esterne al sistema che interagiscono con esso.
- *Precondizione*: descrive lo stato del sistema prima del verificarsi del caso d'uso;
- *Postcondizione*: descrive lo stato del sistema dopo che si è verificato il caso d'uso;
- *Scenario principale*: elenco numerato che descrive il flusso degli eventi del caso d'uso;
- *Scenario secondario/alternativo*: elenco numerato che descrive il flusso degli eventi del caso d'uso dopo un evento imprevisto che lo ha deviato dal caso principale. Può non esserci o possono esserci più di uno;
===== Denominazione dei requisiti
Ogni requisito verrà riportato nel seguente formato:
#align(center)[#strong[R[Classificazione][Tipologia][Identificativo]]]
Dove:

- *R*: indica che si tratta di un requisito
- *Classificazione*: specifica la categoria del requisito
  - *F*: requisito funzionale
  - *P*: requisito prestazionale
  - *Q*: requisito qualitativo
- *Tipologia*: descrive la natura del requisito
  - *V*: vincolo
  - *D*: requisito desiderabile
  - *O*: requisito obbligatorio
  - *F*: requisito facoltativo
- *Identificativo*: numero intero progressivo e univoco del requisito

==== Progettazione
===== Scopo
L'attività di progettazione è legata al ruolo dei Progettisti#super("G"), e consiste nel definire l'architettura del sistema e degli standard qualitativi da perseguire durante lo sviluppo. In questa sezione vengono descritte le attività, le norme e le convenzioni adottate per la realizzazione di tale processo.

==== Codifica
===== Scopo e aspettative
L'attività di codifica è legata al ruolo dei Programmatori#super("G"), e consiste nell'implementare le soluzioni progettate dai Progettisti#super("G"). In questa sezione vengono descritte le attività, le norme e le convenzioni adottate per la realizzazione di tale processo.
Il gruppo si aspetta una codifica chiara e ben strutturata, che rispetti le norme e gli standard definiti nella progettazione.
===== Strumenti
Per la codifica del prodotto Il principale strumento adottato sarà *Visual Studio Code*, in quanto è l'ambiente di sviluppo più consigliato nello sviluppo di estensioni dello stesso .

= Processi di Supporto
== Documentazione
=== Scopo e aspettative
Il processo di documentazione ha lo scopo di definire le norme e le convenzioni per la stesura della documentazione del progetto. In questa sezione vengono descritte le attività, le norme e le convenzioni adottate per la realizzazione di tale processo.
Il gruppo si aspetta una documentazione chiara e ben strutturata, che rispetti le norme e gli standard definiti nella progettazione.
=== Ciclo di vita del documento
Il ciclo di vita di un documento è suddiviso nelle seguenti fasi:
- *Creazione*: In questa fase viene definita la struttura del documento e vengono raccolte le informazioni necessarie per la sua stesura. Viene inoltre assegnato un responsabile per la redazione del documento.

- *Stesura*: stesura del documento secondo le linee guida e gli standard definiti. Questa fase può includere diverse revisioni e aggiornamenti del contenuto.

- *Verifica*: Una volta completata la stesura, il documento viene sottoposto a verifica da parte di uno o più verificatori. Quest'ultimi controllano la correttezza e la completezza del contenuto, segnalando eventuali errori o incongruenze.

- *Approvazione*: Dopo la verifica, il documento viene inviato per l'approvazione finale. L'approvazione deve essere effettuata dallo stesso verificatore del documento. Una volta approvato, il documento viene considerato ufficiale e può essere distribuito o utilizzato come riferimento.

Ogni fase del ciclo di vita del documento è fondamentale per garantire la qualità e l'accuratezza delle informazioni contenute. È importante seguire rigorosamente queste fasi per assicurare che il documento finale soddisfi tutti i requisiti e gli standard previsti.

=== Tipologie di documenti
==== Documenti Interni
I documenti interni sono destinati all'uso esclusivo dei membri del gruppo di progetto e del committente. I principali documenti ad uso interno interni sono:
- Norme di Progetto
- Verbali interni

==== Documenti Esterni
I documenti esterni sono destinati all'uso del committente e di eventuali terze parti coinvolte nel progetto. I principali documenti ad uso esterno sono:
- Analisi dei Requisiti
- Piano di Qualifica
- Piano di Progetto
- Glossario
- Verbali esterni

=== Template
Sono stati creati dei template in Typst per facilitare la stesura dei documenti.

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
- Nome e cognome degli approvatori
- Uso del documento (interno/esterno)
- Email del gruppo

Tutti i seguenti elementi sono disposti al centro del documento, versione e data di creazione sono disposti in linea; mentre redattori, verificatori e approvatori sono disposti in righe separate di una tabella creata ad hoc.

==== Indice
L'indice del documento contiene la lista dei capitoli e delle sezioni presenti nel documento, con i relativi numeri di pagina. L'indice è disposto in ordine di apparizione nel documento, con i titoli dei capitoli in grassetto e le sezioni in corsivo.

==== Registro dei cambiamenti
Il registro delle modifiche contiene la cronologia delle modifiche apportate ai documenti scritti in maniera incrementale. E' situato alla seconda pagina del documento sopra all'indice e contiene le seguenti informazioni:
- Versione del documento
- Data della modifica
- Nome e cognome del redattore
- Breve descrizione della modifica
- Nome e cognome dei verificatori
- Nome e cognome degli approvatori

Le informazioni sono disposte in colonne separate di una tabella creata ad hoc.

==== Corpo del documento
In ogni pagina del documento sono presenti i seguenti elementi:
- *Intestazione*
  - Logo del gruppo: posizionato in alto a sinistra della pagina
  - Titolo del documento: posizionato in alto al centro della pagina
  - Versione del documento: posizionato in alto a destra della pagina
- *Contenuto*
  - Testo del documento
- *Piè di pagina*
  - Numero di pagina: posizionato in basso al centro della pagina

==== Verbali
I verbali sono documenti che riportano le decisioni prese durante le riunioni del gruppo di progetto. I verbali differiscono leggermento nello stile grafico del frontespizio degli altri documenti, e non contengono il registro dei cambiamenti.

== Gestione della Configurazione
== Gestione della Qualità
== Verifica e Validazione

= Processi Organizzativi
== Gestione dei Processi
== Gestione delle Risorse
== Gestione della Qualità
== Formazione del Personale
==== Ricerca delle tecnologie
I componenti di NextSoft si diveranno in due macrogruppi,
uno dedito alla ricerca delle tecnologie necessarie per il Capitolato e l'altro dedito al processo di stesura della documentazione e alla discussione delle scelte progettuali proposte.
L'assegnazione ad un macrogruppo avviene 
in base alle preferenze dei singoli membri e sulle eventuali competenze pregresse sui requisiti obbligatori del capitolato.
Tale approccio permette una divisione del lavoro equa e una maggiore efficienza nella ricerca delle tecnologie,
mantenendo comunque un alto ritmo di tracciabilità delle scelte progettuali.
