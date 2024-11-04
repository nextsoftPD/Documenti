#import "../../assets/template.typ": project

// Esempio di utilizzo
#show: project.with(
  title: "Lettera di Presentazione",
  subtitle: "",
  redattori: ("Malik Giafar Mohamed", "Marco Perazzolo"),
  verifica: ("Ion Cainareanu",),
  approvazione: ("Maria Fuensanta Trigueros Hernandez", "Stefano Baso", "Luca Parise"),
  uso: "Esterno",
  version: "1.0",
  date: "30/10/2024", 
  // timebegin: "21:30",
  // timeend: "23:30",
)    

= Presentazione
Con la presente il gruppo NextSoft, composto dai seguenti membri:

#block(
  width: 100%,
  inset: (y: 1em),
  align(center)[
  #table(
    columns: (auto, auto),
    stroke: 0.5pt,
    [#text(weight: "bold")[Nome]], [#text(weight: "bold")[Matricola]],
    "Malik Giafar Mohamed", "2075543",
    "Marco Perazzolo", "1224817",
    "Ion Cainareanu", "2034295",
    "Stefano Baso", "1231758",
    "María Fuensanta Trigueros Hernandez", "2133487",
    "Luca Parise", "2043677",
  )
  ]
)

è lieto di comunicarvi che intende candidarsi ed impegnarsi nella realizzazione del progetto denominato

#block(
  width: 100%,
  inset: (y: 0.6em),
  align(center)[
    #text(size: 1.7em, weight: "bold")[3DataViz]
  ]
)
#block(
  width: 100%,
  align(center)[
   #text[proposto dall'azienda]
  ]
)


#block(
  width: 100%,
  inset: (y: 0.2em),
  align(center)[
    #text(size: 1.15em, weight: 600)[Sanmarco Informatica]
  ]
)

\

= Resoconto degli incontri
Di seguito un breve riassunto degli incontri avvenuti con le aziende di interesse per la valutazione dei capitolati:

#block(
  width: 100%,
  // inset: (y: 1em),
  table(
    columns: (auto, auto, 1fr),
    stroke: 0.5pt,
    [#text(weight: "bold")[Azienda]], [#text(weight: "bold")[Nome Capitolato]], [#text(weight: "bold")[Riassunto]],
    "Sanmarco Informatica", "3DataViz", [L'incontro è stato puramente a scopo informativo, per chiarire dubbi e ottenere informazioni aggiuntive sulle scelte tecnologiche possibili e sui vincoli progettuali obbligatori.],
    "Ergon", "LLM: Assistente digitale", [L'incontro è servito a determinare il grado di flessibilità del proponente sulle tecnologie consentite per lo sviluppo del progetto e a chiarire dubbi e incertezze sorte durante la presentazione del capitolato.],
  )
)

Uno studio più approfondito sulle altre aziende e i relativi capitolati può essere trovato nel documento di valutazione dei capitolati.

\
#pagebreak()
= Piano di Progetto

Come riportato nel preventivo dei costi e degli impegni, il costo stimato del progetto ammonta a *11.010 €* e si prevede inoltre di finalizzarlo e consegnarlo entro il giorno *02/04/2025*.

\

I verbali interni ed esterni sono consultabili al seguente link:
#block(
  width: 100%,
  // inset: (y: 2em),
  align(center)[
    #text(style: "italic")[https://github.com/nextsoftPD/Documenti]

  ]
)

#block(
  width: 100%,
  // inset: (y: 1em),
  [Dov'è possibile trovare:]
)

#list(
  text(style: "italic")[Preventivo dei Costi e degli Impegni],
  text(style: "italic")[Valutazione Dei Capitolati],
  text(style: "italic")[Lettera di Presentazione]
)

- *Verbali Interni*
  #list(
    "Verbale del 16/10/2024",
    "Verbale del 23/10/2024",
    "Verbale del 26/10/2024",
    "Verbale del 30/10/2024"
  )
  
- *Verbali Esterni*
  #list(
    "Verbale del 23/10/2024",
    "Verbale del 30/10/2024"
  )








