#import "../../assets/template.typ": project

// Esempio di utilizzo
#show: project.with(
  title: "Seconda Lettera\ndi Presentazione",
  subtitle: "",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Ion Cainareanu","Maria Fuensanta Trigueros Hernandez","Luca Parise"),
  approvazione: ("Stefano Baso","Marco Perazzolo"),
  uso: "Esterno",
  version: "1.0",
  date: "5/11/2024", 
  timebegin: "15:00",
  timeend: "15:30",
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
    #text(size: 1.7em, weight: "bold")[LLM: Assistente virtuale]
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
    #text(size: 1.15em, weight: 600)[Ergon Informatica Srl]
  ]
)

\

= Motivazione della scelta
Il gruppo dopo aver valutato attentamente la situazione, ha deciso di spostarsi su un capitolato di uguale interesse ma con maggior disponibilità. Di conseguenza il gruppo ritiene di avere le competenze necessarie per portare a termine il suddetto progetto e di poterlo svolgere con successo.

= Piano di Progetto

Come riportato nel preventivo dei costi e degli impegni, il costo stimato del progetto ammonta a *10.980 €* e si prevede inoltre di finalizzarlo e consegnarlo entro il giorno * 16/04/2025*.

\

I verbali interni ed esterni sono sempre consultabili al seguente link:
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
  text(style: "italic")[Lettera di Presentazione Aggiornata],
)

- *Verbali Interni*
  #list(
    "Verbale del 16/10/2024",
    "Verbale del 23/10/2024",
    "Verbale del 26/10/2024",
    "Verbale del 30/10/2024",
    "Verbale del 05/11/2024"
  )
  
- *Verbali Esterni*
  #list(
    "Verbale del 23/10/2024",
    "Verbale del 30/10/2024"
  )








