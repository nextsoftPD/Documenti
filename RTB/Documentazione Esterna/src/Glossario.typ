#let project(
  lang: "it",
  title: "Glossario",
  subtitle: "Glossario Tecnico del capitolato\ndi Ing. del Software 2024-2025",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  version: "",
  versionamento: (),
  date: "26/11/2024",
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

  // Impostazione heading con numerazione gerarchica
  
  // Frontespizio
  page()[
    #grid(
      columns: 1,
      gutter: 0.8em,
      
      align(center)[
        #image("../../../assets/logo.png", width: 30em)
        #v(0.8em)
        #text(weight: 700, 2.8em, title)
        #v(-1em)
        #text(2em, subtitle)
      ],

      align(center)[
        #v(2em)
        #if versionamento == () {
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
        } else {
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
          text(weight: "bold")[#title #h(1fr)];
            
          for name in names {
            text()[ #name];
            if name != names.last() {
              text()[,];
            }
          }
          line(length: 100%, stroke: 0.5pt)
        }

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
        columns: (auto, auto, auto, auto, auto, auto),
        table.header(
          [*Versione*], [*Data*], [*Autore*], [*Descrizione*], [*Verifica*], [*Approvazione*]  // Intestazioni
        ),
        ..versionamento
      )
    }
    
    #outline(
      title: [Indice],
      indent: true,
      depth: 3  // Mostra fino a 3 livelli di nesting
    )
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

// Esempio di utilizzo
#show: project.with(
  title: "Glossario",
  subtitle: "Glossario Tecnico del capitolato\ndi Ing. del Software 2024-2025",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  version: "0.1.0",
  versionamento: (
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez" , "Maria Fuensanta Trigueros Hernandez",
  )
)

= A
= B
= C
= D
= E
= F
= G
= H
= I
= J
= K
= L
= M
= N
= O
= P
= Q
= R
= S
= T
= U
= V
= W
= X
= Y
= Z