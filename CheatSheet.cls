%%
%% This is file `CheatSheet.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% CheatSheet.dtx  (with options: `class')
%% Copyright (c) 2017 by Adrian C. Hinrichs
%% 
%% This File may be distributed and/or modified under the condition of the below
%% license.
%% 
%% 
%% MIT License
%% 
%% 
%% 
%% Copyright (c) 2017
%% 
%% 
%% 
%% Permission is hereby granted, free of charge, to any person obtaining a copy
%% of this software and associated documentation files (the "Software"), to deal
%% in the Software without restriction, including without limitation the rights
%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom the Software is
%% furnished to do so, subject to the following conditions:
%% 
%% The above copyright notice and this permission notice shall be included in all
%% copies or substantial portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%% SOFTWARE.
\def\fileversion{v0.1}
\def\filedate{2017/06/23}
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{CheatSheet}[\filedate\space\fileversion]
\RequirePackage{kvoptions}
\SetupKeyvalOptions{ family=cs,
  prefix=cs@ }
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOptionKey}{article}}
\ProcessKeyvalOptions*
\LoadClass{article}
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{fontenc}
\PassOptionsToPackage{sfdefault}{AlegreyaSans}
\RequirePackage{libertine}
\RequirePackage{suffix}
\RequirePackage{xifthen}
\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{xcolor}
\definecolor{primaryColor}{cmyk}{1,.72,0,.38}
\definecolor{secondaryColor}{named}{gray}

\RequirePackage{mdframed}

\RequirePackage{listings}
\lstset{
  breaklines = true,
  postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookrightarrow\space}},
  basicstyle=\ttfamily\color{primaryColor}\scriptsize
}
\RequirePackage{etoolbox}
\pagestyle{empty}
\setcounter{secnumdepth}{0}

\RequirePackage{geometry}
\geometry{top=1cm, bottom=1cm, left=1cm,
  headsep=14pt,hmarginratio={1:1}}
\renewcommand{\theequation}{\Roman{equation}}
\everymath\expandafter{\the\everymath \color{primaryColor}}
\renewcommand{\title}[1]{
  \def\thetitle{#1}
}

\renewcommand{\date}[1]{
  \def\thedate{#1}
}
\renewcommand{\author}[1]{
  \def\theauthor{#1}
}

\renewcommand{\maketitle}{
  \begin{mdframed}[
    linecolor=secondaryColor,linewidth=1pt,%
    leftmargin=0mm,rightmargin=0mm,skipbelow=0mm,skipabove=0mm
    ]
    {\color{primaryColor}\Large\textbf\sffamily\thetitle}\\
    \normalsize\theauthor\\
    \normalsize\thedate\\
  \end{mdframed}

  {\color{secondaryColor} \rule{\linewidth}{1pt}}
}
\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%x
                                {\normalfont\large\bfseries\sffamily\color{primaryColor}}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                {-1explus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\normalsize\sffamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
  {-1ex plus -.5ex minus -.2ex}%
  {1ex plus .2ex}%
  {\normalfont\small\sffamily}}
\endinput
%%
%% End of file `CheatSheet.cls'.