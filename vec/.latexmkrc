#!/usr/bin/env perl

@default_files=(
    '*.tex',
    '*/*.tex',
    '*/*/*.tex',
    '*/*/*/*.tex',
    '*/*/*/*/*.tex',
    '*/*/*/*/*/*.tex',
);
$do_cd=1;
$pdf_mode = 5;
$postscript_mode = $dvi_mode = 0;
$recorder=1;
$bibtex_use=2;
$makeindex="export openout_any='a'; makeindex %O -o %D %S";
$bibtex="export openout_any='a'; bibtex %O %S";
$xelatex="xelatex -shell-escape -no-pdf %O %S";
$pdflatex="pdflatex -shell-escape %O %S";
$latex="latex --shell-escape %O %S";
$aux_dir="/tmp/latexmk/vec";
$out_dir="/tmp/latexmk/vec";
$show_time=1;
