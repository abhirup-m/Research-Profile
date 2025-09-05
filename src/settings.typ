#import "@preview/fontawesome:0.6.0": *
#let fontBig = "Hero New"
#let fontMain = "Libertinus Serif"
#let title-size = 22pt
#let subtitle-size = 18pt
#let imp-size = 1.1em

#let colMain = rgb("1F1F1F")
#let colBold = rgb("3F3F3F")
#let colName = rgb("#CC5500")
#let colSec = rgb("#135873")
#let colSub = rgb("#708090")
#let colAcc = rgb("#a3573a")
#let papers = yaml("papers.yml")
#let details = yaml("details.yml")
#let references = yaml("references.yml")

#let balance(content, offset: 9pt) = layout(size => {
  let count = content.at("count")
  let textheight = measure(content, width: size.width).height / count
  let height = measure(content, height: textheight + offset, width: size.width).height
  block(height: height, content)
})

#let paperLinks(papers) = {
  let items = (:)
  for (k, v) in papers.pairs() {
    if v.keys().contains("url") {
      items.insert(k, link(v.url)[#v.display])
    }
  }
  return items
}


#let header(details) = {
  set text(size: 11pt)
  stack(
    dir: ltr,
    spacing: 1fr,
    [#fa-location-dot()#h(0.4em)#details.contacts.location],
    [#fa-envelope()#h(0.4em)#details.contacts.email],
    link(details.contacts.arxiv, [#fa-layer-group()#h(0.4em)arXiv]),
    link(details.contacts.gscholar, [#fa-google()#h(0.4em)Scholar]),
    link(details.contacts.website, [#fa-link()#h(0.4em)Website]),
    [#fa-phone()#h(0.4em)#details.contacts.phone],
  )
}

#let cvSection(t) = grid(
  columns: (auto, auto),
  gutter: 0.5em,
  align: left + bottom,
  v(0.5em) + heading(level:2, smallcaps(text(fill: colSec, weight: "semibold", t))),
  line(length: 100%, stroke: 1.5pt + colSec)
)
#let evalArray(arr) = {
  let content = ()
  for i in arr {
    content.push(eval(i, mode: "markup"))
  }
  return content
}
#let foc(t) = text(weight: "bold", fill: colAcc, t)
#let authorise(authors) = {
  let authorList = []
  for (i, a) in authors.enumerate() {
    let author = a
    if a.contains(", ") {
      author = a.split(", ").rev().join(" ")
    }
    if author == "Abhirup Mukherjee" {
      authorList = authorList + text(weight: "bold", fill: colName, author)
    } else {
      author = author.split(" ")
      author.at(0) = author.at(0).at(0)
      author = author.join(" ")
      authorList = authorList + author
    }
    if i < authors.len() - 1 {
      authorList = authorList + ", "
    }
  }
  return authorList
}

#let cvTitle(t1, t2, split: true) = {
  set text(font: fontBig, size: title-size, weight: "bold")
  grid(
    columns: (auto, auto, auto),
    align: (center + bottom, center + top, center + bottom),
    text(fill: colName, t1),
    [~~|~~],
    if split {
    text(size: subtitle-size, weight: "semibold")[#text(fill: colSub, t2.split().at(0)) #t2.split().at(1)]
    } else {
      text(size: subtitle-size, weight: "semibold")[#t2]
    }
  )
}

#let referee(ref) = {
  stack(
    dir: ttb,
    spacing: 0.5em,
    text(weight: "semibold", size: imp-size, ref.name) + if ref.info != none { [#h(0.5em) (#emph(ref.info))] },
    if ref.department != none { ref.department + ", "} + eval(ref.institute, mode: "markup"),
    emph(ref.email)
  )
}

#let twoCol(t1, t2, t3, t4) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    gutter: 1em,
    text(weight: "semibold", eval(t1, mode:"markup")) + linebreak() + t2,
    t3 + linebreak() + t4
  )
  v(0.5em)
}

#let dateForm(date) = {
  let months = ("January","February","March","April","May","June","July", "August","September","October","November","December")
  if str(date).split("-").len() == 2 {
    return months.at(int(str(date).split("-").at(1))-1) + "  " + str(date).split("-").at(0)
  } else {
    return str(date).split("-").at(0)
  }
}


#let style(
  base-size: 11pt,
  numCols: 1,
  doc
) = [
  #set page(
    paper: "us-letter",
    margin: (top: 1.2cm, bottom: 1cm, rest: 1.2cm),
  )
  #set columns(gutter: 20pt)

  #set par(justify: true, first-line-indent: (amount: 2em, all: true), leading: 0.6em)
  #set text(font:fontMain, fill: colMain, size: base-size, weight: 500)
  #set strong(delta: 150)
  #show strong: it => {
      text(fill: colBold, weight: "bold", it.body)
    }
  #show heading.where(level:1): set block(below: 1em)
  #show heading.where(level:1): set text(fill: colSec, weight: "bold", font: fontBig)
  #show heading.where(level:2): set text(fill: colSub, weight: "bold", font: fontBig)
  #show math.equation: set text(font: "Fira Math", weight: "regular")
  #set list(marker: square(width: 0.6em, fill: rgb("3f3f3f")))
  #show link: it => { foc(it) }
  
  #columns(
    numCols,
    doc
  )
]

#let listPapers(sequence: none) = {
  if sequence == none {
    sequence = ()
    for (k, v) in papers.pairs() {
      if v.keys().contains("url") {
        sequence.push(k)
      }
    }
  }
  for (count, k) in sequence.enumerate() [
    #let v = papers.at(k)
    #figure(
      kind: raw, 
      supplement: none,
      grid(
        columns: (15pt, 1fr),
        align: left+top,
        [#(count+1).~],
        [#authorise(v.author).~ #eval(v.title, mode:"markup")\.~~#text(fill: colAcc, weight: "semibold", if v.keys().contains("url"){link(v.url)[#v.display]} else {[#v.display]}) (#v.date)]
      )
    )#label(k)
  ]
}
