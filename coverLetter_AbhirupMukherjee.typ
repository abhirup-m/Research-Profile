#import "src/settings.typ": *
#import "coverLetterTexts/coverLettGeneral.typ": *

#show: style.with(
  numCols: 2,
)


#place(
  top,
  float: true,
  scope: "parent",
  [#cvTitle(details.name, details.position)
  #text(size: imp-size, weight: "semibold", details.affiliation)
  #v(-0.4em)
  #stack(
    dir: ltr,
    spacing: 1fr,
    [#fa-location-dot()#h(0.4em)#details.contacts.location],
    [#fa-envelope()#h(0.4em)#details.contacts.email],
    link(details.contacts.arxiv, [#fa-layer-group()#h(0.4em)arXiv]),
    link(details.contacts.website, [#fa-link()#h(0.4em)Website]),
    [#fa-phone()#h(0.4em)#details.contacts.phone],
  )
  #line(length:100%)]
)

#coverLett(paperLinks(papers))

#set par(first-line-indent: 0em)
#align(right, [
Sincerely,\
Abhirup Mukherjee
])
