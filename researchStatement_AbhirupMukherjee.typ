#import "src/settings.typ": *

#show: style.with(
)

#cvTitle(details.name, "Research Statement")
#v(-1.5em)
#header(details)
#line(length: 100%)

#let name = "resStateTexts/sds.typ"
#import(name):*
#include(name)

= References
#listPapers(sequence: sequence)
