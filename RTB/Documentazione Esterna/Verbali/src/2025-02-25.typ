#import "../../../../assets/template_v2.0.0.typ": project;

#show: project.with(
  title: "Terzo Incontro con\nBluewind s.r.l",
  redattori: ("Ion Cainareanu",),
  verifica: ("Luca Parise",),
  approvazione: ("Stefano Baso",),
  uso: "Esterno",
  version: "1.0.0",
  timebegin: "16:30",
  timeend: "17:15",
  date: "25/02/2025",
)

= Introduzione
Durante il terzo incontro con l'azienda Bluewind s.r.l, sono stati discussi in modo approfondito gli use case e i requisiti del sistema. L'obiettivo principale dell'incontro era ottenere un riscontro sull'ultima versione dell'Analisi dei Requisiti e del Proof of Concept (PoC) aggiornato.

= Discussione sugli use case e requisiti
Abbiamo analizzato con attenzione i diversi scenari d'uso del sistema. Durante la discussione sono emerse alcune proposte di funzionalità aggiuntiva:
- possibilità di configurare i modelli LLM utilizzati per l'analisi, l'end point di ollama e la soglia di aderenza ai requisiti accettabile a lato front-end del plugin
- possibilità di avere i requisiti implementati in molteplici file come requisito opzionale
- visualizzare i risultati intermedi dell'analisi insieme al parametro "passed" globale che indica se il requisito è stato soddisfatto o meno.

= Presentazione del PoC aggiornato
La dimostrazione del PoC aggiornato ha riguardato le principali migliorie implementate rispetto alla versione precedente. Tra le principali novità presentate:
- Modifica della visualizzazione ad albero divisa in campi del requisito e risultati dell'analisi
- Traduzione dell'interfaccia grafica in inglese
- Integrazione tra il plugin e l'API REST
- Risultati dell'analisi su alcuni requisiti di esempio

= Conclusioni
L'azienda ha fornito un feedback positivo sul lavoro svolto finora e in particolare sul PoC.