#import "@preview/touying:0.6.1": *
#import "@preview/touying-endfield:0.1.0": *

#import "@preview/numbly:0.1.0": numbly

#show: endfield-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  navigation: "none",
  config-info(
    title: [Presentation Title],
    subtitle: [Presentation Subtitle],
    author: [Author Name],
    date: [2026-01-01],
    institution: [Institution Name],
  ),
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

#outline-slide()

= First Section

== First Slide

- First point
- Second point
- Third point

#focus-slide[
  Key takeaway or warning message.
]

= Second Section

== Summary

Thank you for your attention!
