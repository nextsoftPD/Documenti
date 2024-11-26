#import "../../../assets/template.typ": project;

// Esempio di utilizzo
#show: project.with(
  title: "Piano di Progetto",
  //subtitle: "Sottotitolo del Documento",
  redattori: ("Malik Giafar Mohamed",),
  verifica: ("Ion Cainareanu" , "Maria Fuensanta Trigueros Hernandez",),
  approvazione: ("Ion Cainareanu", "Maria Fuensanta Trigueros Hernandez"),
  uso: "Esterno",
  version: "0.1.0",
  date: "23/11/2024",
  versionamento: (
    "0.1.0", "23/11/2024", "Malik Giafar Mohamed", "Creazione Documento", "Ion Cainareanu, Maria Fuensanta Trigueros Hernandez", "Maria Fuensanta Trigueros Hernandez",
  )
)