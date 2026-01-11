#import "src/settings.typ": *

#show: style.with(
)

#cvTitle(details.name, "Research Statement")
#v(-1.5em)
#header(details)
#line(length: 100%)

#let name = "resStateTexts/taiwanIOP.typ"
#import(name):*
#include(name)

#if sequence.len() > 0 [
  = References
  #listPapers(sequence: sequence, noName: true)
]
