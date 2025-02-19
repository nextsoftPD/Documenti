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
     "0.2.0", "25/01/2025", "Maria Fuensanta Trigueros Hernandez", "Stesura del glossario", "" , "",
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez" , "Maria Fuensanta Trigueros Hernandez",
  )
)
= Introduzione
Il presente glossario ha l'obiettivo di definire e chiarire i termini chiave utilizzati in il nostro progetto. Il suo scopo è standardizzare il linguaggio e facilitare la comprensione dei concetti specifici, garantendo una comunicazione chiara ed efficace tra tutte le persone coinvolte.

Questo documento servirà come riferimento per evitare fraintendimenti, migliorare la collaborazione e assicurare l'uso corretto della terminologia all'interno di nostro contesto di applicazione. I termini sono organizzati in ordine alfabetico per una ricerca rapida e semplice.
#pagebreak()
= A
== API (Application Programming Interface):
 Interfaccia di programmazione che consente a software diversi di comunicare tra loro.
== Analisi dei Requisiti:
Processo che identifica, documenta e gestisce i requisiti di un sistema software.
== Attore:
Persona o sistema che interagisce con il software nei casi d’uso.
#pagebreak()
= B
== Bug:
Errore o malfunzionamento in un software.
== Budget di Progetto: 
Allocazione delle risorse finanziarie necessarie per lo sviluppo del progetto.
==  Best Practices:
Conjunto di linee guida e metodologie raccomandate per migliorare la qualità e l’efficienza del lavoro.
== Branch:
Nel contesto del controllo di versione (ad esempio, in Git), un branch è una linea indipendente di sviluppo che permette di lavorare su nuove funzionalità o correzioni di bug senza modificare direttamente il ramo principale. I branch consentono agli sviluppatori di sperimentare, collaborare e implementare cambiamenti in modo sicuro, prima di unirli al codice principale attraverso un'operazione di merge.
#pagebreak()
= C
== Commit:
Salvataggio di modifiche al codice sorgente in un sistema di controllo di versione.
== CSV (Comma-Separated Values):
Formato di file utilizzato per archiviare dati strutturati, come elenchi di requisiti.
== Capitolato :
Documento ufficiale che descrive i requisiti e le specifiche di un progetto software.
== Codifica:
Processo di scrittura del codice sorgente secondo le specifiche definite nella fase di progettazione.
== Ciclo di Vita del Documento:
Processo che regola la creazione, revisione, verifica e approvazione di un documento
#pagebreak()
= D
== Diagramma UML:
Rappresentazione grafica della struttura e del comportamento di un sistema software.
== Deployment:
Processo di rilascio e installazione del software in un ambiente di produzione.

#pagebreak()
= E

#pagebreak()
= F
== Fornitura: 
Processo di consegna del software al cliente, inclusi test finali e rilascio della documentazione.

#pagebreak()
= G
== GitHub: 
 Piattaforma per il versionamento del codice e la gestione collaborativa dei progetti software.
#pagebreak()
= H
#pagebreak()
= I
#pagebreak()
= J
#pagebreak()
= K
#pagebreak()
= L
== LLM (Large Language Model):
Modelli di intelligenza artificiale addestrati per comprendere ed elaborare il linguaggio naturale.
#pagebreak()
= M
== MVP (Minimum Viable Product): 
 Versione minima di un prodotto con funzionalità essenziali per testarne la fattibilità.
== Metrica:
Misura quantitativa utilizzata per valutare aspetti del software, come performance, affidabilità o manutenibilità.
#pagebreak()
= N
== NodeJS: 
Ambiente di runtime per JavaScript lato server.
== Normazione:
Attività di definizione e aggiornamento delle norme e convenzioni del progetto.
#pagebreak()
= O
== Ollama:
Piattaforma per l’integrazione di modelli LLM (Large Language Models) nel processo di analisi dei requisiti.
#pagebreak()
= P
== Plug-in:
Estensione di un software che aggiunge nuove funzionalità senza modificarne il core.
== Precondizione: 
Stato richiesto affinché un caso d’uso possa essere eseguito correttamente.
== Postcondizione:
Stato atteso dopo l’esecuzione di un caso d’uso.
#pagebreak()
= Q
#pagebreak()
= R
== Requisito Funzionale:
Specifica un comportamento o una funzionalità che il software deve avere.
== Requisito Non Funzionale:
Specifica vincoli sulle prestazioni, sicurezza, usabilità e scalabilità del software.
== Requirement Tracker: 
Plug-in per Visual Studio Code che automatizza il tracciamento dei requisiti nel codice sorgente.

== Repository:
 Archivio di codice sorgente gestito con strumenti come GitHu
#pagebreak()
= S
== Stakeholder:
Persona o gruppo interessato all’andamento e ai risultati del progetto.
== Scenario Principale:
Sequenza di passaggi che descrive il normale flusso di esecuzione di un caso d’uso.
== Scenari Alternativi:
Possibili variazioni nel flusso di esecuzione di un caso d’uso.
#pagebreak()
= T
== TypeScript:
 Linguaggio di programmazione che estende JavaScript con tipi statici.
== Tracciamento dei Requisiti:
 Processo che collega ogni requisito alla sua implementazione nel codice per garantirne la copertura.
#pagebreak()
= U
== Usabilità:
Facilità con cui un utente può interagire con un'interfaccia o un sistema software
== Use Case (Caso d’Uso):
Rappresentazione grafica e testuale che descrive come gli utenti interagiscono con un sistema.
== UML (Unified Modeling Language): 
Linguaggio standard per la modellazione grafica di sistemi software.
#pagebreak()
= V
== Visual Studio Code (VS Code):
 Editor di codice sviluppato da Microsoft, utilizzato per la programmazione e la gestione del codice sorgente.
== Verifica:
 Processo per determinare se il prodotto è stato sviluppato correttamente rispetto ai requisiti specificati.
== Validazione:
Processo che assicura che il prodotto soddisfi i bisogni e le aspettative dell'utente finale.
#pagebreak()
= W
== Way of Working:
Modalità di organizzazione e gestione delle attività all'interno di un progetto.
#pagebreak()
= X
#pagebreak()
= Y
#pagebreak()
= Z