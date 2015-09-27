% http://ctan.mirrors.hoobly.com/macros/latex/doc/clsguide.pdf

% Rule of thumb: in class if specific to the class
%                in package if it can be in different class

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fiche}[2015/09/27 fiche class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\LoadClass[10pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}           % UTF-8
\RequirePackage[a4paper, dvips]{geometry} % mise en page générale
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}              % polices
\RequirePackage{multicol}                 % multi-colonnes avancé
\RequirePackage{xspace}                   % espaces conditionnels
\RequirePackage{graphicx}                 % images
\RequirePackage[francais]{babel}          % français

\RequirePackage{amsmath}                  % math
\RequirePackage{amssymb}                  % math
\RequirePackage{gensymb}                  % math

\RequirePackage{url}
	\urlstyle{sf}
\RequirePackage[usenames]{color}
\RequirePackage{varioref}                 % \vpageref

\RequirePackage{fancyhdr}                 % cfoot
\pagestyle{fancy}                     % we need info at the bottom but not a footnote
\renewcommand{\headrulewidth}{0pt}    % ça crée une ligne au-dessus... on l'enlève
% \thispagestyle{empty}               % we need only one page

\renewcommand{\familydefault}{\sfdefault}

\definecolor{codeBlue}{rgb}{0,0,1}
\definecolor{webred}{rgb}{0.5,0,0}
\definecolor{codeGreen}{rgb}{0,0.5,0}
\definecolor{codeGrey}{rgb}{0.6,0.6,0.6}
\definecolor{webdarkblue}{rgb}{0,0,0.4}
\definecolor{webgreen}{rgb}{0,0.3,0}
\definecolor{webblue}{rgb}{0,0,0.8}
\definecolor{orange}{rgb}{0.7,0.1,0.1}

% Configuration de babel
\NoAutoSpaceBeforeFDP

% Configuration de graphicx
\graphicspath{{images/}}

%\newcommand{\hypertitle}
%{
% Titre, auteur et date
\title{Informations sur les logiciels libres}
\author{Kot-à-projet Louvain-Li-Nux}
\date{\today}
%}


% Commandes personnalisées
\newcommand{\upcirc}{$^{\circ}$\xspace}
\newcommand{\super}[1]{$^{\mbox{\scriptsize #1}}$\xspace}

% Réduction des marges
% Dimensions de la page :

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  0
  %   |                                  %
  %---+----------------------------------%  1
  %   | +----------------------------+   %  2
  %   | |          en-tête           |   %
  %   | +----------------------------+   %  3
  %   | +----------------------------+   %  4
  %   | |                            |   %       Remarques :
  %   | |                            |   %        . distance de '0' à '1' : un pouce + \voffset
  %   | |                            |   %        . distance de 'a' à 'b' : un pouce + \hoffset
  %   | |           texte            |   %
  %   | |                            |   %
  %   | |                            |   %
  %   | |                            |   %
  %   | +----------------------------+   %  5
  %   | +----------------------------+   %
  %   | |         bas de page        |   %
  %   | +----------------------------+   %  6
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %a  b c                            d

   % général
     \voffset       -40mm    % pour descendre (si positif) ou remonter (si négatif) le tout
     \hoffset       -12.5mm    % pour agrandir (si positif) ou diminuer (si négatif) la marge gauche
     \oddsidemargin 10pt   % distance de 'b' à 'c'
   % texte
     \headsep       42pt   % distance de '3' à '4', la distance entre l'en-tête et le texte
     \textheight    760pt  % distance de '4' à '5', pour déterminer la hauteur du texte
     \textwidth     177.5mm  % distance de 'c' à 'd'
   % en-tête
     \topmargin     0pt    % distance de '1' à '2', pour descendre (si positif) ou remonter (si négatif) le tout
     \headheight    14pt   % distance de '2' à '3', doit être > 13.59999
   % bas de page
     \footskip      38pt   % distance de '5' à '6', la distance entre le texte et le bas de page
%\addtolength{\hoffset}{-1cm}
%\addtolength{\textwidth}{2.5cm}
%\addtolength{\voffset}{-2cm}
%\addtolength{\textheight}{4.9cm}

% Logo du Louvain-Li-Nux
\newsavebox{\logollnux}
\sbox{\logollnux}{\raisebox{-2.2cm}{\includegraphics[height=2.5cm]{../logo.png}}}
\newsavebox{\logoqr}
\sbox{\logoqr}{\raisebox{-2.2cm}{\includegraphics[height=2.5cm]{../qr.png}}}

%titre
\newcommand{\titlellnux}[2]
{
	\hspace{-1cm}
	\begin{tabular}{lp{13cm}c}
		\usebox{\logoqr}
			&
		\begin{center}{\Large Les fiches du Louvain-li-Nux\linebreak \linebreak
		\LARGE \textbf{Episode #1 : #2}}\end{center}
			&
		\usebox{\logollnux}\\
        & & {\fontsize{8pt}{9.6pt}\selectfont Louvain-li-Nux}
	\end{tabular}
	\vspace{-.5cm}
}

% pied de page
\rfoot{\url{www.louvainlinux.be}\hspace{-3.0cm}}
\cfoot{}
\lfoot{Rue Constantin Meunier 12 (Bruyères)}

% PDF
   \RequirePackage[pdftitle={Fiche Informative},  % apparition ds les propriétés du doc
               pdfauthor={Louvain-li-Nux},
               pdfsubject={Fiche Informative du Louvain-li-Nux},
               pdfkeywords={louvain-li-nux,llnux,fiche info,lln,kap,ucl},
	       colorlinks=true,
	       linkcolor=webdarkblue,
	       filecolor=webblue,
	       urlcolor=webdarkblue,
	       citecolor=webgreen]{hyperref}

\endinput
