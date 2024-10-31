#import "../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Valutazione dei Capitolati",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Stefano Baso", "Maria Fuensanta Trigueros Hernandez",),
  verifica: ("Malik Giafar Mohamed",),
  approvazione: ("Marco Perazzolo","Luca Parise", "Ion Cainareanu"),
  uso: "Esterno",
  version: "1.2",
  date: "30/10/2024",
  //timebegin: "21:30",
  //timeend: "23:15",
  versionamento: (
    "1.2", "30/10/2024", "Stefano Baso\nMaria Fuensanta Trigueros Hernandez", "Revisione finale",
    "1.1", "29/10/2024", "Stefano Baso\nMalik Giafar Mohamed", "Revisione e aggiunta capitolato C1",
    "1.0", "28/10/2024", "Stefano Baso\nMaria Fuensanta Trigueros Hernandez", "Stesura prima versione",
  )
)

= Capitolato C5 - Progetto 3Dataviz
- *Proponente*: Sanmarco Informatica\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: Sviluppare un'interfaccia web per la visualizzazione dei dati attraverso un grafico 3D. 

== Dominio applicativo
Il progetto si concentra sulla visualizzazione interattiva e navigabile di una grande quantità di dati complessi (come dati metereologici su base annuale) attraverso  la loro rappresentazione con un grafico in 3D. L'interfaccia implementerà funzioni di zoom, rotazione e selezione per una più facile e accessibile interpretazione dei dati.

== Dominio tecnologico
Le librerie consigliate per la rappresentazione 3D da usare sono:
  - Three.js: una libreria JavaScript per la grafica 3D nei browser che utilizza WebGL.
  - D3.js: una libreria JavaScript utilizzata per creare visualizzazioni interattive e dinamiche dei dati.

Riguardo la costruzione dell'interfaccia grafica interattiva è consigliato usare React o Angular.

== Motivazione della scelta
I punti principali che hanno portato a scegliere questo capitolato come prima opzione sono:
  - la familiarità di alcuni componenti del gruppo con React e Angular per la gestione dell'interfaccia web
  - la flessibilità sulle scelte tecnologiche consentite
  - l'opportunità di imparare ad usare librerie di grafica 3D
  - la disponibilità da parte del proponente

== Conclusione
Per i motivi elencati in aggiunta ad un clima positivo sviluppatosi durante l'intervista con il proponente, il gruppo ha deciso di confermare la scelta di questo capitolato.

= Capitolato C7 - LLM Assistente Virtuale
- *Proponente*: Ergon Informatica Srl\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: sviluppare un assistente virtuale che assista i clienti per ricerche su prodotti dell'azienda

== Dominio applicativo
Il progetto mira alla creazione di un assistente virtuale, in grado di semplificare agli utenti l'accesso alle informazioni riguardati l'azienda: come domande riguardo i prodotti disponibili, vendite o assistenza generale. 

== Dominio tecnologico
L'assistente dovrà essere dotato di un LLM a scelta, sono stati proposti i modelli BLOOM, Falcon, Pythia e Minerva poichè si adattano con facilità alla complessità di dati da gestire.\
Riguardo alla persistenza dei dati invece viene consigliato l'uso di database relazionali come SQL Server o MySQL per la memorizzazione dei dati relativi ai prodotti.\
L'interfaccia per la comunicazione  tra il modello LLM e l'applicazione dell'utente sarà fatta tramite API REST. Le tecnologie per l'implementazione dell'API sono a discrezione del gruppo.

== Aspetti positivi
Le motivazioni che hanno portato a scegliere questo capitolato come seconda opzione sono le seguenti:
- le specifiche del progetto e risorse utilizzabili sono molto dettagliate
- l'opportunita, anche in prospettiva futura, di acquisire esperienza nello sviluppo di intelligenze artificiali
#pagebreak()
== Fattori critici
- possibili difficoltà nell'implementazione di un modello LLM accurato
- possibili complicazioni dovute allo sviluppo di un sistema di valutazione dei vettori poco efficiente

== Conclusione
La poca flessibilità sulle scelte tecnologiche ha influito sulla valutazione di questo capitolato che è stato inquadrato come seconda scelta anche a causa della maggior complessità rispetto alla prima scelta.


= Capitolato C9 - BuddyBot
- *Proponente*: AzzurroDigitale\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: sviluppo di un chat bot per raccogliere e rielaborare informazioni

== Dominio applicativo
L'assistente virtuale ha lo scopo di facilitare l'accesso dell'utente alle informazioni presenti in diverse piattaforme di collaborazione, permettendo tramite una chat di velocizzare il loro reperimento. In questo modo l'utente interagendo con l'assitente avrà tali informazioni a portata di mano.

== Dominio tecnologico
Le tecnologie consigliate sono state le seguenti:
- OpenAI: gestione delle risposte e comprensione della domanda
- Langchain: integrazione del modello usato (OpenAI o altri)
- Node/NestJS: framework per lo sviluppo orientato ai microservizi
- Angular: per lo sviluppo lato frontend
- Spring Boot: framework Java che offre un ambiente di sviluppo production-ready

== Aspetti positivi
Gli aspetti positivi per cui è stato scelto questo capitolato come terza opzione sono:
- la familiarità di alcuni membri del gruppo con OpenaAI con funzionalità di NPL e Langchain
- l'opportunita, anche in prospettiva futura, di acquisire esperienza nello sviluppo di intelligenze artificiali

== Fattori critici
- La difficoltà nell'acquisire dimestichezza con le varie scelte tecnologiche da adottare

== Conclusione
Il capitolato nonostante l'interesse dimostrato da alcuni membri del gruppo è stato posizionato come terza scelta in quanto abbiamo ritenuto di maggior interesse gli altri due progetti.

= Capitolato C1 - Artificial QI
- *Proponente*: Zucchetti\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: creare un sistema di valutazione delle risposte fornite da modelli differenti di AI

== Fattori critici
I fattori che hanno portato a scartare questo capitolato sono i seguenti:
- la curva di apprendimento alta per lo sviluppo
- l'interesse minore nello sviluppo di una AI di valutazione delle risposte rispetto ad altri progetti sullo stesso tema.

== Conclusione
Il progetto è stato valutato dal gruppo come (eventuale) quarta opzione ma di minore interesse a confronto con gli altri progetti scelti.


= Capitolato C2 - Vimar Geniale
- *Proponente*: Vimar Energia Positiva\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: sviluppo di un'interfaccia per installatori di Vimar

== Fattori critici
Le motivazioni che hanno portato a non scegliere questo capitolato sono:
- il poco interesse del gruppo verso questo tema
- i requisiti minimi richiesti e tecnologie proposte sono stati considerati troppo elevati.


= Capitolato C3 - Automatizzare le routine digitali tramite l'intelligenza generativa
- *Proponente*: Var Group S.p.A\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: creare un'applicazione per semplificare e automatizzare delle routine digitale

== Fattori critici
Questo capitolato non è stato scelto come opzione perchè:
- la creazione di un LLM risultava troppo complessa agli occhi del gruppo

= Capitolato C4 - NearYou
- *Proponente*: Sync Lab\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: sviluppo di un strumento di pubblicità personalizzata

== Fattori critici
I fattori per cui questo capitolato non è stato considerato nella scelta sono:
- il progetto proposto non è in linea con i valori morali dei membri del gruppo
- il poco interesse verso l'argomento e lo sviluppo


= Capitolato C6 - Sistema di gestione di un magazzino distribuito
- *Proponente*: M31 S.r.l.\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: sviluppo di un sistema distribuito e scalabile per la gestione di un inventario in una rete logistica distribuita

== Fattori critici
Le motivazioni che hanno portato a scartare questo progetto sono:
- la difficoltà nella sincronizzazione di dati in tempo reale
- la curva di apprendimento ampia per le richieste tecnologiche proposte


= Capitolato C8 - Requirement Tracker - Plug-in VS Code
- *Proponente*: Bluewind s.r.l.\
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin\
- *Obbiettivo*: sviluppo di un plug-in per implementare una nuova funzionalità su un STM32 microcontroller

== Fattori critici
Il gruppo ha deciso di escludere questo capitolato per i seguenti motivi:
- il basso interesse dimostrato verso il tema del progetto
- la poca applicazione futura ed esperienza ricavata dallo sviluppo
- la poca chiarezza nelle specifiche tecniche