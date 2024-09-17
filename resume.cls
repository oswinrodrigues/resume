\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}

% setup hyperlink support
\RequirePackage{hyperref}
% setup icon support
\RequirePackage{fontawesome5}
% setup tab stop support
\RequirePackage{Tabbing}

% format page layout
\RequirePackage[a4paper, left=0.5in, right=0.5in, top=0.5in, bottom=0.5in, nohead]{geometry}
% suppress displaying page number
\pagenumbering{gobble}

% format section headings
\RequirePackage{titlesec}
% customize section headings: make Large, left-aligned and add horizontal line after
\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0cm}{*1.8}{*1.8}
% customize subsection headings: make large, left-aligned and bolded
\titleformat{\subsection}{\large\raggedright\bfseries}{}{0em}{}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}

% support bullet lists
\RequirePackage{enumitem}
% removes vertical spacing within and around list
\setlist{nosep}
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}

% usage: \iconSection{<heading>}{<icon>}
\newcommand{\iconSection}[2]{\section[#1]{#2\ #1}}
% usage: \subsectionTwoSides{<subheading>}{<date>}
\newcommand{\subsectionTwoSides}[2]{\subsection[#1]{#1 \hfill \textnormal{#2}}}
% usage: \linkedSubsectionTwoSides{<url>}{<subheading>}{<date>}
\newcommand{\linkedSubsectionTwoSides}[3]{\subsectionTwoSides{\href{#1}{#2}}{#3}}

% usage: \role{<title>}{<date>}
\newcommand{\role}[2]{
  \par \textbf{#1} \hfill #2 \par
  \vspace{0.85ex}
}
% usage: \position{<title>}{<date>}{<company>}{<location>}
\newcommand{\position}[4]{
  \subsectionTwoSides{#3}{#4}
  \role{#1}{#2}
}
% usage: \roleMulti{<title>}{<date>}
% used for additional roles within the same company
\newcommand{\roleMulti}[2]{
  \vspace{0.85ex}
  \role{#1}{#2}
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
  \centerline{
    \href{mailto:#1}{\faEnvelope[regular]\ #1} \thinspace
    % TODO: UNCOMMENT WHEN BACK ON CANADIAN PHONE PLAN %
    % \href{tel:#2}{\faPhone\ #2} \thinspace
    \href{https://github.com/#3}{\faGithub} % only icon. no text, no separator.
    \href{https://www.linkedin.com/in/#3}{\faLinkedinIn\ #3}
  }
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
