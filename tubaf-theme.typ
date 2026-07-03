#import "@preview/polylux:0.4.0": *

#set page(
  paper: "presentation-16-9",
  margin: 0pt,
)

#let tubaf-blue = rgb("#0064a8")
#let tubaf-dark-blue = rgb("#00477e")

#let tubaf-logo = "assets/TUBAF_Logo_EN_blau.svg"
#let tubaf-seal = "assets/TUBAF_Siegel_blau.svg"

#let tubaf-title-slide(
  title: [],
  subtitle: none,
  author: none,
) = slide[
  #place(
    top + left,
    dx: -12mm,
    dy: -20mm,
    image(tubaf-logo, width: 85mm),
  )

  #place(
    bottom + left,
    dx: -30mm,
    dy: 60pt,
    box(
      width: 120%,
      height: 42mm,
      polygon(
        fill: tubaf-blue,
        (0%, 100%),
        (100%, 100%),
        (100%, 0%),
        (0%, 18%),
      ),
    ),
  )

  #place(
    left + bottom,
    dx: 4mm,
    dy: 12mm,
    block(width: 96%)[
      #set text(fill: black, size: 28pt, weight: "bold")
      #title

      #if subtitle != none [
        #v(-4mm)
        #set text(fill: black, size: 18pt)
        #subtitle
      ]

      #if author != none [
        #v(56mm)
        #set text(fill: white, size: 18pt)
        #author
      ]
    ],
  )
]

#let tubaf-footer(
  speaker: "",
  talk-title: "",
) = context [
  #let n = toolbox.slide-number

  #place(
    bottom + left,
    dx: 0mm,
    dy: 10mm,
  )[
    #set text(size: 18pt, fill: black)
    #h(5mm)
    #strong[#n]
    #h(6mm)
    #speaker
    #h(6mm)
    #talk-title
  ]

  #place(
    bottom + right,
    dx: 20mm,
    dy: 20mm,
    image(tubaf-seal, width: 42mm),
  )
]

#let tubaf-slide(
  title: [],
  speaker: "",
  talk-title: "",
  body,
) = slide[
  #place(
    top + left,
    dx: 12mm,
    dy: -8mm,
  )[
    #set text(fill: tubaf-blue, size: 28pt, weight: "bold")
    #title
  ]

  #v(8mm)

  #pad(x: 12mm, right: 12mm)[
    #body
  ]

  
#tubaf-footer(
    speaker: speaker,
    talk-title: talk-title,
)
]

#let tubaf-theme(
  speaker: "",
  talk-title: "",
) = (
  title-slide: tubaf-title-slide,
    slide: (title: [], body) => tubaf-slide(
    title: title,
    speaker: speaker,
    talk-title: talk-title,
    body,
  ),
)
