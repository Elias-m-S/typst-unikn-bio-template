# Typst-Vorlage – Universität Konstanz, Fachbereich Biologie

This is a custom [Typst](https://typst.app/) template for biology students at the **University of Konstanz**.  
It is based on the DHBW template (RAFI Edition), which builds on the [Supercharged DHBW Template](https://github.com/DannySeidel/typst-dhbw-template). Only wording and logo were changed; the structure is identical.

Logo: `assets/uni-konstanz.svg` ([Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Universitat_Konstanz_logo.svg)).

Note: The research group is entered in the `company` field of the author (shown as "Arbeitsgruppe"), therefore `at-university` must stay `false`.

---

## Disclaimer ❗

This is not an official template of the University of Konstanz. You are responsible for verifying that the structure and the texts (especially the declaration of authorship and the AI declaration) comply with the **current regulations of your study programme**. Requirements may vary between research groups and supervisors.

---

## Project Structure

    .
    ├── assets/            # Logos and image assets
    ├── fonts/             # ❗ Empty due to licensing restrictions
    ├── typ/               # Core template logic and modular components
    ├── acronyms.typ       # Acronym definitions
    ├── glossary.typ       # Glossary terms
    ├── main.typ           # Main entry point for your document
    ├── main.pdf           # Example Output-PDF 
    ├── sources.bib        # Bibliography file (BibTeX format)
    ├── use_of_ai.typ      # Section on AI usage (optional)
    ├── .typstversion      # Note for keeping track of the version
    └── README.md          # This file

---

## Fonts

The `fonts/` folder is empty due to licensing restrictions.  
Please ask a colleague or supervisor for the fonts, or download them online. Once downloaded, place the font files into the `fonts/` folder and update the paths in `typ/lib.typ` to match the filenames if needed.

---

## Getting Started

1. Download the folder as a `.zip` or copy it locally.
2. Open [typst.app](https://typst.app/) or the compiler.
3. Either:
    - Upload the template files manually into a new project, **or**
4. Open `main.typ` and start writing your document.

---

## Anhang hinzufügen

Inhalt in `appendix.typ` schreiben und in `main.typ` `show-appendix: true` sowie `appendix: true` setzen.

---

## More Information

For configuration options and usage examples, refer to the  
[original Supercharged DHBW Template documentation](https://github.com/DannySeidel/typst-dhbw-template?tab=readme-ov-file).

---

## Use

This template is intended for academic use by biology students at the University of Konstanz.
