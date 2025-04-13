#import "../../../../assets/template_v2.0.0.typ": project;



#show: project.with(
  title: "Incontro con Bluewind s.r.l",
  redattori: ("Maria Fuensanta Trigueros Hernández",),
  verifica: (),
  approvazione: (),
  uso: "Esterno",
  version: "1.0.0",
  timebegin: "15:30",
  timeend: "16:05",
  date: "11/04/2025",
  lista_presenze: (
    "Ion Cainareanu","SI","",
    "Malik Giafar Mohamed","NO","Impegni personali",
    "Stefano Baso","NO","Impegni personali",
    "Marco Perazzolo ", "SI", "",
    "Luca Parise", "NO","Impegni personali",
    "Maria Fuensanta Trigueros Hernandez","SI","",
    ),
)

= Introduzione
Durante questo incontro con l’azienda, l’obiettivo è stato quello di mostrare i progressi del progetto, evidenziando le novità e i cambiamenti rispetto all’ultima volta, e chiarire alcuni dubbi emersi durante lo sviluppo.

= Presentazione del PoC aggiornato
Nella prima parte dell’incontro, l’obiettivo è stato quello di mostrare i cambiamenti e i miglioramenti apportati al PoC rispetto alla versione precedente. I punti presentati sono stati i seguenti:

- Implementazione della funzionalità di ricerca relativa all’implementazione dei requisiti

- Realizzazione di un piccolo progetto di test utilizzando i requisiti forniti via mail

- Dimostrazione dell’interfaccia, evidenziando i piccoli cambiamenti apportati

- Discussione sull’algoritmo utilizzato
- Tipi di modelli
- Funzionalità di esportazione
- Funzionalità per cambiare l’ordine della lista

= Aggiunto dei flag
Come suggerito dall’azienda, è stato introdotto un piccolo indicatore (flag), che può assumere il colore verde o rosso, per segnalare se il codice identificato corrisponde effettivamente a un requisito, ovvero se supera anche una valutazione qualitativa. Attualmente, la soglia impostata per considerare un requisito come valido è pari a 70 centesimi.
Una delle domande sollevate dall’azienda durante la riunione è stata relativa a come sia stata implementata questa validazione. A tal proposito, è stato spiegato che si utilizza il flow già presentato due chiamate fa. Questo processo prevede l’uso sequenziale di due modelli: uno per l’analisi del codice e l’altro per l’analisi testuale del requisito, la risposta finale risulta dalla combinazione delle valutazioni dei due modelli. 

= Funzionamento dell’algoritmo di embedding e gestione dei risultati incerti

Durante l’incontro si è spiegato il funzionamento dell’algoritmo utilizzato per l’embedding del codice. Il processo prevede la suddivisione dei singoli file in blocchi logicamente coerenti (ad esempio per funzioni), per affrontare il problema del contesto limitato. 

Tuttavia, è stato evidenziato un problema: in alcuni casi il requisito non è formulato in modo sufficientemente preciso (es. requisito 3), e il modello può indicare come rilevante un blocco che in realtà non lo è. 

È stata quindi aperta una discussione su come gestire questi casi. Le proposte considerate sono state:

- Effettuare una richiesta aggiuntiva a un modello più grande per confrontare i primi tre blocchi più promettenti.

- Offrire all’utente (sviluppatore) la possibilità di intervenire manualmente tramite il plug-in, ad esempio scegliendo o confermando il blocco corretto.

Si è concluso che la seconda opzione risulta più flessibile e sostenibile nel lungo termine. Permettere un intervento manuale consente di rifinire il lavoro del modello senza pretendere una precisione assoluta da parte sua. 

= Colori delle flags
Durante la discussione del punto precedente, l’azienda ha suggerito di aggiungere colori agli indicatori o alle flags. In questo punto è stato proposto di aggiungere un colore, come il blu, per indicare che il requisito è stato approvato dall’utente, poiché è necessario effettuare una revisione manuale successivamente. Una domanda che nasce da parte nostra è se sia possibile passare direttamente da un requisito considerato insufficiente o contrassegnato con una bandiera rossa a uno approvato, se così decide l’utente. La risposta a questa domanda è stata affermativa, in quanto è l’utente ad avere l’ultima parola.

= Piccole domande
- Alcuni requisiti che dobbiamo soddisfare, per esempio, c'è un requisito che parla di test con test che superano il 80%, quelli sono i test di unità? La risposta è stata affermativa.
- C'è un dubbio su come procedere con le estensioni e con l’architettura del front-end. Viene presentata l’idea di utilizzare un’architettura a strati, e la domanda è se secondo loro questo sia un approccio accettabile per il front-end. La loro risposta è stata che sicuramente sì, anche se la parte difficile sarà capire come realizzare il front-end con i tacchi, quella sarà la parte più critica.
- Viene posta la domanda se hanno altri valori che vogliono indicare e che possiamo realmente aggiungere alla lista di configurazione, oltre ai template e ai diversi tipi di conformità che stiamo già gestendo. La loro risposta è stata negativa.

= Consegna finale
Durante la parte finale dell’incontro viene posta la domanda su come debba avvenire la consegna finale. Si arriva alla conclusione che deve essere tramite un repository GitLab o, in ogni caso, c’è anche la possibilità di consegnare, per esempio, il file .vsix. Viene inoltre chiarito che nella consegna dobbiamo indicare la versione di Ollama che stiamo utilizzando, così che loro possano utilizzarla correttamente. 

= Conclusione
L’azienda ci ha confermato che siamo in linea con le loro aspettative e abbiamo espresso l’intenzione di organizzare un altro incontro nelle prossime settimane per poter mostrare i progressi e l’architettura finalizzata.