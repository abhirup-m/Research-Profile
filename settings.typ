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
#let authorise(authors) = {
  let authorList = []
  for (i, a) in authors.enumerate() {
    let author = a
    if a.contains(", ") {
      author = a.split(", ").rev().join(" ")
    }
    if author == "Abhirup Mukherjee" {
      authorList = authorList + text(weight: "semibold", author)
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
      authorList = authorList + text(weight: "semibold", author)
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

#let cvTitle(t1, t2) = {
  set text(font: fontBig, size: title-size, weight: "bold")
  grid(
    columns: (auto, auto, auto),
    align: (center + bottom, center + top, center + bottom),
    text(fill: colName, t1),
    [~~|~~],
    text(size: subtitle-size, weight: "semibold")[#text(fill: colSub, t2.split().at(0)) #t2.split().at(1)])
}

#let referee(ref) = {
  stack(
    dir: ttb,
    spacing: 0.5em,
    text(weight: "semibold", size: imp-size, ref.name) + if ref.info != none { [#h(0.5em) (#emph(ref.info))] },
    ref.department + ", " + eval(ref.institute, mode: "markup"),
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
  base-size: 8.5pt,
  doc
) = [
  #set page(
    paper: "us-letter",
    margin: (top: 1.5cm, bottom: 1cm, rest: 1.5cm),
  )

  #set par(justify: true, first-line-indent: 2em)
  #set text(font:fontMain, fill: colMain, size: base-size, weight: 500)
  #set strong(delta: 150)
  #show strong: it => {
      text(fill: colBold, weight: "bold", it.body)
    }
  #show heading.where(level:1): set block(below: 1em)
  #show heading.where(level:1): set text(fill: colSec, weight: "bold", font: fontBig)
  #show heading.where(level:2): set text(fill: colSub, weight: "bold", font: fontBig)
  #show math.equation: set text(weight: "bold")
  #set list(marker: square(width: 0.6em, fill: rgb("3f3f3f")))
  #show link: it => { foc(it) }
  
  #doc
]
