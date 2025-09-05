#import "src/settings.typ": *

#show: style.with(
  // base-size: 11pt,
)
#cvTitle(details.name, details.position)

#v(-1em)
#h(-2em)#text(size: imp-size, weight: "semibold", details.affiliation)

#header(details)

#cvSection("Research Experience")
#for e in details.research [
  #twoCol(e.institute + " | " + e.advisor, emph(e.info), e.title, emph(e.time))
]

#cvSection("Publications and Preprints")
#for (k, paper) in papers.pairs() {
  if paper.keys().contains("url") {
    twoCol(
      paper.title,
      authorise(paper.author),
      dateForm(paper.date),
      link(paper.url, paper.display)
    )
  }
}

#cvSection("Ongoing Projects")
#for p in details.ongoing {
  twoCol(p.title, authorise(p.people), none, none)
}

#cvSection("Education")
#for e in details.education {
  twoCol(e.institute, emph(e.info), foc(e.degree), emph(e.time))
}


#cvSection("Technical Skills")
#list(
  ..evalArray(details.skills)
)

#cvSection("Talks and Poster Presentations")
#list(
  ..evalArray(details.presentations)
)

#cvSection("Teaching Experience")
*Teaching Assistantship at IISER Kolkata*
#list(
  ..evalArray(details.taship)
)

#cvSection("Awards and Honours")
#list(
  ..evalArray(details.honours)
)

#cvSection("References")
#let refs = ()
#for r in references {
  refs.push(referee(r))
}
#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  row-gutter: 2em,
  rows: (auto, auto),
  ..refs,
)
