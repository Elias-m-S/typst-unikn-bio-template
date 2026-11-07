#import "locale.typ": *

#let gender-disclaimer(
  authors,
  title,
  university,
  university-location,
  date,
  language,
  many-authors,
  date-format,
) = {
  let authors-by-city = authors.map(author => author.company.city).dedup()

  
  v(2em)
  text(size: 20pt, weight: "bold", GENDER_DISCLAIMER_TITLE.at(language))
  v(1em)

    let authors-by-company = authors.map(author => author.company.name).dedup()
    let authors-by-study = authors.map(author => author.course-of-studies).dedup()
    let companies = authors-by-company.join(", ", last: AND.at(language))

    let institution = if (authors-by-company.len() == 1) {
      INSTITUTION_SINGLE.at(language)
    } else {
      INSTITUTION_PLURAL.at(language)
    }

    text(GENDER_DISCLAIMER_SECTION_A.at(language))
    v(1em)
    align(
      center,
      text(weight: "bold", title),
    )

    v(1em)

    par(
      justify: true,
      GENDER_DISCLAIMER_SECTION_B.at(language)
    )
  

  let end-date = if (type(date) == datetime) {
    date
  } else {
    date.at(1)
  }

  v(2em)
  text(authors-by-city.dedup().join(", ", last: AND.at(language)) + [, ] + end-date.display(date-format))

  v(0.5em)
  if (many-authors) {
    grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      ..authors.map(author => {
        v(3.5em)
        line(length: 80%)
        author.name
      })
    )
  } else {
    for author in authors {
      v(4em)
      line(length: 40%)
      author.name
    }
  }
}
