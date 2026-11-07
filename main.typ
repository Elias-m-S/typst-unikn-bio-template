#import "/typ/acronym-lib.typ": *
#import "acronyms.typ": *
#import "typ/check-attributes.typ": *
#import "typ/confidentiality-statement.typ": *
#import "typ/declaration-of-authorship.typ": *
#import "typ/gender-disclaimer.typ": *
#import "typ/ai-disclaimer.typ"
#import "typ/glossary-lib.typ": *
#import "typ/lib.typ": *
#import "typ/locale.typ": *
#import "typ/shared-lib.typ": *
#import "typ/titlepage.typ": *
#import "acronyms.typ": acronyms
#import "glossary.typ": glossary
#import "@preview/codelst:2.0.2": *
#import "@preview/frame-it:1.1.2": *

//Zitate Addon "frame-it" - Anfang
#let (zitat,) = frames(
  zitat: ("Zitat", gray,),
)
#show: frame-style(styles.thmbox)
//Zitate Addon "frame-it" - Ende

//Entferne Zitierungen & "Eigendarstellung" aus dem Abbildungsverzeichnis - Anfang
#show outline.where(target: figure.where(kind: image)): it => {
  show outline.entry: it => {
    show "(Eigendarstellung)": it => { }
    show "i.A. an": it => { }
    show cite: it => { }
    it
  }
  it
}
//Entferne Zitierungen aus dem Abbildungsverzeichnis - Ende

//Entferne Zitierungen & "Eigendarstellung" aus dem Tabellenverzeichnis - Anfang
#show outline.where(target: figure.where(kind: table)): it => {
  show outline.entry: it => {
    show "(Eigendarstellung)": it => { }
    show "Eigendarstellung i.A.": it => { }
    show cite: it => { }
    it
  }
  it
}
//Entferne Zitierungen aus dem Tabellenverzeichnis - Ende

#show: supercharged-dhbw.with(
  title: "Mustertitel",
  authors: (
    (name: "Max Mustermann", student-id: "01/123456", course: "6. Semester", course-of-studies: "Biological Sciences", company: (
      (name: "AG Prof. Dr. Erika Musterfrau", city: "Konstanz")
    )),
  ),
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: false, // muss false bleiben, damit die Arbeitsgruppe ("company") angezeigt wird
  show-confidentiality-statement: false, // Sperrvermerk, nur bei vertraulichen Daten auf true setzen
  bibliography: bibliography("sources.bib"),
  date: datetime.today(),
  glossary: glossary, // displays the glossary terms defined in the glossary dictionary
  language: "de", // en, de
  supervisor: (company: "Dr. Lisa Laborant", university: "Prof. Dr. Erika Musterfrau"),
  university: "Universität Konstanz,",
  university-location: "Fachbereich Biologie",
  university-short: "Universität Konstanz",
  workload: "3 Monate",
  type-of-thesis: "Bachelorarbeit",
  type-of-degree: "Bachelor of Science (B.Sc.)",
  show-gender-disclaimer: true,
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)

// Edit this content to your liking

= Introduction

#lorem(100)

#lorem(100)

#lorem(100)

= Examples

#lorem(30)

== Acronyms

Use the `acr` function to insert acronyms, which looks like this #acr("HTTP").

#acrlpl("API") are used to define the interaction between different software systems.

#acrs("REST") is an architectural style for networked applications.

== Glossary

Use the `gls` function to insert glossary terms, which looks like this:

A #gls("Vulnerability") is a weakness in a system that can be exploited.

== Lists

Create bullet lists or numbered lists.

- This
- is a
- bullet list

+ It also
+ works with
+ numbered lists!

== Figures and Tables

Create figures or tables like this:

=== Figures

#figure(caption: "Image Example", image(width: 4cm, "assets/ts.svg"))

=== Tables

#figure(
  caption: "Table Example",
  table(
    columns: (1fr, 50%, auto),
    inset: 10pt,
    align: horizon,
    table.header(
      [],
      [*Area*],
      [*Parameters*],
    ),

    text("cylinder.svg"),
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],

    text("tetrahedron.svg"), $ sqrt(2) / 12 a^3 $, [$a$: edge length],
  ),
)<table>

== Code Snippets

Insert code snippets like this:

#figure(
  caption: "Codeblock Example",
  sourcecode[```ts
    const ReactComponent = () => {
      return (
        <div>
          <h1>Hello World</h1>
        </div>
      );
    };

    export default ReactComponent;
    ```],
)

#pagebreak()

== References

Cite like this #cite(form: "prose", <iso18004>).
Or like this @iso18004.

#zitat[
  "Or like this" @iso18004
]

#block(inset: 1em)[
  #zitat[
  "Or like this" @iso18004
  ]
]

You can also reference by adding `<ref>` with the desired name after figures or headings.

For example this @table references the table on the previous

=== Subheading example level three

==== Subheading example level four

===== Bold Heading without numbering
You can use the heading function at level 5 to create bold headings without numbering.


= Conclusion

#lorem(100)

#lorem(120)

#lorem(80)