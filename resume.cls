\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}

% setup hyperlink support
\RequirePackage{hyperref}
% setup icon support
\RequirePackage{fontawesome}

% format page layout
\RequirePackage[a4paper, left=0.5in, right=0.5in, top=0.5in, bottom=0.5in, nohead]{geometry}

% format section headings
\RequirePackage{titlesec}
% customize section headings: make Large, left-aligned and add horizontal line after
\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0cm}{*1.8}{*1.8}
% customize subsection headings: make large and left-aligned
\titleformat{\subsection}{\large\raggedright\bfseries}{}{0em}{}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}

% support bullet lists
\RequirePackage{enumitem}
\setlist{nosep} % removes vertical spacing within and around list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}

% usage: \iconSection{<heading>}{<icon>}
\newcommand{\iconSection}[2]{\section[#1]{#1 \hfill #2}}
% usage: \datedSubsection{<subheading>}{<date>}
\newcommand{\datedSubsection}[2]{\subsection[#1]{#1 \hfill \textnormal{#2}}}
% usage: \linkedDatedSubsection{<url>}{<subheading>}{<date>}
\newcommand{\linkedDatedSubsection}[3]{\datedSubsection{\href{#1}{#2}}{#3}}

% usage: \position{<role>}{<date>}{<company>}{<location>}
\newcommand{\position}[4]{
  \datedSubsection{#1}{#2}
  \par \textbf{#3} \hfill #4 \par
  \vspace{0.85ex}
}

% usage: \myLine{<description>}
\newcommand{\myLine}[1]{\par #1 \par}
% usage: \lineSummary{<highlight>}
\newcommand{\lineSummary}[1]{\myLine{\textit{#1}}}
% usage: \lineTwoSides{<left-side>}{<right-side>}
\newcommand{\lineTwoSides}[2]{\myLine{#1 \hfill #2}}
% usage: \linkedLineTwoSides{<url>}{<left-side>}{<right-side>}
\newcommand{\linkedLineTwoSides}[3]{\lineTwoSides{\href{#1}{#2}}{#3}}

% usage: \name{<name>}
\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
  \vspace{1.25ex}
}

% usage: \info{<email>}{<phone>}{<username>}
% where <username> is the same handle for both GitHub and LinkedIn
\newcommand{\info}[3]{
  \centerline{\large{
    \href{mailto:#1}{\faEnvelopeO\ #1} \thinspace
    \href{tel:#2}{\faPhone\ #2} \thinspace
    \href{https://github.com/#3}{\faGithub} % only icon. no text, no separator.
    \href{https://www.linkedin.com/in/#3}{\faLinkedin\ #3}
  }}
  \vspace{1.5ex}
}

% usage as follows:
% \dotSeparatedItem{<first-item>}
% \dotSeparatedItem{<second-item}
% ...
% <last-item>
\newcommand{\dotSeparatedItem}[1]{#1 \textperiodcentered}

% usage as follows:
% \listBegin
% \listItem{<first-item>}
% \listItem{<second-item>}
% ...
% \listItem{<last-item>}
% \listEnd
\newcommand{\listBegin}{\begin{itemize}}
\newcommand{\listEnd}{\end{itemize}}
\newcommand{\listItem}[1]{\item{#1}}
