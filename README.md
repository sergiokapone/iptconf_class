# iptconf — Document class for IPT conference proceedings

The `iptconf` class provides a two-column, A4 document layout for papers
submitted to the annual conference of the Institute of Physics and
Technology (IPT / НН ФТІ) at Igor Sikorsky Kyiv Polytechnic Institute.

The class supports Ukrainian, Russian and English as the paper language;
automatically writes a speaker registration form (`.txt`) and structured
article metadata (`.yaml`) as side effects of `\PaperLanguage`; and
exports per-paper title/author data to a `.dat` auxiliary file suitable
for building a book-of-abstracts index.

The class requires LuaLaTeX or XeLaTeX for full functionality;
pdfLaTeX is supported with reduced font features.

## Author

Sergiy Ponomarenko <s.ponomarenko@kpi.ua>
Institute of Physics and Technology,
Igor Sikorsky Kyiv Polytechnic Institute

## License

This work may be distributed and/or modified under the conditions of
the LaTeX Project Public License (LPPL), version 1.3c or later.
See <https://www.latex-project.org/lppl.txt>

This work has the LPPL maintenance status `maintained`.
The Current Maintainer is Sergiy Ponomarenko.

## Contents

- `iptconf.dtx`  — documented source code
- `iptconf.ins`  — installation script
- `iptconf.cls`  — derived class file (generated from `.dtx`)
- `iptconf-author.tex` — example author template
- `README.md`    — this file

## Installation

Run the installation script to extract the class file:
