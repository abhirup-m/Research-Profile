#import "src/settings.typ": *

#show: style.with(
)

#cvTitle(details.name, "Research Statement")
#v(-1.5em)
#header(details)
#line(length: 100%)

#import("resStateTexts/general.typ"):*
#include("resStateTexts/caltech.typ")

= References
#listPapers(sequence: sequence)
