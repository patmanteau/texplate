 # TeXplate

## Vorbereitung

- Konfiguration anpassen
    ```bash
    cp texplate-config-default.tex texplate-config.tex
    $EDITOR texplate-config.tex
    $EDITOR texplate.xmpdata # PDF/A - Attribute
    ```
- `library.bib` aus Zotero o.ä. ins Verzeichnis legen
- Thesis in `thesis.tex` reinschreiben, alternativ `kap1.tex`, `kap2.tex` usw. mit `\input{}` einbinden :-)
- Abkürzungen in `components/glossar.tex` definieren
- [Libertinus](https://github.com/alif-type/libertinus/releases) installieren 

## Build

```
latexmk -lualatex -shell-escape -quiet texplate.tex
```