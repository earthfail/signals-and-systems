# run with latexmk.exe or latexmk.exe -pvc
@default_files = ('main.tex');
$pdf_mode = 1;
# $preview_continuous_mode=1;
$pdf_previewer='"C:\Users\surrlim\AppData\Local\SumatraPDF\SumatraPDF.exe" %O %S';
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
$out_dir="./build/";
