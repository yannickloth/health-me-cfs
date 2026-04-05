#set document(
  title: "Human–AI Collaborative Medical Documentation: Methodology, Agent Architecture, and Quality Assurance in a Large-Scale ME/CFS Reference Work",
  author: "Nicolas Dewaele",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 3cm),
  numbering: "1",
)

#set text(font: "Linux Libertine O", size: 11pt, lang: "en")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#show heading.where(level: 1): it => {
  v(1.2em)
  text(weight: "bold", size: 13pt, it)
  v(0.4em)
}

#show heading.where(level: 2): it => {
  v(0.8em)
  text(weight: "bold", size: 11pt, it)
  v(0.3em)
}

#show heading.where(level: 3): it => {
  v(0.6em)
  text(weight: "semibold", size: 11pt, style: "italic", it)
  v(0.2em)
}
