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
  page()[
    #grid(
      columns: 1,
      gutter: 0.8em,
      
      align(center)[
        #image("logo.png", width: 30em)
        #v(0.8em)
        #text(weight: 700, 2.8em, title)
        #v(-1em)
        #if versionamento == (){ text(2em, subtitle)}
      ],

      align(center)[
        #v(2em)
        #if versionamento == () {
          version = "1.0"
          grid(
            columns: (1fr,1fr,1fr,1fr),
            [],
            align(center)[
              #text(1em, "Ora Inizio: " + timebegin)
              #linebreak()
              #text(1em, "Ora Fine: " + timeend)
            ],
            align(center)[
              #text(1em, date)
              #linebreak()
              #text(1em, "Versione: " + version)
            ],[]
          )
          }else{
            version = versionamento.at(0)
            set text(1.4em)
            grid(
              columns: (1fr,1fr,1fr,1fr),
              [],
              align(center)[
                #text(1em, "Versione: " + version)
              ],
              align(center)[
                #text(1em, date)
              ],[]
            )
          }

        #v(2em)

        #let render-names = (title, names) => {
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
        #align(left)[#render-names("Redattori", redattori)]
        #align(left)[#render-names("Verifica", verifica)]
        #align(left)[#render-names("Approvazione", approvazione)]
        #align(left)[#strong([Uso]) #h(1fr) #uso]

        #v(3em)
        #link(email)
        #v(2em)
     ]
    )
  ]
  
  // Pagina indice con outline nestato
  page()[    
    #if versionamento != () {
      text(size: 1.4em, weight: "bold")[Registro dei cambiamenti]
      table(
        stroke: (x, y) => if y == 0 { (bottom: 0.7pt + black) },
        row-gutter: 0.5em,
        align: auto,
        inset: 8pt,
        columns: (auto, auto, auto, auto, auto),
        table.header(
          [*Versione*], [*Data*], [*Autore*], [*Descrizione*], [*Verifica*]  // Intestazioni
        ),
        // Righe di dati
        ..versionamento
      )
    }

    #outline(
      title: [Indice],
      indent: true,
      depth: 3  // Mostra fino a 3 livelli di nesting
    )
    // versionamento
    \
  ]
  
  pagebreak()
  
  // Impostazione intestazione per le pagine successive
  set page(
    header: {
      set text(10pt)
      grid(
        columns: (33%, 34%, 33%),
        align(left)[#text(company)],
        align(center)[#text(title)],
        align(right)[#text("v. " + version)]
      )
      line(length: 100%, stroke: 0.3pt + gray)
    }
  )
  body
}

#show: project.with(
  title: "Analisi dei Requisiti",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed","Ion Cainareanu","Luca Parise"),
  verifica: ("Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez","Malik Giafar Mohamed",),
  approvazione: ("Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez",),
  uso: "Esterno",
  version: "0.2.0",
  date: "04/12/2024",
  versionamento: (
    "0.3.0", "06/12/2024", "Ion Cainareanu", "Stesura  degli Use Case", "",
    "0.2.0", "30/12/2024", "Ion Cainareanu", "Stesura  dell'Introduzione e Descrizione", "Stefano Baso, Malik Giafar Mohamed",
    "0.1.1", "04/12/2024", "Luca Parise", "Aggiunta indice e creazione struttura tabella per use case", "Malik Giafar Mohamed",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
  )
)