#import "@preview/fontawesome:0.6.0": *
#let space = 2em
#let imp-size = 1.1em
#let section-size = 15pt
#let margin = 3em
#let primCol = rgb("2c3e78")

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

