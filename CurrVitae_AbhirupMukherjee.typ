#import "@preview/fontawesome:0.6.0": *
#import "currVitae.typ": *
#let details = yaml("details.yml")
#let references = yaml("references.yml")
#let papers = yaml("papers.yml")

#show: resume.with()
#title(details.name)
#align(center, 
emph(text(size:imp-size, details.position)) +
v(-0.6em) +
details.affiliation +
v(-0.4em) +
stack(
  dir: ltr,
  spacing: 1fr,
  [#fa-location-dot()#h(0.4em)#details.contacts.location],
  [#fa-envelope()#h(0.4em)#details.contacts.email],
  href(details.contacts.arxiv, [#fa-layer-group()#h(0.4em)arXiv]),
  href(details.contacts.gscholar, [#fa-google()#h(0.4em)Scholar]),
  href(details.contacts.website, [#fa-link()#h(0.4em)Website]),
  [#fa-phone()#h(0.4em)#details.contacts.phone],
)
)

#section("Research Experience")
#for e in details.research [
  #twoCol(e.institute + " | " + e.advisor, emph(e.info), e.title, emph(e.time))
]

#section("Publications and Preprints")
#for (k, paper) in papers.pairs() {
  if paper.keys().contains("url") {
    twoCol(
      paper.title,
      authorise(paper.author),
      dateForm(paper.date),
      if paper.keys().contains("url") { href(paper.url, foc(paper.display)) } else {foc(paper.display)}
    )
  }
}

#section("Ongoing Projects")
#for p in details.ongoing {
  twoCol(p.title, authorise(p.people), none, none)
}

#section("Education")
#for e in details.education {
  twoCol(e.institute, emph(e.info), foc(e.degree), emph(e.time))
}


#section("Technical Skills")
#list(
  ..evalArray(details.skills)
)

#section("Talks and Poster Presentations")
#list(
  ..evalArray(details.presentations)
)

#section("Teaching Experience")
*Teaching Assistantship at IISER Kolkata*
#list(
  ..evalArray(details.taship)
)

#section("Awards and Honours")
#list(
  ..evalArray(details.honours)
)

#section("References")
#let refs = ()
#for r in references {
  refs.push(reference(r))
}
#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5em,
  row-gutter: 2em,
  rows: (auto, auto),
  ..refs,
)
