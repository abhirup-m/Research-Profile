#import "@preview/fontawesome:0.6.0": *
#let title-size = 20pt
#let space = 2em
#let imp-size = 1.1em
#let section-size = 15pt
#let margin = 3em
#let primCol = rgb("2c3e78")
#let href(l, t) = { link(l)[#text(fill: primCol, t)] }
#let section(t) = grid(
  columns: (auto, auto),
  gutter: 0.5em,
  align: left + bottom,
  v(0.5em) + smallcaps(text(fill: primCol, weight: "semibold", size: section-size, t)),
  line(length: 100%, stroke: 1.5pt + primCol)
)
#let evalArray(arr) = {
  let content = ()
  for i in arr {
    content.push(eval(i, mode: "markup"))
  }
  return content
}
#let foc(t) = text(weight: "bold", fill: primCol, t)
#let authorise(authors) = {
  let authorList = []
  for (i, revAuthor) in authors.enumerate() {
    let author = revAuthor.split(", ").rev().join(" ")
    if author == "Abhirup Mukherjee" {
      authorList = authorList + emph(author)
    } else {
      authorList = authorList + author
    }
    if i < authors.len() - 1 {
      authorList = authorList + ", "
    }
  }
  return authorList
}
#let slist(..i) = list(marker: square-marker(size: 0.7em), ..i)
#let title(t) = align(center, par(spacing: 0em, text(size: title-size, weight: "semibold", fill: primCol, smallcaps(t))))
#let reference(ref) = {
  stack(
    dir: ttb,
    spacing: 0.5em,
    text(weight: "semibold", size: imp-size, ref.name) + if ref.info != none { [#h(0.5em) (#emph(ref.info))] },
    ref.department,
    eval(ref.institute, mode: "markup"),
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


#let resume(doc) = {
  let square-marker(size: 1em, fill: black) = {
    square(width: size, height: size, fill: primCol)
  }
  set list(marker: square-marker(size: 0.7em))
  set page(
    margin: margin
  )
  set text(size: 11pt)
  doc
}

#let dateForm(date) = {
  let months = ("January","February","March","April","May","June","July", "August","September","October","November","December")
  return months.at(int(str(date).split("-").at(1))-1) + "  " + str(date).split("-").at(0)
}
