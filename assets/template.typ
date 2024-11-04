#let project(
  lang: "it",
  title: "",
  subtitle: "",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  version: "",
  redattori: (),
  verifica: (),
  approvazione: (),
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
  set par(justify: true)

  // Impostazione heading con numerazione gerarchica
  set heading(
    numbering: "1.1.1",
  )
  
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
    #outline(
      title: [Indice],
      indent: true,
      depth: 3  // Mostra fino a 3 livelli di nesting
    )
    // versionamento
    \
    
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
        // Righe di dati
        ..versionamento
      )
    }
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