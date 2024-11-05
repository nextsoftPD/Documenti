#import "../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Preventivo Costi e\nAssunzione Impegni",
  redattori: ("Luca Parise",),
  verifica: ("Malik Giafar Mohamed","Ion Cainareanu","Marco Perazzolo"),
  approvazione: ("Maria Fuensanta Trigueros Hernandez", "Stefano Baso"),
  uso: "Esterno",
  version: "1.1",
  date: "30/10/2024",
  versionamento: (
    "1.2", "05/11/2024", "Malik Giafar Mohamed", "Modifica capitolato scelto e data di consenga","Luca Parise","Ion Cainareanu",
    "1.1", "30/10/2024", "Luca Parise", "Modifica alla data di consegna e alla suddivisione dei ruoli","","",
    "1.0", "28/10/2024", "Luca Parise", "Stesura prima versione","",""
    
  )
)

= Introduzione

A seguito di un'attenta analisi dei rimanenti capitolati e di una discussione approfondita tra i componenti del gruppo di lavoro, abbiamo elaborato il preventivo per la proposta dell'azienda *Ergon Informatica Srl* riguardante il progetto *LLM: Assistente virtuale*.


\



#set table(
  stroke: none,
  gutter: 0.2em,
  inset: (right: 1.5em),
)

#set table.hline(stroke: 0.6pt)


#table(
  columns:5,
  rows: 7,
  align: center,
  //contenuto tabella
  [ ], [Ore Per Ruolo], [Ore Per Membro], [Costo Unitario], [Costo totale ore] ,
  table.hline(),
  [ Responsabile ]    , [52]  , [9]   , [30 €]  , [1560 €] ,
  [ Amministratore ]  , [60]  , [10]  , [20 €]  , [1200 €] ,
  [ Verificatore ]    , [113] , [19]  , [15 €]  , [1695 €] ,
  [ Progettista ]     , [108] , [18]  , [25 €]  , [2700 €] ,
  [ Programmatore ]   , [135] , [22]  , [15 €]  , [2025 €] ,
  [ Analista ]        , [72]  , [12]  , [25 €]  , [1800 €] ,
  table.hline(),
  [TOT]               , [540] , [90]  , [130 €] , [*10980 €*],
)

= Ruoli 
I ruoli indicati nella tabella (e nel grafico seguente) sono suddivisi equamente tra i membri del gruppo, permettendo a ciascuno di acquisire esperienza in ogni ruolo.

== Responsabile
Il monte ore totale per questo ruolo, il quale si concentra principalmente sul coordinamento del gruppo di lavoro e sulla gestione delle risorse, sarà inferiore rispetto a quello degli altri ruoli. Questa decisione è stata presa anche considerando l'alto costo orario associato a tale ruolo, con l'obiettivo di contenere i costi complessivi del progetto.

== Amministratore
Questo ruolo prevede la supervisione del gruppo di lavoro, in collaborazione con il responsabile del progetto, oltre all'interazione con gli stakeholder e alla definizione del *way of working*. Analogamente al ruolo del responsabile, richiederà un monte ore inferiore rispetto agli altri ruoli.

== Analista
Studia i requisiti del progetto in base alle richieste degli stakeholders. Questo ruolo richiederà un monte ore superiore ai precedenti al fine di ottenere un prodotto software che rispetti al meglio le richieste e le aspettative. 

== Progettista 
Sulla base degli obiettivi da raggiungere definisce la struttura dati, le funzionalità ed i vincoli da rispettare. Si occupa, in altre parole di tradurre in un linguaggio tecnico, quelle che sono le esigenze del cliente. Visto che questo ruolo non utilizzerà tecnologie specifiche ma dovrà informasi su che strumenti utilizzare, ci aspettiamo un monte ore elevato rispetto agli altri ruoli. 
#pagebreak()
== Programmatore 
Oltre a fornire una stima sui tempi e sul costo per lo sviluppo, è responsabile per la costruzione del prodotto. È fondamentale che il programmatore comunichi con il progettista al fine di rispettare i requisiti tecnici, ridurre i rischi ed aumentare la probabilità di successo del progetto, consegnando un software privo di bug.
Come per il progettista, vista la nostra inesperienza nell'uso di tali tecnologie, prevediamo un monte ore elevato rispetto agli altri ruoli. 

== Verificatore 
Assicura il funzionamento che quanto fatto dai programmatori e dai progettisti sia in linea con le richieste, privo di malfunzionamenti, errori e difetti. Al fine di ottenere un prodotto solido e funzionante, prevediamo un monte ore elevato. 
\
\

== Grafico delle percentuali
#align(center)[
#image(
    "Ruoli.png", 
    width: 70%, 
    height: auto, 
    )  
]

\
\

= Criteri di rotazione dei ruoli
Al fine di garantire quanto detto al *Punto 2*, i ruoli inizialmente verranno assegnati in base alla disponibilità oraria del singolo membro del gruppo, più precisamente, in base alle ore settimanali di cui ciascun membro del gruppo dispone. Mentre verrà effettuata la rotazione dei ruoli al raggiungimento di determinate milestone. Dalla seconda rotazione il cambio del ruolo avverrà in funzione di quello precedente, in modo da ridurre il tempo di apprendimento e di adattamento al nuovo ruolo.


= Preventivo
Considerando le ore produttive messe a disposizione da ciascun membro del gruppo e la loro distribuzione tra i diversi ruoli, il totale del preventivo ammonta a *11.010,00 €*.


= Scadenza di consegna
Alla luce di quanto detto sopra, il gruppo NextSoft intende comunicare che si impegnerà a portare al termine il progetto didattico relativo al capitolato C5 entro il giorno *16/04/2025*.
