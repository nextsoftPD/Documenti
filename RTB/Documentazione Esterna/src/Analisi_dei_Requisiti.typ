#import "../../../assets/template.typ": project;
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)
/* senza la regola seguente le tabelle degli use case avrebbero 
 le linee interne che sono brutte da vedere */
#set table(
  fill: (rgb("#ffffff"), none),
  stroke: frame(rgb("21222C")),
)
// Esempio di utilizzo
#show: project.with(
  title: "Analisi dei Requisiti",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",),
  approvazione: ("Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",),
  uso: "Esterno",
  version: "0.1.1",
  date: "04/12/2024",
  versionamento: (
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez",
    "0.1.1", "04/12/2024", "Luca Parise", "Aggiunta indice e creazione struttura tabella per use case", "Malik Giafar Mohamed","Malik Giafar Mohamed",
  )
)


= Introduzione
== Scopo del documento
== Scopo del prodotto 

= Descrizione
== Obiettivi del prodotto 
== Funzionalità del prodotto 
== Utenti e caratteristiche 

= Use Case 

/*
tabella per uno use case, basta fare copia incolla 

#table(
  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
*/

== Obiettivi
== Attori 
//-------------------------------------------------------------------
== UC_1 - titolo UC_1
--> qui può essere inserita una immagina utile alla spiegazione dell'use case

#table(
  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
//-------------------------------------------------------------------
== UC_2 - titolo UC_2 

#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)

== UC_3 - titolo UC_3 
#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
#pagebreak()  //-> per andare direttamente alla pagina successiva  
\

=== UC_3.1 
#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
== UC_i 
#table(

  columns: (auto,1fr),
  [*codice uc*], [*Titolo uc*],
  [Attore primario], [],
  [Precondizioni], [],
  [Postcondizioni], [],
  [Scenario principale], [],
  [Estensioni], [(Scenari alternativi)]
)
== UC_n

= Requisiti 
= Elenco delle immagini 
= Elenco delle tabelle 
