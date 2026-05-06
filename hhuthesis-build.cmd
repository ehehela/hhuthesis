@echo off
echo === ① Generate cls from dtx ===
xelatex -interaction=nonstopmode hhuthesis.ins
echo.
echo === ② Build documentation PDF ===
xelatex -interaction=nonstopmode hhuthesis.dtx
xelatex -interaction=nonstopmode hhuthesis.dtx
echo.
echo === ③ Build example PDF ===
del hhuthesis-example.pdf 2>nul
xelatex -no-pdf --interaction=nonstopmode hhuthesis-example
bibtex hhuthesis-example
xelatex -no-pdf --interaction=nonstopmode hhuthesis-example
xelatex --interaction=nonstopmode hhuthesis-example
echo.
echo === Clean up ===
del *.aux *.bbl *.blg *.fdb_latexmk *.fls *.hd *.idx *.ilg *.ind *.log *.lof *.lot *.out *.run.xml *.synctex.gz *.toc *.xdv 2>nul
echo.
echo === Done ===
echo   hhuthesis.cls
echo   hhuthesis.pdf
echo   hhuthesis-example.pdf
