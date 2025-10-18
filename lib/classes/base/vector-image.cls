% !TeX encoding = UTF-8

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{.local/lib/classes/base/vector-image}%
[2017/17/04 Vector Image]

    \LoadClass{.local/lib/classes/base/any-document}

    \makeatletter
        %# \title[%<short%>]{%<full%>}#
        \renewcommand*{\title}[2][]{%
            \gdef\@title@alt{Pic:~«#1»~[\currfilepath]}%
            \gdef\@title{Pic:~«#2»~[\currfilepath]}%
        }
        \renewcommand*{\@title}{%
            Title
        }
        \renewcommand*{\@title@alt}{%
            \@title
        }
    \makeatother


    % \usepackage[
    %     outputdir=/tmp/latexmk/vec,
    %     cachedir=.
    % ]{minted}

\endinput


