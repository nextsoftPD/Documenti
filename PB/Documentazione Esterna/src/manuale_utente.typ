#import "../../../assets/template_v2.0.0.typ": project;

#show: project.with(
  title: "Manuale Utente",
  redattori: ("Luca Parise",),
  verifica: ("",),
  approvazione: ("",),
  uso: "Esterno",
  version: "0.0.5",
  date: "12/04/2026",
  versionamento: (
    "0.0.6","16/04/2025","Malik Giafar Mohamed","Miglioramenti minori su forma del documento e contenuto","",
    "0.0.5","14/04/2025","Luca Parise, Maria Fuensanta Trigueros Hernandez","Aggiunto capitolo della configurazione","",
    "0.0.4","12/04/2025","Luca Parise","Aggiunto capitolo per la disinstallazione del prodotto","",
    "0.0.3","11/04/2025","Luca Parise","Modifica alle immagini e continuazione stesura dei vari capitoli","",
    "0.0.2","10/04/2025","Luca Parise","Stesura dei capitoli rigurdanti le funzionalità del plug-in","",
    "0.0.1","19/03/2025","Luca Parise","Creazione documento, stesura introduzione e altri capitoli","",
  )
)

#outline(
  title: [Elenco delle immagini],
  target: figure.where(kind: image),
)

#pagebreak()

= Introduzione
"*Requirement Tracker per Visual Studio Code*" è un plug-in progettato per l'omonimo editor, con l'obiettivo di supportare l'analisi dei requisiti software. Dato un insieme di requisiti, sia tracciati che non tracciati, il plug-in esegue un'analisi approfondita e fornisce una valutazione del loro grado di implementazione all'interno del codice sorgente.


== Scopo del documento
Il seguente manuale fornisce una guida dettagliata all'installazione, configurazione e utilizzo del plug-in. L'obiettivo è consentire agli utenti di comprendere il funzionamento dello strumento e di sfruttarne le funzionalità per il monitoraggio e la valutazione dei requisiti software all'interno del codice sorgente. 
\ \
In particolare, il documento si propone di: 

- Fornire le istruzioni passo-passo per l'installazione e la configurazione
- Descrivere le funzionalità principali del plug-in
- Spiegare come eseguire l'analisi dei requisiti e interpretare i risultati 




== Scopo del prodotto  
Il prodotto, un plug-in per Visual Studio Code chiamato "Requirement Tracker",
è progettato per automatizzare il tracciamento dei _requisiti_#super("G") nei progetti software complessi,
con un focus particolare sull'ambito embedded. L'obiettivo principale è migliorare la qualità
e la chiarezza dei requisiti, fornendo suggerimenti basati sull'analisi di un'intelligenza artificiale,
riducendo al contempo i tempi e gli errori legati alla verifica manuale dell'implementazione nel codice
sorgente. Il plug-in adotta un'architettura modulare che consente un'estensibilità semplice, rendendolo
facilmente adattabile a nuove funzionalità o esigenze future.

== Glossario 
I termini ambigui che necessitano di una spiegazione sono contrassegnati da una #super("G") come apice alla loro prima occorrenza nei documenti. Tutti i termini da glossario sono riportati in ordine alfabetico
nell'omonimo documento.

/*----------------------------------------------------*/
/*                                                    */
/*                  INSTALLAZIONE                     */
/*                                                    */
/*----------------------------------------------------*/
= Installazione
== Requisiti
Sono necessarie le seguenti tecnologie installate:

- _*Node.js*_#super("G") (versione 20.x#super("G") o superiore)
- _*npm*_#super("G") (versione 10.9.0 o superiore)
- _*TypeScript*_#super("G") (versione 5.8.2 o superiore)
- _*Visual Studio Code*_#super("G") (versione 1.95.0 o superiore)
- _*Ollama*_#super("G") (versione 0.6.5 o superiore) 



=== Come creare il file .vsix

Per creare un _file *.vsix*_#super("G") (che è il pacchetto installabile di una estensione per Visual Studio Code), è necessario usare lo strumento _*vsce*_#super("G") (Visual Studio Code Extension Manager). \
Di seguito i vari passaggi per creare tale pacchetto: 

- *1)* Aprire il terminale e installare *vsce* (Visual Studio Code Extension Manager), con il comando:

#align(center, "$ npm install -g vsce" )

- *2)* Navigare con il terminale fino alla cartella della tua estensione. Quindi vai nella cartella in cui si trova il file *package.json* della tua estensione. Puoi usare il seguente comando per navigare nella cartella:
#align(center, "$ cd /path/to/your/extension" )

- *3)* Effettuare la _build_#super[G] del file .vsix con il seguente comando, il quale genera un file .vsix, ad esempio nome-estensione-0.0.1.vsix: 

#align(center, "$ vsce package" )



- *4)* (Facoltativo) Ignorare i file non necessari. È possibile usare un file .vscodeignore nella _root directory_#super[G] della tua estensione per escludere i file o cartelle (come node_modules, test/, ecc.) dal pacchetto finale. \

#pagebreak()

=== Come installare il plug-in

Una volta creato il pacchetto .vsix come delineato nel capitolo precedente, è possibile installare il plug-in in Visual Studio Code. Per farlo, segui questi passaggi: \ \
- *1)* Aprire Visual Studio Code \
- *2)* Aprire un terminale e navigare nella cartella in cui hai salvato il file .vsix. Puoi usare il comando: 
#align(center, "$ cd /path/to/your/extension" ) 

- *3)* Effettuare la build del file .vsix con il seguente comando, il quale genera un file .vsix, ad esempio nome-estensione-0.0.1.vsix: 
#align(center, "$ vsce package" )

- *4)* Se l'estensione non risulta visibile, provare a riavviare Visual Studio Code. 
- *5)* Verificare che l'estensione sia stata installata correttamente: È possibile farlo accedendo alla sezione delle estensioni di Visual Studio Code e cercando il nome del plug-in oppure, tramite terminale, utilizzando il seguente comando: 
#align(center, "$ code --list-extensions" )
\
A questo punto, l'estensione dovrebbe risultare installata con successo. Per utilizzarla, è necessario che Ollama sia attivo e configurato con un _modello LLM_#super("G"). Per ulteriori dettagli, consultare il capitolo successivo. 



=== Attivare Ollama 
Se Ollama non è stato ancora scaricato ed installato, si consiglia di consultare la documentazione ufficiale disponibile al seguente link "https://ollama.com/" (14/04/2025).

Per utilizzare l'estensione, è necessario che Ollama sia attivo e in ascolto sulla porta standard 11434. A tal fine, è possibile cercare e avviare l'icona di Ollama una volta installato oppure, aprire un terminale ed eseguire il comando \ \ 
#align(center, "$ ollama run nome_modello" ) \
dove "nome_modello" rappresenta il modello utilizzato. Di default, l'estensione utilizza il modello *llama3.2:3b*, ma è possibile modificarlo in qualsiasi momento accedendo alle impostazioni dell'estensione. Per ulteriori dettagli, si rimanda al capitolo dedicato alla configurazione del modello LLM.


=== Installazione dell'immagine docker

Per poter utilizzare correttamente il plug-in, è necessario eseguire un _server_#super("G") esterno che gestisca le richieste in arrivo. Questo server è realizzato come una REST API che può essere facilmente avviata e gestita tramite _Docker_#super("G"), una tecnologia che consente di creare ambienti isolati e replicabili chiamati _container_#super(" G").

L'utilizzo di Docker permette di semplificare il processo di configurazione, evitando problemi legati a incompatibilità tra versioni di librerie o ambienti operativi. Seguendo i passaggi descritti in questa sezione, sarai in grado di:
- Installare Docker sul tuo sistema (se non già presente)
- Costruire localmente l'_immagine_#super(" G") dell'applicazione partendo da un file _Dockerfile_#super(" G")
- Verificare che l'immagine sia stata correttamente creata
- Avviare un container funzionante, pronto a ricevere ed elaborare richieste

L'intera procedura richiede pochi comandi da terminale ed è stata progettata per essere semplice e accessibile anche a chi non ha una lunga esperienza con Docker.
Assicurati di avere una connessione a internet attiva durante l'installazione e, se lavori su un sistema Linux, di avere i permessi necessari per eseguire i comandi come amministratore.

- *1)* Prima di tutto, è necessario verificare che Docker sia installato sul sistema. È possibile scaricare Docker Desktop (per Windows e macOS) oppure installare Docker Engine (per Linux) seguendo la guida ufficiale disponibile al link "https://docs.docker.com/get-docker/" (14/04/2025).
Una volta installato, verificare che Docker sia correttamente attivo eseguendo da terminale il comando: 

#align(center, "$ docker --version")
Se il comando restituisce la versione di Docker, l'installazione risulta completata con successo. 

- *2)* Scaricare il Dockerfile presente all'interno della repository del prodotto e costruire localmente l'immagine attraverso il comando (assicurarsi di essere nella directory in cui si trova il file):

#align(center, "$ docker build -t nome_immagine .")

- *3)* Verificare che l'immagine sia presente usando il comando: 
#align(center, "$ docker images")
\ \
- *4)* Per eseguire l'immagine e creare il container, utilizzare il comando: 
#align(center, "$ docker run nome_immagine")




==== Attivare il server manualmente

Per fare questo è necessario posizionarsi nella cartella API in cui si trova il codice in _typescript_#super(" G") che gestisce il server. Poiché viene usato node, sarà necessario convertire il codice in _javascript_#super(" G"). Per fare ciò, aprire un terminale, posizionarsi sulla cartella del codice ed eseguire il comando

#align(center, "$ npm install")
#align(center, "$ npx tsc")

Questi comandi installeranno le dipendenze e convertiranno il codice typescript in codice javascript in una cartella chiamata dist. 
Quindi, per avviare il server, spostarsi dal terminale sulla cartella dist e cercare il file main.js. Quindi eseguire il comando

#align(center, "$ node main.js")

Questo comando avvierà il server che rimarrà in ascolto delle richieste e le invierà ad Ollama. 


#pagebreak()
/*----------------------------------------------------*/
/*                                                    */
/*              CONFIGURAZIONE                        */
/*                                                    */
/*----------------------------------------------------*/
= Configurazione
/*----------------------------------------------------*/
==  Modello LLM

L'utente può impostare il modello da utilizzare nelle varie operazioni come mostrato in figura: 
#figure(
  image("../../../PB/Documentazione Esterna/src/MU/LLM_Configuration_settings.png", width: 120%),
  caption: "Configurazione del modello LLM",
)

Il modello LLM di Requirement Tracker per Visual Studio Code viene eseguito tramite Ollama, permettendo un'analisi locale dei requisiti software. Visto il rapido progresso e la continua uscita di nuovi modelli, il plug-in permette all'utente di poter scegliere quale modello utilizzare, purchè questo sia installato all'interno della macchina. \ 
Il plug-in permette di impostare un modello specifico per ognuna delle seguenti attività
- per analizzare la "code compliance" 
- per analizzare l'implementazione 
- per analizzare la descrizione dei requisiti

Per poter configurare il modello, l'utente deve accedere alle impostazioni della estensione installata ed inserire nei tre campi disponibili il nome del modello che vuole usare, come mostrato nelle figura di seguito :   

#figure(
  image("../../../PB/Documentazione Esterna/src/MU/Settings.png", width: 100%),
  caption: "Configurazione dei modelli",
)



/*----------------------------------------------------*/
== Soglia di accettazione

Un'altra configurazione permessa dal plug-in è l'impostazione della _soglia di accettazione_#super("G") di un requisito. Ad ogni analisi, infatti, ogni requisito riceve un punteggio da 0-100 e viene considerato "passed" o "not passed" a seconda del superamento di tale soglia. Per impostarla, andate sulle impostazioni ("Settings") del plug-in e inserite nel campo riguardante la soglia il valore che preferite come mostrato di seguito in figura : 
/*
#figure(
  image("../../../PB/Documentazione Esterna/src/MU/soglia.png", width: 15%),
  caption:"Soglia di accettazione",
)
*/


/*----------------------------------------------------*/
#pagebreak()
= Istruzioni all'uso 
== Prerequisiti 
Se si è arrivati qui, allora il plug-in risulta installato e pronto per l'uso. \ 
Quindi, cliccare sull'icona del plug-in presente nella colonna a sinistra della finestra di Visual Studio Code per aprire la finestra di analisi dei requisiti. L'icona è mostrata nella figura sottostante.
#figure(
  image("../../../PB/Documentazione Esterna/src/MU/logo.png", width: 15%),
  caption:"Icona del plug-in",
) 
/*----------------------------------------------------*/
== Importazione dei requisiti  
Per poter usare il plug-in è necessario importare i requisiti da analizzare. Per fare ciò, cliccate
sull'icona denominata *"Load Requirements"* mostrata in figura.
#figure(
  image("/PB/Documentazione Esterna/src/MU/load_requirements.png", width: 40%),
  caption:"Icona per l'importazione dei requisiti",
)
Una volta cliccato sull'icona verrà aperto il _file system_#super(" G") di sistema da cui selezionare il *file CSV* contenente i requisiti. In caso venga selezionato un file di formato diverso o non valido, il plug-in restituirà un messaggio di errore. \
\

Una volta importati, i requisiti verrano presentati in una lista nella sezione Requirements, come mostrato nella seguente figura: 

#figure(
  image("/PB/Documentazione Esterna/src/MU/requirements.png", width: 30%),
  caption:"Requisiti importati",
)

La lista, una volta selezionato un file CSV valido, elencherà per ogni requisito all'interno del documento: 
- ID 
- Descrizione
- Tracciabilità nel codice sorgente (solo se presente nel file CSV precedentemente caricato)

In caso di requisiti molto lunghi o di più righe sarà sufficiente posizionare il cursore sopra il requisito per visualizzare il testo completo.

  



#pagebreak()
/*----------------------------------------------------*/
== Analisi dell'implementazione
Una volta importati i requisiti è possibile procedere con l'analisi dell'implementazione. Questa funzionalità serve a tracciare i requisiti nel codice sorgente qualora questi non fossero già tracciati (funziona anche nel caso lo fossero). \ 
Per farlo, cliccate sull'icona *"Implementation Analysis "* mostrata in figura.
#figure(
  image("/PB/Documentazione Esterna/src/MU/implementation_analysis.png", width: 40%),
  caption:"Bottone per l'analisi dell'implementazione",
)
Una volta eseguita e completata l'analisi, ad ogni requisito verranno associate delle linee di codice che indicano il tracciamento del requisito all'interno del codice sorgente. \
In caso di requisiti non tracciati, il plug-in restituirà un messaggio di errore.
La figura seguente mostra il tracciamento nella sezione "Requirements": \
#figure(
  image("/PB/Documentazione Esterna/src/MU/tracciamento.png", width: 29%),
  caption:"Tracciabilità di un requisito",
)
#pagebreak()


== Analisi dei requisiti
Questà funzionalità serve a valutare la qualità dei requisiti e il loro grado di implementazione nel codice sorgente. Una volta importati i requisiti, cliccate sull'icona *"Analyze Requirements"* mostrata in figura.
#figure(
  image("/PB/Documentazione Esterna/src/MU/Analyze_Requirements.png", width: 40%),
  caption:"Bottone per l'analisi dei requisiti",
)


In questo modo il plug-in eseguirà un'analisi approfondita di tutti i requisiti presenti nella lista. Potrete vedere in basso a destra della finestra un'icona di avanzamento che indica il progresso dell'analisi. \
#figure(
  image("/PB/Documentazione Esterna/src/MU/analyze.png", width: 70%),
  caption:"Stato di avanzamento analisi dei requisiti",
)

Alla fine dell'analisi ogni requisito nella lista verrà aggiornato con i seguenti campi: 
- Result 
  - Result: passed/not passed
  - Code Compliance: 0-100
  - Issues: 
    - Issue 1
    - Issue ...
  - Suggestions: 
    - Suggestion 1
    - Suggestion ...
Inoltre, ad ogni requisito sarà associato un'icona che indica se lo stesso è passato o meno all'analisi. Di seguito una figura che mostra una generica lista a seguito dell'analisi.
#figure(
  image("/PB/Documentazione Esterna/src/MU/analisi_ended.png", width: 50%),
  caption:"Risultato dell'analisi",
)
#pagebreak()
/*----------------------------------------------------*/
== Esportazione requisiti

Il plug-in presenta anche la funzione di esportazione, in formato _CSV_#super(" G"), dei risultati dell'analisi, qualora voleste salvarli. Per fare ciò premete 
sul pulsante *"Export Requirements"* mostrato nella seguente figura. 
#figure(
  image("/PB/Documentazione Esterna/src/MU/Export_Requirements.png", width: 50%),
  caption:"Bottone per l'esportazione dei requisiti",
)
Quindi, una volta cliccato sul pulsante, verrà aperto il file system di sistema da cui selezionare la cartella in cui salvare il file CSV. \


#pagebreak()
/*----------------------------------------------------*/
== Ricerca requisiti 

Il plug-in presenta anche la funzione di ricerca dei requisiti attraverso una barra di ricerca in cui inserire il codice del requisito ricercato. Per farlo, basta cliccare sull'icona *"Search Requirements"* mostrata in figura.
#figure(
  image("/PB/Documentazione Esterna/src/MU/search.png", width: 50%),
  caption:"Campo di input per la ricerca dei requisiti",
)
La lista *Requirements* mostrerà solo i requisiti che contengono il codice (o parte di esso) inserito nella barra di ricerca. \
/*----------------------------------------------------*/
== Analisi di un singolo requisito 

Il plug-in offre la possibilità di analizzare un singolo requisito. Per farlo, basta cliccare sull'icona presente vicino al requisito che si desidera analizzare come mostrato in figura. 
#figure(
  image("/PB/Documentazione Esterna/src/MU/analisi_singola.png", width: 50%),
  caption:"Bottone per l'analisi di un singolo requisito",
)
#pagebreak()

/*----------------------------------------------------*/
== Analisi dell'implementazione di un singolo requisito

Il plug-in offre la possibilità di analizzare l'implementazione (tracciamento) di un singolo requisito. Per farlo, basta cliccare sull'icona presente vicino al requisito che si desidera analizzare come mostrato in figura.
#figure(
  image("/PB/Documentazione Esterna/src/MU/implementazione_singola.png", width: 70%),
  caption:"Bottone per l'analisi dell'implementazione di un singolo requisito",
)

/*----------------------------------------------------*/
== Filtraggio dei requisiti 

Oltre a poter cercare i requisiti a seconda del loro codice, è possibile filtrare i requisiti in base al loro codice o al loro stato di analisi. 

Ci sono quattro diversi modi in cui possono essere filtrati i requisiti: 
- In ordine *crescente* (a seconda del loro codice), premendo il pulsante *"Default Order"* mostrato in figura 
#figure(
  image("/PB/Documentazione Esterna/src/MU/default_order.png", width: 70%),
  caption:"Bottone per organizzare i requisiti in ordine di default",
)
#pagebreak()

- In ordine *"decrescente"*, premendo il pulsante *"Sort by ID (descending)"*. Mostrato in figura
#figure(
  image("/PB/Documentazione Esterna/src/MU/sort_by_ID.png", width: 70%),
  caption:"Bottone per organizzare i requisiti in ordine decrescente",
)

- A seconda del loro *stato di analisi*:
  - *Analizzati*, usando il bottone *"Show analyzed first"* mostrato in figura
  #figure(
  image("/PB/Documentazione Esterna/src/MU/show_analyzed_first.png", width: 70%),
  caption:"Bottone per mostrare prima i requisiti analizzati",
)
  - *Non Analizzati*, usando il bottone *"Show unanalyzed first"* mostrato in figura
  #figure(
  image("/PB/Documentazione Esterna/src/MU/show_unanalyzed_first.png", width: 70%),
  caption:"Bottone per mostrare prima i requisiti non analizzati",
)



== Approvazione di un requisito manuale

Il plug-in offre la possibilità di approvare manualmente un requisito. Per farlo, basta cliccare sull'icona presente vicino al requisito che si desidera approvare come mostrato in figura :
/*
#figure(
  image("/PB/Documentazione Esterna/src/MU/approvazione.png", width: 70%),
  caption:"Bottone per l'approvazione manuale di un requisito",
)
*/

#pagebreak()
/*----------------------------------------------------*/
/*                                                    */
/*                DISINSTALLAZIONE                    */
/*                                                    */
/*----------------------------------------------------*/

= Disinstallazione del plug-in 

La disinstallazione del plug-in risulta molto semplice. Per procedere, è necessario utilizzare l'interfaccia di Visual Studio Code. In basso a sinistra, cliccare sull'icona delle impostazioni a forma di ingranaggio e selezionare *"Extensions"*. A questo punto, comparirà la lista delle estensioni installate e raccomandate come mostrato in figura: 
#figure(
  image("/PB/Documentazione Esterna/src/MU/Extensions.png", width:30%),
  caption:"Icona delle estensioni",
)
Successivamente, individuare l'estensione *Requirement Tracker* e cliccare sull'icona a forma di ingranaggio vicino ad essa. Verrà visualizzato un menù a tendina in cui selezionare *"Uninstall"* come mostrato in figura:
#figure(
  image("/PB/Documentazione Esterna/src/MU/Uninstall.png", width:30%),
  caption:"Icona del plug-in",
)
Dopo aver cliccato su Uninstall, l'estensione verrà disinstallata e non sarà più visibile nella lista delle estensioni installate. \






