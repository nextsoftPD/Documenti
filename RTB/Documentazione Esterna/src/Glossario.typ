#let project(
  lang: "it",
  title: "Glossario",
  subtitle: "Glossario Tecnico del capitolato\ndi Ing. del Software 2024-2025",
  company: "NextSoft",
  email: "nextsoftpadova@gmail.com",
  version: "",
  redattori: (),
  verifica: (),
  approvazione: "",
  uso: "",
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
        #grid(
          columns: (1fr,1fr,1fr,1fr),
          [],
          align(center)[
            #text(1em, "Versione: " + versionamento.at(0))
          ],
          align(center)[
            #text(1em, date)
          ],[]
        )
        
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
        ..versionamento
      )
    }
    
    #outline(
      title: [Indice],
      indent: auto,
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
  version: "1.0.0",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Ion Cainareanu","Maria Fuensanta Trigueros Hernandez"),
  approvazione: (),
  uso: "Esterno",
  versionamento: (
    "1.0.0", "08/03/2025", "Marco Perazzolo", "Aggiornamento e aggiunta di nuovi termini al glossario", "" ,
    "0.2.0", "25/01/2025", "Maria Fuensanta Trigueros Hernandez", "Stesura iniziale del glossario", "Marco Perazzolo" ,
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
  )
)
= Introduzione
Il presente glossario ha l'obiettivo di definire e chiarire i termini chiave utilizzati in il nostro progetto. Il suo scopo è standardizzare il linguaggio e facilitare la comprensione dei concetti specifici, garantendo una comunicazione chiara ed efficace tra tutte le persone coinvolte.

Questo documento servirà come riferimento per evitare fraintendimenti, migliorare la collaborazione e assicurare l'uso corretto della terminologia all'interno di nostro contesto di applicazione. I termini sono organizzati in ordine alfabetico per una ricerca rapida e semplice.


#pagebreak()
= A
== API (Application Programming Interface)
 Interfaccia di programmazione che consente a software diversi di comunicare tra loro.
== Agile
Metodologia di sviluppo iterativo che enfatizza iterazioni brevi, feedback continui e l'adattamento al cambiamento.
== Analisi dei Requisiti
Processo che identifica, documenta e gestisce i requisiti di un sistema software.
== Attore
Persona o sistema che interagisce con il software nei casi d’uso.
== Analisi dei Rischi
Processo di identificazione e valutazione dei possibili problemi che possono insorgere durante lo sviluppo del progetto.
== Analisi semantica
Valutazione del contenuto testuale  dei requisiti per verificarne chiarezza, completezza e correttezza.
== Artefatti
Documenti, codice, e altri output generati durante lo sviluppo del software.
== Approvatore
Figura responsabile della validazione finale dei documenti e delle specifiche di progetto.
== Analista
Figura professionale che individua e definisce i casi d'uso ed i requisiti del prodotto software.
== Ad hoc
Creato specificamente per soddisfare una determinata esigenza.
== AI / IA (Intelligenza Artificiale)
Tecnologie che consentono ai sistemi di svolgere compiti che richiedono intelligenza umana.

#pagebreak()
= B
== Baseline
Versione di riferimento di un prodotto software, indica un punto di arrivo tecnico irreversibile, che viene stabilito come standard.
== Best Practices
Insieme di linee guida e metodologie raccomandate per migliorare la qualità e l’efficienza del lavoro.
== Bug
Errore o malfunzionamento in un software.
== Branch
Linea indipendente di sviluppo in un sistema di controllo di versione, utilizzata per implementare nuove funzionalità o correzioni.
== Budget di Progetto 
Allocazione delle risorse finanziarie necessarie per lo sviluppo del progetto.
== Backend
La parte del software che gestisce la logica di business, i dati e le operazioni lato server.


#pagebreak()
= C
== CamelCase
Convenzione di denominazione in cui ogni parola inizia con una lettera maiuscola, senza spazi.
== Capitolato 
Documento ufficiale che descrive i requisiti e le specifiche di un progetto software.
== Change Request Form
Modulo utilizzato per richiedere modifiche alle specifiche o al progetto.
== Checklist
Lista di controllo per verificare il completamento di compiti o il rispetto di standard.
== Codebase
Insieme del codice sorgente di un progetto.
== Codifica
Processo di scrittura del codice sorgente secondo le specifiche definite nella fase di progettazione.
== Commit
Salvataggio di modifiche al codice sorgente in un sistema di controllo di versione.
== Committente
La persona o l'organizzazione che commissiona il progetto.
== Configuration items
Elementi di configurazione che devono essere gestiti e controllati nel progetto.
== Consuntivo di Periodo 
Analisi delle variazioni di pianificazione e costi rispetto alle stime iniziali, con indicazione delle misure correttive adottate.
== CSV (Comma-Separated Values)
Formato di file utilizzato per archiviare dati strutturati, come elenchi di requisiti.

#pagebreak()
= D
== Debugging
Processo di individuazione e correzione degli errori nel software.
== Design
Processo di definizione dell'architettura e della struttura di un sistema software.
== Design Pattern
Soluzione standardizzata a problemi ricorrenti nel design del software.
== Diagramma UML
Rappresentazione grafica della struttura e del comportamento di un sistema software.
== Dipendenza
Relazione in cui la modifica di un modulo o componente necessita della modifica di un altro modulo o componente del software.
== Deployment
Processo di rilascio e installazione del software in un ambiente di produzione.
== Driver
Software che controlla e gestisce l'interazione con hardware o altri sistemi.


#pagebreak()
= E
== Endpoint
Indirizzo (IP o URL) del server a cui vengono inviate le richieste API.
== Entry
Singolo elemento o riga di dati in una struttura (es. file, tabella o configurazione).
== Economicità
Capacità del progetto di essere realizzato ed eseguito a costi contenuti.
== Efficienza 
Capacità del software di eseguire le operazioni richieste utilizzando un numero minimo di risorse (tempo, memoria, CPU).
== EAC (Estimated At Completion)
Stima del costo totale di completamento del progetto basata sulle prestazioni attuali.
== EV (Earned Value)
Valore del lavoro effettivamente completato in un determinato momento rispetto alla pianificazione.
== ETC (Estimated To Completion)
Stima del costo rimanente per completare il progetto

#pagebreak()
= F
== File explorer
Strumento che permette all'utente di navigare tra file e cartelle.
== Feature
Funzionalità o caratteristica specifica di un software.
== Feedback
Informazioni fornite dagli utenti o dal sistema per migliorare il prodotto.
== Fix
Correzione di un errore o malfunzionamento.
== Fornitura 
Processo di consegna del software al cliente, inclusi test finali e rilascio della documentazione.
== Frontend
La parte del software che interagisce direttamente con l'utente, tipicamente l'interfaccia grafica.
== Filesystem
Struttura organizzativa che gestisce la memorizzazione e l'accesso ai file in un computer.

#pagebreak()
= G
== GitHub 
Piattaforma per il versionamento del codice e la gestione collaborativa dei progetti software.
== Github Projects
Piattaforma per la gestione dei progetti integrata in GitHub, che consente la creazione e assegnazione di issues.
== Github Issues
Sistema di tracciamento degli errori e delle problematiche su GitHub.

#pagebreak()
= H

#pagebreak()
= I
== IDE
Ambiente integrato per scrivere, testare e fare debug del codice.
== Issue 
Ticket utilizzato in strumenti di gestione dei progetti per tracciare problemi, attività o richieste di miglioramento.
== ITS (Issue Tracking System)
Sistema utilizzato per il tracciamento delle issue del progetto.

#pagebreak()
= J

#pagebreak()
= K
== Knowledge
Insieme di informazioni tecniche e documentazione di supporto, come datasheet, manuali e specifiche tecniche, utilizzate per migliorare la comprensione e l'implementazione dei requisiti di un sistema. Nel contesto del plug-in, il termine si riferisce alla capacità di utilizzare tali documenti per garantire un analisi efficace dei requisiti.

#pagebreak()
= L
== Librerie
Insieme di funzioni, classi e metodi predefiniti per supportare lo sviluppo software.
== Linearmente indipendenti
Concetto che indica che due elementi non presentano una relazione lineare diretta.
== LLM (Large Language Model)
Modelli di intelligenza artificiale addestrati per comprendere ed elaborare il linguaggio naturale.

#pagebreak()
= M
== Mapping
Associazione tra requisiti e le relative porzioni di codice che li implementano.
== Merge conflicts
Conflitti che sorgono quando si tenta di unire modifiche in un repository di versionamento.
== MVP (Minimum Viable Product) 
Versione minima di un prodotto con funzionalità essenziali per testarne la fattibilità.
== Metrica
Misura quantitativa utilizzata per valutare aspetti del software, come performance, affidabilità o manutenibilità.
== MPC (Minimum Predictive Capability)
Metrica che valuta la capacità minima di previsione di un modello o sistema.
== MPDS (Metriche di Processo e Sviluppo) 
Insieme di metriche utilizzate per valutare la qualità del software nei suoi vari aspetti.
== Mitigazione dei Rischi 
Strategie applicate per ridurre o eliminare l’impatto dei rischi identificati nel progetto.
== Modello di Sviluppo 
Approccio metodologico utilizzato per organizzare il lavoro e garantire un avanzamento strutturato del progetto.
== Moduli software
Componenti o parti indipendenti di un sistema che possono essere sviluppate, testate e mantenute separatamente.

#pagebreak()
= N
== NodeJS 
Ambiente di runtime per JavaScript lato server.
== Normazione
Attività di definizione e aggiornamento delle norme e convenzioni del progetto.

#pagebreak()
= O
== Ollama
Piattaforma per l’integrazione di modelli LLM (Large Language Models) nel processo di analisi dei requisiti.

#pagebreak()
= P
== Package
Insieme di moduli o librerie raggruppati per facilitare la distribuzione e l'utilizzo.
== Parametri
Variabili passate a una funzione o metodo per influenzarne il comportamento.
== Pattern
Soluzione riutilizzabile a problemi ricorrenti nel design del software.
== Plug-in
Estensione di un software che aggiunge nuove funzionalità senza modificarne il core.
== Precondizione 
Stato richiesto affinché un caso d’uso possa essere eseguito correttamente.
== Prompt
Testo o comando fornito a un modello LLM per generare una risposta.
== Progettisti
Figure responsabili della definizione dell'architettura e del design del sistema
== Programmatori
Sviluppatori che scrivono e mantengono il codice sorgente.
== Postcondizione
Stato atteso dopo l’esecuzione di un caso d’uso.
== PV (Planned Value) 
Valore pianificato del lavoro da completare fino a una determinata data di riferimento.
== Piano di Contingenza 
Strategia alternativa da applicare in caso di problemi imprevisti nel progetto.
== Piano di Qualifica
Documento che definisce i criteri e le attività per la verifica della qualità del progetto.
== Pianificazione 
Processo di suddivisione del progetto in fasi operative con definizione di risorse, tempistiche e responsabilità.
== Preventivo 
Stima dei costi del progetto con allocazione delle risorse economiche necessarie.
== Proof of Concept (PoC) 
Implementazione preliminare del progetto per verificarne la fattibilità.
== Pull Request
Proposta di integrazione di modifiche in un repository di versionamento.

#pagebreak()
= Q
== Qualità di Processo 
Misura dell’efficienza e dell’efficacia dei processi seguiti nello sviluppo del software.

#pagebreak()
= R
==  RC (Requirement Coverage) 
Percentuale di requisiti soddisfatti rispetto al totale.
== Refactoring
Processo di ristrutturazione del codice per migliorarne la struttura senza modificarne il comportamento.
== Requisito
Condizione o capacità necessaria affinché un sistema software soddisfi le esigenze degli stakeholder.
== Requisito Obbligatorio
Specifica una caratteristica essenziale del sistema che deve essere implementata affinché il prodotto sia conforme alle specifiche e utilizzabile secondo gli obiettivi previsti.
== Requisito Facoltativo
Descrive una funzionalità aggiuntiva non essenziale, la cui implementazione può essere omessa senza compromettere il funzionamento principale del sistema.
== Requisito Desiderabile
Requisito non indispensabile, ma la cui implementazione è raccomandata poiché apporta valore aggiunto in termini di usabilità, efficienza o qualità.
== Requisito Prestazionale
Definisce vincoli relativi alle prestazioni del sistema, come tempi di risposta, capacità di elaborazione, consumo di risorse e scalabilità.
== Requisito di Qualità
Descrive attributi qualitativi del software, come affidabilità, manutenibilità, sicurezza, usabilità e accessibilità, che ne determinano il livello di accettabilità.
== Requisito Funzionale
Specifica un comportamento o una funzionalità che il sistema deve fornire, descrivendo le interazioni tra l’utente e il software.
== Requisito Non Funzionale
Definisce caratteristiche e vincoli che il sistema deve rispettare senza specificare comportamenti, come sicurezza, usabilità, prestazioni e scalabilità.
== Requirement Tracker
Plug-in per Visual Studio Code che automatizza il tracciamento dei requisiti nel codice sorgente.
== Report
Documento che sintetizza i risultati di un'analisi o di un processo.
== Repository
Archivio di codice sorgente gestito con strumenti come GitHub
== Responsabile di progetto
Figura incaricata di coordinare le attività e le risorse del progetto.


#pagebreak()
= S
== Script
Sequenza di comandi in un linguaggio di scripting per automatizzare operazioni.
== Stakeholder
Persona o gruppo interessato all’andamento e ai risultati del progetto.
== Scenario Principale
Sequenza di passaggi che descrive il normale flusso di esecuzione di un caso d’uso.
== Scenari Alternativi
Possibili variazioni nel flusso di esecuzione di un caso d’uso.
== Single Responsibility Principle
Principio di design che stabilisce che ogni modulo o classe deve avere un solo compito (responsabilità).
== Sprint
Intervallo di tempo breve durante il quale viene sviluppata una parte del lavoro in metodologie Agile.
== Stub
Implementazione minima usata come sostituto per un componente durante il testing.
== SV (Schedule Variance)
Differenza tra il valore guadagnato (EV) e il valore pianificato (PV), indica eventuali ritardi o anticipi.

#pagebreak()
= T
== Task
Attività specifica da svolgere all'interno del progetto.
== Test
Attività per verificare il funzionamento corretto del software.
== Test di unità
Test che verificano il funzionamento di singole unità di codice.
== Test funzionali
Test che verificano il corretto funzionamento delle funzionalità complessive del software.
== Team
Gruppo di persone che collaborano nello sviluppo del progetto.
== Template
Modello predefinito per la creazione di documenti o codice.
== Token
Unità minima di testo elaborata da un modello LLM.
== TypeScript
 Linguaggio di programmazione che estende JavaScript con tipi statici.
== Tracciamento dei Requisiti
 Processo che collega ogni requisito alla sua implementazione nel codice per garantirne la copertura.
== Tool
Strumento software utilizzato per supportare lo sviluppo o il testing.

#pagebreak()
= U
== Usabilità
Facilità con cui un utente può interagire con un'interfaccia o un sistema software
== Use Case (Caso d’Uso)
Rappresentazione grafica e testuale che descrive come gli utenti interagiscono con un sistema.
== UML (Unified Modeling Language) 
Linguaggio standard per la modellazione grafica di sistemi
software.
== Utility
Strumento ausiliario che semplifica compiti ripetitivi o complessi.

#pagebreak()
= V
== Validazione
Processo che assicura che il prodotto soddisfi i bisogni e le aspettative dell'utente finale.
== Visual Studio Code (VS Code)
Editor di codice sviluppato da Microsoft, utilizzato per la programmazione e la gestione del codice sorgente.
== Verifica
Processo per determinare se il prodotto è stato sviluppato correttamente rispetto ai requisiti specificati.
== Vincolo
Impone limitazioni progettuali o implementative, come l’uso di tecnologie specifiche, la compatibilità con sistemi esistenti, il rispetto di normative o restrizioni di budget e tempistiche.
== Versionamento 
Processo di gestione delle versioni di un software o documento.
== VLN (Presenza di Vulnerabilità) 
Numero di vulnerabilità di sicurezza ancora presenti nel codice.


#pagebreak()
= W
== Way of Working
Modalità di organizzazione e gestione delle attività all'interno di un progetto.

#pagebreak()
= X

#pagebreak()
= Y

#pagebreak()
= Z