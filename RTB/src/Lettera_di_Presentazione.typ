#let project(
  lang: "it",
  title: "",
  subtitle: "",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  redattori: (),
  version: "",
  verifica: (),
  approvazione: "",
  uso: (),
  date: "",
  timebegin: "",
  timeend: "",
  versionamento: (),
  body
) = {
  // Definizione colori
  let primary-color = rgb("#005d88")    // Blu scuro
  let secondary-color = rgb("#005d88") // Blu medio
  
  // Impostazioni documento
  set document(title: title)
  set page(
    margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    number-align: right,
    
  )

  // Impostazione dei paragrafi giustificati
  set par(justify: false)

  // abbellimento grafico delle liste puntate
  set list(
    marker: ([•], [-], [‣]),
    indent: 1em,
    spacing: 1em
  )

  set enum(
    indent: 1em,
    spacing: 1em
  )

  // Impostazione dei link con sottolineatura
  show link: p => {
    set text(fill: primary-color)
    //underline(text()[#p])
    text()[#p]
  }

  // Impostazione heading con numerazione gerarchica
  set heading(
    numbering: "1.1.1",
  )

  // show heading: it => {
  //   text()[#it.numbering #h(0.5em) #it.body]
  //   body
  // }
  // Frontespizio
  let render-names = (title, names) => {
    grid(
      columns: (auto, 1fr),
      gutter: 1em,
      text(weight: "bold")[#title],
      align(right)[
          #for name in names {
            text()[ #name #linebreak()]
          }
      ]
    )
    line(length: 100%, stroke: 0.5pt)
  }

  page()[
    #grid(
      columns: 1,
      gutter: 0.8em,
      
      align(center)[
        #image("../../assets/logo.png", width: 30em)
        #v(0.8em)
        #text(weight: 700, 2.8em, title)
        #v(-1em)
        #if versionamento == (){ text(2em, subtitle)}
      ],

      align(center)[
        #v(2em)
        #grid(
          columns: (1fr,1fr,1fr,1fr),
          [],
          align(center)[
            #text(1em, "Versione: 1.0.0")
          ],
          align(center)[
            #text(1em, date)
          ],[]
        )
      ],
        

      v(2em),

      align(left)[#render-names("Redattori", redattori)],
      align(left)[#render-names("Verifica", verifica)],
      align(left)[#render-names("Approvazione", approvazione)],
      align(left)[#strong([Uso]) #h(1fr) uso],

      v(3em),
      link(email),
      v(2em)
    )
  ]
  
  body
}

#show: project.with(
  lang: "it",
  title: "Lettera di Presentazione",
  subtitle: "Revisione Requirements and Technology Baseline",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  redattori: ("Marco Perazzolo","Malik Giafar Mohamed"),
  version: "1.0.0",
  verifica: ("Stefano Baso",),
  approvazione: "Luca Parise,",
  uso: ("Esterno"),
  date: "8/03/2025",
  timebegin: "",
  timeend: "",
  versionamento: (),
)


_Egregio Prof. Vardanega Tullio,_

_Egregio Prof. Cardin Riccardo,_

\ 

Con la presente, il gruppo *NextSoft* intende comunicarVi la partecipazione alla revisione *Requirements and Technology Baseline (RTB)* del progetto *Requirement Tracker Plug-in*, proposto dall'azienda *Bluewind Srl*.

A tal fine, rendiamo disponibili i documenti aggiornati, consultabili al seguente repository ufficiale del gruppo:

#align(center)[ https://github.com/nextsoftPD/Documenti ]
\
All'interno del repository sono presenti i seguenti documenti:

- *Analisi dei Requisiti_v1.0.0*
- *Piano di Progetto_v1.0.0*
- *Piano di Qualifica_v1.0.0*
- *Norme di Progetto_v1.0.0*
- *Glossario_v1.0.0*


Inoltre, sono inclusi i verbali interni ed esterni:

- *Verbale esterno del 25/11/2024*  
- *Verbale esterno del 24/12/2024*
- *Verbale esterno del 25/02/2025*  

- *Verbale interno del 15/11/2024*
- *Verbale interno del 24/11/2024*
- *Verbale interno del 09/12/2024*
- *Verbale interno del 18/12/2024*
- *Verbale interno del 03/01/2025*
- *Verbale interno del 10/01/2025*
- *Verbale interno del 19/01/2025*
- *Verbale interno del 08/02/2025*
- *Verbale interno del 20/02/2025*
- *Verbale interno del 07/03/2025*

\

Viene inoltre fornito il link alla repository del PoC:

#align(center)[ https://github.com/nextsoftPD/PoC ]


Si segnala che la data di consegna prevista rimane confermata per il *16/04/2025*. Si registra inoltre un lieve incremento del costo complessivo, ora pari a *10.995€*, come dettagliato nel *Piano di Progetto*.

\

#align(right)[
  #rect(fill: white, inset: 8pt)[
      _Cordiali saluti,_

      NextSoft

  ]
]
