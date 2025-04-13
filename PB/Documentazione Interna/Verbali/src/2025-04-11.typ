#import "../../../../assets/template_v2.0.0.typ": project;



#show: project.with(
  title: "Incontro con Bluewind s.r.l",
  redattori: ("Maria Fuensanta Trigueros Hernández",),
  verifica: ("Ion Cainareanu",),
  approvazione: ("Malik Giafar Mohamed",),
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
Durante questo incontro con l'azienda, l'obiettivo è stato quello di mostrare i progressi del progetto, evidenziando le novità e i cambiamenti rispetto all'ultima volta, e chiarire alcuni dubbi emersi durante lo sviluppo.

= Aggiornamento sullo sviluppo dell'MVP
Nella prima parte dell'incontro, l'obiettivo è stato quello di mostrare le nuove funzionalità implementate. I punti presentati sono stati i seguenti:

- Implementazione della funzionalità di tracciamento dei requisiti nel codice con l'utilizzo dell'embedding

- Realizzazione di un progetto di test utilizzando i requisiti forniti via mail

- Cambiamenti minori all'interfaccia grafica

- Implementazione della funzionalità di esportazione dei risultati

- Implementazione della funzionalità di riordino dei requisiti

= Aggiunta di un indicatore di conformità
Su suggerimento dell'azienda, è stato introdotto un indicatore che utilizza il colore verde o rosso per segnalare se il codice tracciato soddisfa effettivamente un requisito. Al momento, affinché un requisito sia considerato soddisfatto, la valutazione dovrà superare i 70 centesimi.

Durante la riunione, l'azienda ha chiesto chiarimenti sull'implementazione della validazione. È stato quindi spiegato che il processo si basa sull'utilizzo sequenziale di due modelli LLM: uno per l'analisi del codice e l'altro per l'analisi testuale del requisito. La validazione finale è ottenuta combinando i risultati prodotti dai due modelli.

= Funzionamento dell'algoritmo di embedding e gestione dei risultati incerti

Durante l'incontro si è spiegato il funzionamento dell'algoritmo utilizzato per l'embedding del codice. Il processo prevede la suddivisione dei singoli file in blocchi logicamente coerenti (ad esempio per funzioni), per affrontare il problema della finestra di contesto limitata, presente negli LLM. 

Tuttavia, è stato evidenziato un problema: in alcuni casi il requisito non è formulato in modo sufficientemente preciso, in questo modo il modello potrebbe indicare come rilevante un blocco che in realtà non lo è. 

È stata quindi aperta una discussione su come gestire questi casi. Le proposte considerate sono state:

- Effettuare una richiesta aggiuntiva a un modello più grande per confrontare i primi tre blocchi più promettenti.

- Offrire all'utente (sviluppatore) la possibilità di intervenire manualmente tramite il plug-in, ad esempio modificando il tracciamento.

Si è concluso che la seconda opzione risulta più flessibile e sostenibile nel lungo termine. Permettere un intervento manuale consente di rifinire il lavoro del modello senza pretendere una precisione assoluta da parte sua.

= Colori degli indicatori
Durante la discussione del punto precedente, l'azienda ha suggerito di aggiungere uno stato intermedio per gli indicatori. I possibili stati sono definiti come segue attraverso l'uso di colori:
- Rosso: il requisito non è stato soddisfatto
- Giallo: il requisito è stato tracciato, ma dall'analisi del plugin risulta che non è stato soddisfatto
- Verde: il requisito è stato soddisfatto secondo l'analisi del plugin
- Blu: il requisito è stato approvato dall'utente. In questo caso, il requisito è considerato soddisfatto.

È stato inoltre chiarito che, siccome l'utente deve avere l'ultima parola per l'approvazione dei requisiti, esso potrà modificare lo stato di un requisito da insufficiente a approvato.

= Test di unità e copertura
In risposta a un dubbio che era sorto da un requisito presente nel capitolato, abbiamo riconfermato che i test di unità debbano superare l'80% di copertura.
= Altri possibili indicatori
Abbiamo chiarito con il proponente che l'aggiunta di ulteriori impostazioni per il plugin non è necessaria. In definitiva deve essere possibile configurare i vari modelli LLM utilizzati e la soglia di accettabilità.

= Consegna dell'MVP
Durante la parte finale dell'incontro si arriva alla conclusione che la consegna sia del frontend che del backend deve avvenire tramite un repository GitLab. Sarà necessario inoltre fornire delle istruzioni per generare il file .vsix del plugin, in modo che l'azienda possa installarlo autonomamente.

Infine è stato chiarito che non è necessario includere Ollama nel pacchetto di consegna, in quanto l'azienda lo sta già utilizzando nella sua infrastruttura interna.
= Conclusione
L'incontro si è concluso con la conferma che l'azienda è soddisfatta dei progressi del progetto e che non sono emerse problematiche particolari. Si è deciso di organizzare un nuovo incontro nelle prossime settimane per mostrare una versione finale dell'MVP.