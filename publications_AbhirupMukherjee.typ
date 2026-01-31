#import "src/settings.typ": *

#show: style.with(
  base-size: 12pt
)

#cvTitle(details.name, "List of Publications", split: false)
#v(-1em)
#header(details)
#line(length: 100%)

#listPapers(noName:false)
