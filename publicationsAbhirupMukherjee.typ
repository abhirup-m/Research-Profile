#set page(
  paper: "us-letter",
  margin: (top: 1.5cm, bottom: 1cm, rest: 1.5cm),
)

#let papers = yaml("papers.yml")
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

#let fontBig = "Bitter"
#let fontMain = "Barlow"

#let colMain = rgb("1F1F1F")
#let colBold = rgb("3F3F3F")
#let colName = rgb("#CC5500")
#let colSec = rgb("#135873")
#let colSub = rgb("#708090")
#let colAcc = rgb("FF4433")

#set par(justify: true, first-line-indent: 2em)
#set text(font:fontMain, fill: colMain, size: 10pt, weight: 550)
#set strong(delta: 150)
#show strong: it => {
  text(fill: colBold, weight: "bold", it.body)
}
#show heading.where(level:1): set block(below: 1em)
#show heading.where(level:1): set text(fill: colSec, weight: "bold", font: fontMain)
#show heading.where(level:2): set text(fill: colSub, weight: "bold", font: fontMain)
#show math.equation: set text(weight: "bold")
#set list(marker: square(width: 0.6em, fill: rgb("3f3f3f")))
#show link: set text(fill: colAcc)

#let papers = yaml("papers.yml")
#let sequence = ("Mukherjee2023", "mukherjee2025", "Mukherjee2022", "Patra_2023", "Aashish2024", "Mukherjee2024", "Anjan2025")

#text(size: 2em, text(fill: colName, font: fontBig, weight: "semibold", [Abhirup Mukherjee]) + text(weight: "bold", [~~|~~]) + [List of #text(weight: "bold", fill: colSub, [Publications])])
#for (count, k) in sequence.enumerate() [
  #let v = papers.at(k)
  #figure(
    kind: raw, 
    supplement: none,
    numbering: n => [#h(1pt)#text(fill: colAcc, weight: "bold", [#n])#h(1pt)],
    grid(
      columns: (10pt, 1fr),
      align: left+top,
      [#(count+1).~],
      [#authorise(v.author).~ #eval(v.title, mode:"markup")\.~~#text(fill: colAcc, weight: "semibold", if v.keys().contains("url"){link(v.url)[#v.display]} else {[#v.display]}) (#v.date)]
    )
  )#label(k)
]
