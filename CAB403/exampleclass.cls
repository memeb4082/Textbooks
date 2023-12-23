\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exampleclass}[2014/08/16 Example LaTeX class]

% Define your commands
\newcommand{\unitname}[1]{\def\@unitname{#1}}
\newcommand{\unitcode}[1]{\def\@unitcode{#1}}
\newcommand{\unitcoordinator}[1]{\def\@unitcoordinator{#1}}

\RequirePackage{glossaries}
\RequirePackage{derivative}
\RequirePackage{geometry}
\RequirePackage{parskip}
\RequirePackage{float}
\RequirePackage{subcaption}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{graphicx}
\RequirePackage{lipsum}
\RequirePackage{minted}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage[hidelinks]{hyperref}
% Define the custom title page
\renewcommand{\maketitle}{
    \begin{titlepage}
        \begin{flushleft}
            Queensland University of Technology\\
            \rule{\linewidth}{0.5pt}
        \end{flushleft}
        \centering
        \Large{\textbf{\@unitcode}}\\
        \Large{\@unitname}
        \rule{\linewidth}{2pt}\\
        \small{\textit{\@unitcoordinator}}\\
        \vspace{1cm}
        \@author\\
        \vspace{0.6cm}
        \today
    \end{titlepage}
}
\renewcommand{\footrulewidth}{0.4pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\@unitname}
\fancyhead[R]{\nouppercase{\leftmark}}
\fancyfoot[L]{\@unitcoordinator}
\fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}
\renewcommand{\headrulewidth}{0.4pt} % Add this line for the header rule

\endinput


