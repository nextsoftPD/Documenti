#import "../../../assets/template_v2.0.0.typ": project;

#show: project.with(
  title: "Manuale Utente",
  redattori: ("Luca Parise",),
  verifica: ("",),
  approvazione: ("",),
  uso: "Esterno",
  version: "0.0.0",
  date: "19/03/2026",
  versionamento: (
    "0.0.1","19/03/2025","Luca Parise","Creazione documento, stesura introduzione e altri capitoli","",
    "","","","","",
  )
)
/*----------------------------------------------------*/
/*                                                    */
/*               INTRODUZIONE                         */
/*                                                    */
/*----------------------------------------------------*/

= Introduzione
"*Requirement Tracker per Visual Studio Code*" è un plug-in progettato per l'omonimo editor, con l'obiettivo di supportare l'analisi dei requisiti software. Dato un insieme di requisiti, sia tracciati che non tracciati, il plug-in esegue un'analisi approfondita e fornisce una valutazione del loro grado di implementazione all'interno del codice sorgente.


== Scopo del documento
Il seguente manuale fornisce una guida dettagliata all'installazione, configurazione e utilizzo del plug-in. L'obiettivo è consentire agli utenti di comprendere il funzionamento dello strumento e di sfruttarne appieno le funzionalità per il monitoraggio e la valutazione dei requisiti software all'interno del codice sorgente. 
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

- Node.js
- npm
- TypeScript (installabile con npm install -g typescript)
- Visual Studio Code
- Ollama attivo sulla porta standard

=== Requisiti minimi
=== Requisiti consigliati 

/*----------------------------------------------------*/
/*                                                    */
/*              CONFIGURAZIONE                        */
/*                                                    */
/*----------------------------------------------------*/
= Configurazione
/*----------------------------------------------------*/
==  Modello LLM

Il modello LLM di Requirement Tracker per Visual Studio Code viene eseguito tramite Ollama, permettendo un'analisi locale dei requisiti software. Esamina la qualità testuale dei requisiti e verifica la loro implementazione nel codice sorgente, restituendo un punteggio da 0 a 100 per indicare il grado di conformità. Inoltre, aiuta a identificare le sezioni di codice correlate ai requisiti e consente la configurazione di modelli personalizzati per ottimizzare le prestazioni dell’analisi.


=== Prerequisiti
I modelli di Ollama utilizzati sono configurabili tramite un file dedicato: config.json. Modello di default: llama3.2:3b \
- Assicurati che Ollama sia attivo sulla porta 11434 prima di utilizzare l'estensione e che i relativi modelli siano disponibili.\
- La porta diversa da quella di default si puo' specificare nel file: .env insieme alla porta dell'API.\
- Nel file config.json del plugin si puo' modificare l'url del server node.

=== Come configurare il modello LLM ? 
Clicca qui > Clicca la > E Uala
/*----------------------------------------------------*/
== Soglia di accettazione
Quando un requisito viene sottoposto ad analisi, il modello LLM ne valuta l'implementazione nel codice sorgente e assegna un punteggio numerico compreso tra 0 e 100. Questo valore indica il grado di conformità del codice rispetto al requisito, fornendo una misura quantitativa della correttezza e completezza dell'implementazione.
=== Prerequisiti

=== Come configurare la soglia dei requisiti ? 
/*----------------------------------------------------*/
= Istruzioni all'uso 
== Prerequisiti 
/*----------------------------------------------------*/
== Importazione requisiti  
=== Prerequisiti
Clicca icona plug-in > Premi bottone carica Requisiti > Scegli il documento in csv contentente i requisiti (tracciati o non tracciati) > Ora sei pronto ad analizzare i requisiti (sempre che il csv sia valido)
/*----------------------------------------------------*/
== Analisi requisiti
=== Prerequisiti
/*----------------------------------------------------*/
== Esportazione requisiti
=== Prerequisiti



/*----------------------------------------------------*/
/*                                                    */
/*                DISINSTALLAZIONE                    */
/*                                                    */
/*----------------------------------------------------*/

= Disinstallazione del plug-in 



/*----------------------------------------------------*/
/*                                                    */
/*                 ELENCO IMMAGINI                    */
/*                                                    */
/*----------------------------------------------------*/

= Elenco delle immagini 





