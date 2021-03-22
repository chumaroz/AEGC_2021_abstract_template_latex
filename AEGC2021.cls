\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{AEGC2021}[2021/03/17 AEGC 2021 conference abstract]

\LoadClass[9pt]{extarticle}


\RequirePackage{fontspec} % used to specify custom nonlatex fonts, requires Xelatex compiler
\RequirePackage{titlesec} % to define formats for headings using command \titleformat
\RequirePackage{fancyhdr} % used to define custom headers and footers
\RequirePackage{graphicx} % to include graphics
\RequirePackage{multicol} % use multicol environment
\RequirePackage{tabularx} % to create author table 
\RequirePackage{amsmath} 
\RequirePackage{hyperref} % support for references in text
\RequirePackage{natbib} % handles .bib bibliography
\RequirePackage{calc} % allows performing calculations e.g. \linewidth-2\fboxsep below
\RequirePackage{afterpage}
% setup page layout
\RequirePackage{geometry}

 \geometry{
 a4paper,
%  includeheadfoot=true,
%  total={170mm,280mm},
 textwidth = 170mm,
 headheight = 20mm, %30mm
 top=25mm,
% top=32.5mm,
 bottom = 27.5mm,
 headsep = 10mm,
%  headsep = 7.5mm,
 footskip = 10mm
 }

% single column figure environment
\newenvironment{figurehere}
  {\def\@captype{figure}}
  {}

% paragraph formatting
\setlength\parindent{0pt}
\setlength{\parskip}{1em}

 \setmainfont{Times New Roman}
 
 
% change the default section font
% \newfontfamily\sectionfont{Times New Roman}
\newfontfamily{\arialfont}{Arial}
 

%  Define section heading format
\titleformat{\section}[hang]{\bfseries\fontsize{10}{12}\selectfont}{}{0pt}{\centering\MakeUppercase}
\titlespacing*{\section}{0pt}{*0}{*0}


% set default font
\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}

% remove header line
\renewcommand{\headrulewidth}{0pt}


% set style for title page
\fancypagestyle{ttlpage}{
  \fancyhf{}
  \rhead{{\includegraphics[width=8.41cm]{aegc_2021.pdf}}}
  \lfoot{\fontspec{Arial}\bfseries\itshape
    3\textsuperscript{rd} AEGC: Geosciences for Sustainable World \textendash 15-20 September 2021, Brisbane, Australia}
  \rfoot{\fontspec{Arial}\bfseries\thepage}
}

% set style for normal pages
\fancypagestyle{main}{
  \fancyhf{}
\lhead{\fontspec{Arial}\itshape Abbreviated Title \\}
\rhead{\fontspec{Arial}\textit{Surnamovich, N., Surnameson, N., Surnamova, N., \\ Surnamovich, N., Surnameson, N.}}
  \lfoot{\fontspec{Arial}\bfseries\itshape
    3\textsuperscript{rd} AEGC: Geosciences for Sustainable World \textendash 15-20 September 2021, Brisbane, Australia}
\rfoot{\bfseries\fontspec{Arial}\thepage}
}





%-----------------------------------Settings---------------------------------------------




%% bibliography
\bibliographystyle{firstbreak} % stylefile
\setcitestyle{authoryear,open={(},close={)}}


\newcommand{\abstractTitle}[1]{{\noindent\arialfont\fontsize{16}{18.2}\selectfont #1}}

\newcommand{\shortAbstract}[1]{{\setlength{\fboxsep}{6pt}\noindent\fbox{\parbox{\linewidth-2\fboxsep}{
\section{Abstract} #1 }}}}

\newcommand{\abstractAuthor}[4]{
\begin{tabularx}{\textwidth}{
@{\raggedright\arraybackslash}X
}{\arialfont\bfseries#1} \\
    \arialfont\fontsize{8}{9.6}\selectfont\textit{#2} \\
    \arialfont\fontsize{8}{9.6}\selectfont\textit{#3} \\
    \arialfont\fontsize{8}{9.6}\selectfont\textit{#4}
    \end{tabularx}
}