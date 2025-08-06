#set page(
  paper: "us-letter",
  margin: (top: 1.5cm, rest: 2cm),
)

#let papers = yaml("papers.yml")
#let authorise(authors) = {
  let authorList = []
  for (i, a) in authors.enumerate() {
    if a == "Abhirup Mukherjee" {
      authorList = authorList + text(weight: "semibold", a)
    } else {
      authorList = authorList + a
    }
    if i < authors.len() - 1 {
      authorList = authorList + ", "
    }
  }
  return authorList
}
#let fontBig = "Bitter"
#let fontMain = "Roboto Slab"

#let colMain = rgb("1F1F1F")
#let colName = rgb("#5E4B3C")
#let colSec = rgb("#002147")
#let colAcc = rgb("4B2E83")

#set par(justify: true)
#set text(font:fontMain, fill: colMain, size: 8pt)
#show heading: set text(fill: colSec, weight: "semibold", font: fontMain)

#text(size: 2em, text(fill: colName, font: fontBig, weight: "semibold", [Abhirup Mukherjee]) + text(weight: "bold", [~~|~~]) + [*Research* Statement])

#columns(2, 
[

  I am a quantum condensed matter theorist focusing primarily on strongly correlated electron systems. My interests lie in the study of *quantum matter* - novel phases that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. Examples of quantum matter include (i) the mysterious strange metal and pseudogap phases observed in the cuprates, (ii) spin liquids arising from spin systems that do not order even at zero temperatures, and (iii) fractional quantum hall states that show quantisation of Hall conductivity along robust plateaus. Such phases are interesting because they cannot be organised according to the paradigm of spontaneous symmetry breaking. Instead, phase transitions involving such phases often involve changes in *topology*. This presents a challenge (and therefore opportunities) to extend the "standard model" of condensed matter physics to accomodate such exotic phases.
  #colbreak()

]
)

== Kondo breakdown as a route to understanding Mott transitions
#lorem(100)

== Engineering non-Fermi liquids through critical phases in impurity models
#lorem(100)

== Bulk-boundary correspondence via entanglement renormalisation in free fermions
#lorem(100)

== References
// #for (i, p) in papers.enumerate() {
//   [*#(i+1).*#h(0.5em) #authorise(p.authors)~ #p.title\.~~#text(fill: colAcc, weight: "semibold", p.display) (#p.time)] + parbreak()
// }

#bibliography("papers.yml", full: true, title: none, style: "american-physics-society")
