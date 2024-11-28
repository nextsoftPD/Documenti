#import "../../../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Incontro con Bluewind s.r.l",
  redattori: ("Luca Parise",),
  verifica: ("Ion Cainareanu",),
  approvazione: ("Ion Cainareanu",),
  uso: "Esterno",
  version: "1.0",
  timebegin: "14:00",
  timeend: "14:45",
  date: "25/11/2024",
)

= Introduzione
Durante questo incontro, i membri del gruppo hanno avuto l'opportunità di conoscere l'azienda Bluewind Srl. Dopo una breve presentazione del gruppo, sono state poste alcune domande, che sono poi state oggetto di discussione approfondita. 

Al termine dell'incontro, l'azienda ha chiesto di definire nel prossimo futuro le modalità di interazione tra il gruppo e Bluewind Srl, specificando anche la distribuzione temporale delle stesse.
\
\



= Domande 

== Qual è il formato esatto dei requisiti che il plug-in dovrà analizzare? Sono testuali (pdf) o altro?
Il formato previsto per l'MVP è CSV, che rappresenta il requisito principale. In seguito, come requisito opzionale, si potrà implementare il supporto per il formato REQIF (basato su XML). Tuttavia, per la prima versione del progetto, l'obiettivo prioritario è garantire la compatibilità con il formato CSV.

== Come si prevede che il plug-in identifichi i collegamenti tra codice e requisiti? Commenti, euristiche AI?

L'azienda ci ha illustrato diverse modalità attraverso le quali è possibile collegare il codice sorgente ai requisiti. Ad esempio, uno degli approcci prevede che lo sviluppatore inserisca commenti specifici nel codice, progettati per guidare l'analisi da parte di un modello di linguaggio (LLM). 

Un'alternativa, invece, consiste nell'affidare all'LLM il compito di analizzare l'intero codice sorgente autonomamente, individuando le parti rilevanti e i requisiti associati a ciascuna di esse, con l'obiettivo di proporre eventuali miglioramenti.

Ci è stato inoltre spiegato che gli sviluppatori sono vincolati al rispetto di normative specifiche. Di conseguenza, prima di implementare qualsiasi modifica proposta, devono formalmente "accettarla" in conformità con tali regolamenti.

== Qual è il livello di integrazione richiesto con i modelli AI? Dovranno essere addestrati nuovi modelli o si utilizzeranno esclusivamente modelli pre-addestrati?

Data la natura non open-source dei progetti su cui l'azienda opera, ci è stato consigliato di utilizzare la piattaforma Ollama, che garantisce un elevato livello di privacy e tutela dei dati dei clienti oltre ad un vasto pool di modelli open-source disponibili.

In particolare, l'azienda suggerisce di selezionare, tra i modelli pre-addestrati disponibili online, quello più vicino alle nostre esigenze specifiche. Successivamente, è possibile perfezionare questo modello integrandolo con documenti, file, PDF e altri materiali forniti da noi, al fine di personalizzarlo e renderlo più adatto alle necessità del progetto.



== Come verrà testato il plug-in?
Il modello sarà testato su progetti già disponibili e accessibili al nostro team. Questo permetterà di valutare l'efficacia del modello nel soddisfare i requisiti e di apportare eventuali miglioramenti in base ai risultati ottenuti.
\
\
\
\
\
\
\

== Sono previsti limiti o preferenze sulle tecnologie per la visualizzazione grafica (ad esempio, librerie specifiche)? siamo liberi di selezionare noi?

Ci è stato raccomandato di aderire agli standard attualmente in uso nel settore. Inoltre, ci è stato suggerito di concentrarci inizialmente sulle tecnologie utilizzate per la creazione dei plugin, che di solito prevedono l'uso del linguaggio Javascript(Typescript). È stato anche confermato che abbiamo la libertà di valutare e scegliere le librerie più adatte alle nostre esigenze, garantendo così flessibilità nello sviluppo.

== Sono già disponibili esempi o dataset di riferimento per iniziare il lavoro? 

Ci viene confermato che l'utlizzo di manuali o documenti per l'addestramento dell'LLM è accettabile per l'azienda.
Inoltre, come già scritto precedentemente ci verrà fornito del codice sorgente su cui testare il nostro progetto. 

\
\

= Conclusioni

L’incontro si è concluso molto positivamente, con il proponente che si è dimostrato preparato e disponibile, le risposte date sono servite a inquadrare tempistiche e strumenti di sviluppo da utilizzare per il progetto. E’ stata molto apprezzata la flessibilità sulle tecnologie consentite.


