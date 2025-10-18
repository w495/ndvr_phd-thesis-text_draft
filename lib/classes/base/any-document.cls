% !TeX encoding = UTF-8

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{.local/lib/classes/base/any-document}%
[2017/17/04 Super Article Class]

\RequirePackage{kvoptions}
\DeclareStringOption[10]{relxpath}
\ProcessKeyvalOptions*

\LoadClass[14pt,a4paper,oneside,fleqn]{extarticle}


\RequirePackage{.local/lib/styles/globals}

\RequirePackage{.local/lib/styles/files}
\RequirePackage{.local/lib/styles/bashline}
\RequirePackage{.local/lib/styles/version}

\RequirePackage{.local/lib/styles/math}
\RequirePackage{.local/lib/styles/fonts}
\RequirePackage{.local/lib/styles/texts}
\RequirePackage{.local/lib/styles/colours}

\RequirePackage{.local/lib/styles/sections}
\RequirePackage{.local/lib/styles/tables}

\RequirePackage{.local/lib/styles/theorems}
\RequirePackage{.local/lib/styles/graphics}
\RequirePackage{.local/lib/styles/algorithms}
\RequirePackage{.local/lib/styles/sources}
\RequirePackage{.local/lib/styles/lists}
\RequirePackage{.local/lib/styles/hypers}
\RequirePackage{.local/lib/styles/pages}
\RequirePackage{.local/lib/styles/biblio}
\RequirePackage{.local/lib/styles/index}
\RequirePackage{.local/lib/styles/etc}

\RequirePackage{.local/lib/styles/datetime}


\makeatletter
    \AtBeginDocument{
        \hypersetup{
            pdftitle={\@title~\DTMNow},
            pdfauthor={\@author},
            pdfsubject={\@subject},
            pdfkeywords={\@keywords}
        }%
    }
\makeatother

\endinput


