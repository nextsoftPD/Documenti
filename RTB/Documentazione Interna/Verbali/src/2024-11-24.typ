#import "../../../../assets/template_v2.0.0.typ": project;

#show: project.with(
  title: "Incontro",
  redattori: ("Stefano Baso",),
  verifica: ("Luca Parise",),
  approvazione: ("Luca Parise",),
  uso: "Interno",
  version: "1.0.0",
  timebegin: "15:30",
  timeend: "16:30",
  date: "24/11/2024",
)

= Ordine del giorno
- Definizione del way of working interno
- Formazione e gestione delle issues su GitHub Projects
- Formazione e gestione di commit e branch

= Resoconto
All'incontro hanno partecipato tutti i membri del gruppo, ad eccezione di Maria Fuensanta Trigueros Hernandez, assente per difficoltà di connessione.

== Revisione e definizione del way of working interno
È stata rivista, di comune accordo, l'organizzazione del lavoro interno. I principali aggiornamenti sono:

- Eliminazione del lavoro sincrono svolto durante le riunioni generali, al fine di ottimizzare il tempo e migliorare l'efficienza.
- Riduzione della durata delle riunioni, con una maggiore distribuzione delle attività in modalità asincrona.
- Il lavoro sincrono sarà limitato al resoconto settimanale dei task in corso e all'assegnazione di eventuali nuove attività di maggior importanza.
- Le attività di revisione, approvazione e controllo delle PR saranno anch'esse gestite in modalità asincrona.

== Formazione e gestione delle issues tramite GitHub Projects
Si è dedicato del tempo alla formazione e alla gestione delle issues in GitHub Projects. Le principali decisioni prese includono:

- Introduzione di una nuova colonna denominata "Reviewing", posizionata tra "In Progress" e "Done", per indicare i task completati ma in fase di approvazione.
- Per ogni nuovo task inserito nella colonna "To Do", il responsabile avrà l'onere di assegnarsi il task e aggiornare il suo stato, spostandolo nelle rispettive sezioni del board, in modo da garantire trasparenza e aggiornamento costante al gruppo.

== Linee guida per la gestione di commit e branch
Sono state definite le seguenti linee guida per una corretta gestione di commit e branch:

- Ogni nuova funzionalità verrà sviluppata in un branch dedicato, creato a partire dal branch principale.
- Una volta completato il task, il branch verrà unito al branch comune, previa revisione e approvazione.
- Per task relativi a bug fix o modifiche secondarie, si utilizzerà un branch specifico per ogni intervento.
