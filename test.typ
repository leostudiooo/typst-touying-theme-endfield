#import "@preview/touying:0.6.1": *
#import "endfield.typ": *

#import "@preview/numbly:0.1.0": numbly
#import "@preview/zh-kit:0.1.0"

#show: endfield-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  navigation: "sidebar", // sidebar, mini-slides, none
  config-info(
    title: [Title],
    subtitle: [Subtitle],
    author: [An Author#footnote[This is the affiliation], Another Author#footnote[This is another affiliation]],
    date: datetime.today(),
    institution: text("ENDFIELD", font: "Gilroy", weight: "bold") + text(" INDUSTRIES", font: "Gilroy", size: 0.618em),
  ),
  config-page(fill: rgb("#e6e6e6")) // recommended to use pure color instead of gradient when using sidebar navigation and/or printing
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

#outline-slide()

= Section A

== Subsection A.1

$ x_(n+1) = (x_n + a / x_n) / 2 $

== Subsection A.2
=== Subsubsection
A slide with *important* infos#footnote[This is a footnote.].

= Section B

== Subsection B.1

#lorem(80)

#focus-slide[
  Wake Up!
]

== Subsection B.2

We can use `#pause` to #pause display something later.

#pause

Just like this.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to #pause display other content synchronously.

#show: appendix

= Appendix

== Appendix

Please pay attention to the current slide number.