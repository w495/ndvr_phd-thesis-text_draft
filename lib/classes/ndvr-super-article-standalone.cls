% !TeX encoding = UTF-8

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{.local/lib/classes/ndvr-super-article-standalone}%
[2017/17/04 Super Article Class]

\LoadClass[
    class=.local/lib/classes/ndvr-super-article,
    float=true,
    crop=false
]{standalone}

\titleformat{\section}[block]
    {\bfseries\huge\sffamily\raggedright}%
    {}%
    {0ex}%
    {\MakeUppercase}%
    {}%

\makeatletter
    \let\latexl@section\l@section
    \def\l@section#1#2{
        \begingroup
            \let\numberline\@gobble\latexl@section{#1}{#2}
        \endgroup
    }
\makeatother


\endinput

