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
      grid(
        columns: (auto, 1fr),
        gutter: 1em,
        text(weight: "bold")[Uso],
        align(right)[#uso]
      ),
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
  subtitle: "Revisione Product Baseline",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  redattori: ("Ion Cainareanu",),
  version: "1.0.0",
  verifica: ("Luca Parise",),
  approvazione: ("Marco Perazzolo",),
  uso: ("Esterno"),
  date: "13/05/2025",
  timebegin: "",
  timeend: "",
  versionamento: (),
)


_Egregio Prof. Vardanega Tullio,_

_Egregio Prof. Cardin Riccardo,_

\ 

Con la presente, il gruppo *NextSoft* intende comunicarVi la partecipazione alla revisione *Product Baseline (PB)* del progetto *Requirement Tracker Plug-in*, proposto dall'azienda *Bluewind Srl*.
L'MVP del progetto è stato consegnato con successo rispettando le modalità stabilite dall'azienda proponente, e la sua accettazione è stata ufficialmente confermata nel verbale esterno del 06/05/2025.

A tal fine, rendiamo disponibili i documenti aggiornati, consultabili al seguente repository ufficiale del gruppo:

#align(center)[ https://github.com/nextsoftPD/Documenti ]
\

Per aggevolare la consultazione dei documenti abbiamo inoltre creato un sito web consultabile al seguente link:

#align(center)[ https://nextsoftpd.github.io ]
\

All'interno del repository e del sito web sono presenti i seguenti documenti:

- *Analisi dei Requisiti_v2.0.0*
- *Piano di Progetto_v2.0.0*
- *Piano di Qualifica_v2.0.0*
- *Norme di Progetto_v2.0.0*
- *Glossario_v2.0.0*
- *Manuale Utente_v1.0.0*
- *Specifica Tecnica_v1.0.0*

Inoltre, sono inclusi i verbali esterni e interni relativi a questo periodo:

- *Verbale esterno del 06/05/2025*
- *Verbale esterno del 11/04/2025*
\
- *Verbale interno del 30/03/2025*
- *Verbale interno del 05/04/2025*
- *Verbale interno del 19/04/2025*
- *Verbale interno del 28/04/2025*
- *Verbale interno del 13/05/2025*

\

Il costo complessivo del progetto risulta essere pari a *10980€*, come dettagliato nell'ultima versione del *Piano di Progetto* e in linea con il totale preventivato. Nello stesso documento sono incluse le ore totali per membro.

\

#align(right)[
  #rect(fill: white, inset: 8pt)[
      _Cordiali saluti,_

      NextSoft

  ]
]
