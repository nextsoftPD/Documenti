#import "../../../../assets/template_v2.0.0.typ": project;

#show: project.with(
  title: "Preparazione all'incontro AdR",
  redattori: ("Marco Perazzolo",),
  verifica: ("Stefano Baso",),
  approvazione: ("Malik Giafar Mohamed",),
  uso: "Interno",
  version: "1.3",
  timebegin: "21:30",
  timeend: "23:30",
  date: "10/01/2025",
)


= Ordine del giorno
- Presentazione del backend funzionante
- Discussione degli Use Cases
- Aggiornamento sullo stato di scrittura dei documenti per l’RTB
- Modifiche retroattive ai documenti della milestone RTB
- Presentazione delle metriche nel Piano di Qualifica
- Rotazione dei ruoli e preparazione per l’incontro con il professor Cardin
- Assegnazione compiti e preparazione per il diario di bordo del 13 gennaio

= Resoconto
All’incontro odierno hanno partecipato tutti i membri.

== Presentazione del Backend funzionante
Durante la riunione è stato presentato il backend, che consente la valutazione dei requisiti software e del relativo codice con *Ollama* tramite un server *Node.js*. Il sistema si è dimostrato funzionante. Si è deciso che, in una fase successiva, il backend verrà integrato con il frontend (plugin) come parte del PoC.

== Discussione degli Use Cases
Alcuni use cases presenti nel documento di Analisi dei Requisiti sono stati presentati e discussi. Il gruppo ha concordato i prossimi passi, assegnando le attività relative alla creazione degli UML rappresentativi e alla stesura dei requisiti.

== Aggiornamento sullo stato di scrittura dei documenti per l’RTB
Sono stati mostrati e discussi i documenti relativi alle Norme di Progetto, al Piano di Progetto e al Piano di Qualifica. Sono state suggerite alcune modifiche, in particolare riguardo ai periodi menzionati nel Piano di Progetto, che dovrà essere ulteriormente migliorato.

== Modifiche retroattive ai documenti della Milestone RTB
Sono state concordate alcune modifiche retroattive ai documenti già inseriti nella milestone RTB:
- Modifica della denominazione dei file per il versionamento.
- Adozione di un nuovo template per i documenti, dal quale è stata rimossa la colonna "Approvazione" nella tabella dei versionamenti.

== Presentazione delle Metriche nel Piano di Qualifica
Nel documento di Piano di Qualifica sono state presentate le metriche che verranno utilizzate per valutare la qualità dei documenti (indice di Gulpease). È stato spiegato brevemente il funzionamento dell’indice, mentre le metriche relative alla qualità del codice saranno studiate e approfondite in seguito.

== Rotazione dei ruoli e preparazione per l’incontro con il Professor Cardin
Per prepararsi all’incontro con il professor Cardin, il gruppo ha definito una rotazione dei ruoli. Lo sviluppo dell'integrazione del PoC tra frontend e backend è stato temporaneamente sospeso per dare priorità alla finalizzazione dell'Analisi dei Requisiti, che riprenderà dopo l’incontro con il docente.

== Assegnazione compiti
I membri incaricati della finalizzazione dei documenti, una volta completate le ultime modifiche, inizieranno a collaborare all'Analisi dei Requisiti. Inoltre, un membro del gruppo è stato incaricato della preparazione del PowerPoint e della discussione durante il Diario di Bordo previsto per il 13 gennaio.

= Conclusioni
La riunione ha permesso di fare il punto sui progressi tecnici e documentali, con particolare attenzione al backend, agli use cases e ai documenti per l’RTB. È stato fissato il prossimo incontro per venerdì 17 gennaio, alle ore 21:30 su Discord.
