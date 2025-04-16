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
    "0.0.1","19/03/2025","Luca Parise","Creazione documento, stesura introduzione e altri capitoli","",
    "0.0.2","10/04/2025","Luca Parise","Stesura dei capitoli rigurdanti le funzionalità del plug-in","",
    "0.0.3","11/04/2025","Luca Parise","Modifica alle immagini e continuazione stesura dei vari capitoli","",
    "0.0.4","12/04/2025","Luca Parise","Aggiunto capitolo per la disinstallazione del prodotto","",
    "0.0.5","14/04/2025","Luca Parise, Maria Fuensanta Trigueros Hernandez","Aggiunto capitolo della configurazione","",
    "0.1.0","16/04/2025","Malik Giafar Mohamed, Luca Parise","Modificato il path per le immagini e migliorato il testo","",
    "","","","","",
    "","","","","",
    "","","","","",
    "","","","","",
    "","","","","",
    "","","","","",
    "","","","","",
    "","","","","",
  )
)

#outline(
  title: [Elenco delle immagini],
  target: figure.where(kind: image),
)

#pagebreak()
/*----------------------------------------------------*/
/*                                                    */
/*               INTRODUZIONE                         */
/*                                                    */
/*----------------------------------------------------*/

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
Il plug-in è progettato per supportare gli sviluppatori e i team di progetto nel tracciamento e nella verifica dei requisiti software. Il plug-in analizza il codice sorgente per identificare il livello di implementazione dei requisiti, fornendo una valutazione chiara e strutturata.  

Il prodotto sfrutta l’intelligenza artificiale basata su modelli di linguaggio di grandi dimensioni (LLM) per migliorare l’analisi del codice e il riconoscimento dei requisiti. Grazie a questa tecnologia, il plug-in è in grado di comprendere il contesto del codice sorgente, rilevare correlazioni con i requisiti specificati e suggerire miglioramenti o integrazioni.  

L'obiettivo principale è migliorare la gestione dei requisiti all'interno del ciclo di sviluppo, garantendo maggiore coerenza tra specifiche e codice, riducendo il rischio di requisiti mancanti o non conformi.


== Glossario 
Per evitare ambiguità relative alle terminologie utilizzate è stato creato un documento denominato *Glossario*. 
Questo documento comprende tutti i termini tecnici scelti dai membri del gruppo e utilizzati nei vari documenti con le relative definizioni. Tutti i termini inclusi in questo glossario vengono segnalati all'interno del documento con l'apice #super("G") accanto alla parola.

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

Per creare un _file *.vsix*_#super("G") (che è il pacchetto installabile di una estensione per Visual Studio Code), bisogna usare lo strumento _*vsce*_#super("G") (Visual Studio Code Extension Manager). \
Di seguito i vari passaggi per creare tale pacchetto: 

- *1)* Apri il terminale e installa *vsce* (Visual Studio Code Extension Manager), se ancora non lo hai installato, con il comando:

#align(center, "$ npm install -g vsce" )

- *2)* Naviga con il terminale fino alla cartella della tua estensione. Quindi vai nella cartella in cui si trova il file *package.json* della tua estensione. Puoi usare il seguente comando per navigare nella cartella:
#align(center, "$ cd /path/to/your/extension" )

- *3)* Costruisci il file .vsix con il seguente comando, il quale genera un file .vsix, ad esempio nome-estensione-0.0.1.vsix: 

#align(center, "$ vsce package" )



- *4) (Facoltativo)* Ignora i file non necessari. Puoi usare un file .vscodeignore nella root della tua estensione per escludere i file o cartelle (come node_modules, test/, ecc.) dal pacchetto finale. \

#pagebreak()

=== Come installare il plug-in

Una volta creato il pacchetto .vsix come delineato nel capitolo precedente è possibile installare il plug-in in Visual Studio Code. Per farlo, segui questi passaggi: \ \
- *1)* Apri Visual Studio Code \
- *2)* Apri un terminale e naviga nella cartella in cui hai salvato il file .vsix. Puoi usare il comando: 
#align(center, "$ cd /path/to/your/extension" ) 

- *3)* Usa il seguente comando per installare il pacchetto .vsix:  
#align(center, "$ code --install-extension nome-estensione-0.0.1.vsix" ) 

- *4)* Se non vedi la estensione installata prova a riavviare Visual Studio Code 
- *5)* Verifica che l'estensione sia installata correttamente. Puoi farlo andando nella sezione delle estensioni di Visual Studio Code e cercando il nome del plug-in oppure, via terminale usando il seguente comando: 
#align(center, "$ code --list-extensions" )
\
Ora l'estensione dovrebbe essere stata installata con successo. Per poterla usare avrete anche bisogno di Ollama attivo e configurato con un _modello LLM_#super("G"). Per farlo leggete il prossimo capitolo. 



=== Attivare Ollama 
Se non avete ancora scaricato ed installato Ollama vi rimando alla documentazione ufficiale che potete trovare al seguente link "https://ollama.com/" (14/04/2025).

Per usare l'estensione è necessario che Ollama sia attivo e stia ascoltando sulla porta standard 11434.
Per fare ciò, potete cercare e cliccare sull'icona di Ollama una volta che è stato installato oppure, aprite un terminale e digitate il comando \ \ 
#align(center, "$ ollama run nome_modello" ) \
dove "nome_modello" indica il modello usato. Di base l'estensione usa il modello *llama3.2:3b* ma potete cambiarlo in qualsiasi momento andando sulle impostazioni dell'estensione. Per fare questo vi rimando al capitolo apposito per la configurazione del modello LLM. 


=== Installazione dell'immagine docker

Per poter utilizzare correttamente il plug-in, è necessario eseguire un _server_#super("G") esterno che gestisca le richieste in arrivo. Questo server è realizzato come una REST API che può essere facilmente avviata e gestita tramite _Docker_#super("G"), una tecnologia che consente di creare ambienti isolati e replicabili chiamati _container_#super(" G").

L’utilizzo di Docker permette di semplificare il processo di configurazione, evitando problemi legati a incompatibilità tra versioni di librerie o ambienti operativi. Seguendo i passaggi descritti in questa sezione, sarai in grado di:
- Installare Docker sul tuo sistema (se non già presente)
- Costruire localmente l’_immagine_#super(" G") dell’applicazione partendo da un file _Dockerfile_#super(" G")
- Verificare che l’immagine sia stata correttamente creata
- Avviare un container funzionante, pronto a ricevere ed elaborare richieste

L’intera procedura richiede pochi comandi da terminale ed è stata progettata per essere semplice e accessibile anche a chi non ha una lunga esperienza con Docker.
Assicurati di avere una connessione a internet attiva durante l’installazione e, se lavori su un sistema Linux, di avere i permessi necessari per eseguire i comandi come amministratore.

- *1)* Prima di tutto assicurati di aver installato Docker sul tuo sistema. Puoi scaricare Docker Desktop (per windows e macOS) oppure installare Docker Engine (per Linux) seguendo la guida ufficiale disponibile al link "https://docs.docker.com/get-docker/" (14/04/2025).
Una volta installato, verifica che docker sia correttamente attivo eseguendo da terminale il comando: 

#align(center, "$ docker --version")
Se il comando restituisce la versione di docker, l'installazione è avvenuta con successo. 

- *2)* Scarica il Dockerfile presente all'interno della repository del prodotto e costruite localmente l'immagine attraverso il comando (assicuratevi di essere nella directory in cui si trova il file)

#align(center, "$ docker build -t nome_immagine .")

- *3)* Verifica che l'immagine sia presenta usando il comando 
#align(center, "$ docker images")
\ \
- *4)* Per eseguire l'immagine e creare il container usa il comando 
#align(center, "$ docker run nome_immagine")




==== Attivare il server manualmente

Per fare questo dovete posizionarvi nella cartella API in cui troverete il codice in _typescript_#super(" G") che gestisce il server. Poichè viene usato node sarà necessario convertire il codice in _javascript_#super(" G"). Per fare ciò aprite un terminale, posizionatevi sulla cartella del codice ed eseguite il comando

#align(center, "$ npm install")
#align(center, "$ npx tsc")

Questi comandi installeranno le dipendenze e convertiranno il codice typescript in codice javascript in una cartella chiamata dist. 
Quindi per avviare il server spostatevi dal terminale sulla cartella dist e cercate il file main.js. Quindi eseguite il comando

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
  image("../../../PB/Documentazione Esterna/src/MU/LLM_Configuration_Settings.png", width: 120%),
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

#figure(
  image("../../../PB/Documentazione Esterna/src/MU/soglia.png", width: 100%),
  caption:"Soglia di accettazione",
)


/*----------------------------------------------------*/
#pagebreak()
= Istruzioni all'uso 
== Prerequisiti 
Se siete arrivati qui, allora avete installato il plug-in e siete pronti ad usarlo. \ 
Quindi, cliccate sull'icona del plug-in presente nella colonna a sinistra della finestra di visual studio code per aprire la finestra di analisi dei requisiti. L'icona è mostrata nella figura sottostante.
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

La disinstallazione del plug-in è molto semplice. Per farlo basta usare l'interfaccia di Visual Studio Code. Andate in basso a sinistra e cliccate sull'icona delle impostazioni a forma di ingranaggio e selezionate *"Extensions"*. Fatto ciò, vi comparirà la lista delle estensioni  installate e raccomandate come in figura : 
#figure(
  image("/PB/Documentazione Esterna/src/MU/Extensions.png", width:30%),
  caption:"Icona delle estensioni",
)
Quindi, cercate l'estensione *Requirement Tracker* e cliccate sull'icona a forma di ingranaggio vicino ad essa. Vi comparirà un menù a tendina in cui dovrete selezionare *"Uninstall"* come mostrato in figura:
#figure(
  image("/PB/Documentazione Esterna/src/MU/Uninstall.png", width:30%),
  caption:"Icona del plug-in",
)
Una volta cliccato Uninstall l'estensione verrà disinstallata e non sarà più visibile nella lista delle estensioni installate. \






