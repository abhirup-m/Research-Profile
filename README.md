# Research Profile Constructor

This repository contains the Typst source files and associated resources for generating various professional documents related to my research profile, including cover letters, CVs, research statements, and publication lists. It also includes figures and layout files used across these documents. The nice 

## Overview of Contents

### Cover Letters
- `coverLetter_AbhirupMukherjee*.typ` – Typst source files for cover letters.
- `coverLetterTexts/` – Templates and text snippets for different institutions and situations.
- Generated PDFs are named with institution-specific suffixes, e.g., `_Princeton.pdf`, `_TUM.pdf`.

### Curriculum Vitae
- `CurrVitae_AbhirupMukherjee.typ` – Typst source for the CV.
- `CurrVitae_AbhirupMukherjee.pdf` – Compiled CV.
- `src/currVitae.typ` – Core Typst module for CV formatting.

### Research Statements
- `researchStatement_AbhirupMukherjee*.typ` – Typst source for research statements.
- `resStateTexts/` – Templates for research statements tailored to specific institutions.
- Generated PDFs are named with institution-specific suffixes.

### Publications
- `publications_AbhirupMukherjee.typ` – Typst source for publication list.
- `publications_AbhirupMukherjee.pdf` – Compiled publication list.

### Figures
- `figures/` – SVG files for figures used in research statements, publications, and presentations.

### Source Data
- `src/` contains YAML files for personal details (`details.yml`), papers (`papers.yml`), references (`references.yml`), and Typst settings (`settings.typ`) used across documents.

### Layout
- `layout.txt` – Notes and instructions for document layout and formatting.

## Usage

1. **Install Typst**: Make sure [Typst](https://typst.app) is installed on your system.
2. **Edit Source Files**: Modify `.typ` or `.yml` files as needed.
3. **Compile Documents**: Run Typst to generate PDFs:
```bash
   typst compile coverLetter_AbhirupMukherjee.typ
   typst compile CurrVitae_AbhirupMukherjee.typ
   typst compile researchStatement_AbhirupMukherjee.typ
   typst compile publications_AbhirupMukherjee.typ
```


## License
This repository is for personal use. All content, figures, and documents are the intellectual property of Abhirup Mukherjee unless otherwise noted.
