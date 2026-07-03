#import "@preview/polylux:0.4.0": *
#import "tubaf-theme.typ": *

#let slide = tubaf-slide.with(
  speaker: "R.-U. Börner",
  talk-title: "Creating slides in typst",
)

#set page(paper: "presentation-16-9")
#set text(size: 24pt, font: "Fira Sans")

#let spacer = v(6mm)

#tubaf-title-slide(
  title: [Unofficial Typst Template for Presentations],
  subtitle: [This template is based on the official `polylux` template for `typst` presentations, but has been modified to fit the corporate design of the TU Bergakademie Freiberg.],
  author: [Ralph-Uwe Börner | TU Bergakademie Freiberg | Germany],
)

#slide(title: [Why?])[
  - To create professional-looking slides quickly and easily
  - To maintain consistency in formatting and design
  - To leverage the power of Typst for document generation 
]

#slide(title: [How?])[
  - Use the provided template as a starting point
  - Add your content using Typst's syntax and features
]