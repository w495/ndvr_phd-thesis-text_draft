#!/usr/bin/env perl

@default_files=(
    '*.tex',  
);
$do_cd=1;
$recorder=1;
$bibtex_use=2;
$pdf_mode = 5;
$postscript_mode = $dvi_mode = 0;
#$makeindex="export openout_any='a'; makeindex -s ./.local/lib/index.ist  %O -o %D %S";
$makeindex = "export openout_any='a'; texindy -I xelatex -C utf8 -v  -M .local/lib/index/multilingual.xdy -o  %D %S";
$bibtex="export openout_any='a'; bibtex %O %S";
$xelatex="xelatex -shell-escape -no-pdf %O %S";
$pdflatex="pdflatex -shell-escape %O %S";
$latex="latex --shell-escape %O %S";
$aux_dir="/tmp/latexmk/src";
$out_dir="/tmp/latexmk/src";
$show_time=1;
