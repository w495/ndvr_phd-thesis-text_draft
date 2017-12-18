% !TeX encoding = UTF-8

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{.local/lib/classes/base/super-article}[2017/17/04 Super Article Class]

\LoadClass{.local/lib/classes/base/any-document}


\makeatletter
    \renewcommand{\headname}[1]{%
        \begin{tabular*}{\textwidth}{c @{\extracolsep{\fill}} c}
            {
              \tiny \typewriter
              \@title@alt~\copyright~\@author@alt,
              \today~\@place@alt.~—~%
              E-mail: \href{mailto:\@email}{\@email}, %
              Phone: \@phone
            }.
            & 
              #1
        \end{tabular*}
    }
    \renewcommand{\footname}[1]{%
        \begin{tabular*}{\textwidth}{c@{\extracolsep{\fill}}c}
              {\tiny \typewriter~branch:~\branch; commit:~\commit;}
            &
              {\tiny \typewriter file:~\currfilepath}
        \end{tabular*}
    }
\makeatother


\makeatletter
   \SetWatermarkText{
       \parbox{\textheight}{
          \squelch{
          \typewriter
          ~\par
          \DTMNow\hfill\@title
          \hfill\branch~\commit\par
          \currfilesum\hfill\currfilepath\hfill\commitlog
          }
       }
   }
% \makeatother

\makeatletter
    \AtBeginDocument{
        \hypersetup{
            pdftitle={\@title~—~\DTMNow},
            pdfauthor={\@author},
            pdfsubject={\@subject},
            pdfkeywords={\@keywords}
        }%
        \onehalfspace%
    }
\makeatother

\endinput


