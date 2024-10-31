#import "../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Preventivo Costi e\nAssuzione Impegni",
  redattori: ("Luca Parise",),
  verifica: ("Malik Giafar Mohamed","Ion Cainareanu","Marco Perazzolo"),
  approvazione: ("Maria Fuensanta Trigueros Hernandez", "Stefano Baso"),
  uso: "Esterno",
  version: "1.1",
  date: "30/10/2024",
  versionamento: (
    "1.1", "30/10/2024", "Luca Parise", "Modifica alla data di consegna e alla suddivisione dei ruoli",
    "1.0", "28/10/2024", "Luca Parise", "Stesura prima versione",
  )
)

= Introduzione

A seguito di un'attenta analisi del capitolato e di una discussione approfondita tra i componenti del gruppo di lavoro, abbiamo elaborato il preventivo per la proposta dell'azienda *Sanmarco Informatica S.p.A.* riguardante il progetto *3DataViz*.

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
  [ Responsabile ]    , [54]  , [9]   , [30 €]  , [1620 €] ,
  [ Amministratore ]  , [60]  , [10]  , [20 €]  , [1200 €] ,
  [ Verificatore ]    , [114] , [19]  , [15 €]  , [1710 €] ,
  [ Progettista ]     , [108] , [18]  , [25 €]  , [2700 €] ,
  [ Programmatore ]   , [132] , [22]  , [15 €]  , [1980 €] ,
  [ Analista ]        , [72]  , [12]  , [25 €]  , [1800 €] ,
  table.hline(),
  [TOT]               , [540] , [90]  , [130 €] , [*11010 €*],
)

= Ruoli 
I ruoli indicati nella tabella (e nel grafico seguente) sono suddivisi equamente tra i membri del gruppo, permettendo a ciascuno di acquisire esperienza in ogni ruolo.
\
\
#align(center)[
#image(
    "Ruoli.png", 
    width: 70%, 
    height: auto, 
    )  
]

#pagebreak()

= Preventivo
Considerando le ore produttive messe a disposizione da ciascun membro del gruppo e la loro distribuzione tra i diversi ruoli, il totale del preventivo ammonta a *11.010,00 €*.

\
= Scadenza di consegna
Alla luce di quanto detto sopra, il gruppo NextSoft intende comunicare che si impegnerà a portare al termine il progetto didattico relativo al capitolato C5 entro il giorno *02/04/2025*.
