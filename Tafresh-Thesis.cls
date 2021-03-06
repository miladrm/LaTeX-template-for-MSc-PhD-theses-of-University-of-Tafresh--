
%%
%%  This is file `IUST-Thesis.cls',
%%  It is a modification  of Tabriz_thesis of Vahid Damanafshan,
%%	by: Mahmood Amintoosi, m.amintoosi@gmail.com
%%  http://profsite.sttu.ac.ir/mamintoosi
%%	Ver 0.1, Jan 2012

%% Original Copyright

%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2011-2012 Vahid Damanafshan
%%  
%%   http://damanafshan.tk      
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{VThesis}
              [10/21/2011 v0.4
 Persian thesis document class in XeLaTeX for University of Tabriz projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,10pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\sath#1{\gdef\@sath{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinsath#1{\gdef\@latinsath{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه }}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی ارشد}
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\firstPage}{\begin{titlepage}
\vspace{-.5cm}\centerline{{\includegraphics[height=3.5cm,width=3.5cm]{logo1.png}}}
\vskip 1.2cm
{\titra\bfseries\@faculty}
\vskip 1.5cm
{\titrb\@university}
\vskip 1.7cm 
{\titra\bfseries\@department}
\vskip 2.4cm
%\vskip 1cm
\baselineskip=.750cm
\centerline{\titrc  \@sath}
\vskip 2.4cm
 {\titrd\bfseries {\baselineskip=1cm \@title}}\baselineskip=1.5cm
\vskip 2.7cm
 \baselineskip=.5cm
\titre
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما:
\vskip 1.5cm
%\vspace{-.3cm}
{\mitrafonta\par
\@firstsupervisor}
\else
\large
استادان راهنما
\par
{\mitrafonta\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\vskip 2.1cm
\titre
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور:

\vskip 1.5cm
{\mitrafonta\par
\@firstadvisor}
\else

\large
استادان مشاور
%\par
\vskip 1.5cm
{\mitfont\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}


\vskip 2.5cm
{\titre%
  \by}
  \vskip 1.1cm
{\mitrafonta   \@name\ \ \@surname}
%\vskip 5mm
\vskip 2.2cm
%\vfill
\centerline{\titra \@thesisdate}
\vspace{-3.7cm}





\end{titlepage}%
} % end of firstPage

\newcommand{\besmPage}{
%% صفحه سفید
\newpage
%\pagestyle{empty}\noindent\\ 
%% بسم الله الرحمن الرحیم
\newpage
\thispagestyle{empty}
\begin{center}
\vspace*{5.2cm}{\includegraphics{besm1}}
\end{center}
}

%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
\newpage
\setcounter{page}{1}
%\thispagestyle{empty}

\begin{center}
{\Large \titlefont
 تأییدیه‌ی هیأت داوران جلسه‌ی دفاع از \@projectLabel
 }
\end{center}
\vspace{.5cm}

نام دانشكده: مهندسی صنایع

نام دانشجو: \@name{} \@surname

عنوان \@projectLabel: \@title

تاریخ دفاع: \@thesisdate

رشته: \@subject

%\vspace{.5cm}
گرایش: صنایع
}

% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
\newpage
%\thispagestyle{empty}
{\nazfontbold
\begin{center}

تعهد نامه اصالت اثر\\

\vspace{.5cm}
باسمه تعالی 
\vspace{.5cm}
\end{center}
\doublespacing 

اینجانب، 
\@name \ \@surname \ 
به شماره دانشجویی 
\@studentID {}
دانشجوی رشته 
\@subject {}
مقطع تحصیلی 
\@degree {}
متعهد می‌شوم كه، مطالب مندرج در این \@projectLabel{} حاصل كار پژوهشی اینجانب، تحت نظارت و راهنمایی اساتید دانشگاه تفرش بوده و به دستاوردهای دیگران  که در این پژوهش از آن‌ها استفاده شده است، مطابق مقررات و روال متعارف ارجاع و در فهرست منابع و ماخذ ذکر گردیده است. این پایان‌نامه قبلاً برای احراز هیچ مدرک هم سطح یا بالاتر ارائه نگردیده است.\\
در صورت اثبات تخلف در هر زمان، مدرک تحصیلی صادر شده توسط دانشگاه از درجه اعتبار ساقط بوده و دانشگاه حق پیگیری قانونی خواهد داشت.\\
کلیه نتایج و حقوق حاصل از این پایان نامه، متعلق به دانشگاه تقرش می‌باشد. هرگونه استفاده از نتایج علمی و عملی، واگذاری اطلاعات به دیگران یا چاپ و تکثیر، نسخه‌برداری، ترجمه و اقتباس از این پایان‌نامه، بدون موافقت کتبی دانشگاه تفرش ممنوع است.\\
نقل مطالب با ذکر ماخذ بلامانع است.




\vspace{.5cm}
\begin{center}
%\begin{tabular}{lr}
    	\@name{} \@surname \\
امضا:  \\
%\end{tabular}
\end{center}
}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% مجوز بهره‌برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont
مجوز بهره‌برداری از پایان‌نامه \\
 }
\vspace{.5cm}
\end{center}
\doublespacing 

بهره‌برداری از این پایان‌نامه در چهارچوب مقررات كتابخانه و با توجه به محدودیتی كه توسط استاد راهنما به شرح زیر تعیین می‌شود، بلامانع است:

\noindent$\Box$ بهره‌برداری از این پایان‌نامه برای همگان بلامانع است.\\
$\Box$ بهره‌برداری از این پایان‌نامه با اخذ مجوز از استاد راهنما، بلامانع است.\\
$\Box$ بهره‌برداری از این پایان‌نامه تا تاریخ .................................... ممنوع است.\\

\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{l p{.25\textwidth}}
% چون & در ماکروی دخل جدول مشکل ایجاد می‌کرد مجبور شدم دو تیکه بنویسم
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		استاد راهنما:
	\else
		اساتید راهنما: 
	\fi
\fi
&
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		\@firstsupervisor
	\else
		\@firstsupervisor{} \newline \@secondsupervisor
	\fi
\fi \\
  تاریخ: & \\
	 امضا: &\\
\end{tabular}
\end{flushleft}
}

% \def\frame{\newpage
% \thispagestyle{empty}
% \begin{framed}\thispagestyle{empty}}
% \def\endframe{\thispagestyle{empty}\end{framed}
% \thispagestyle{empty}
% \newpage
% }
\newcommand\abstractPage{\newpage
\thispagestyle{empty}
\vskip 15mm
{\tzarfont\noindent چکیده}
\vspace{5mm}
\par
\noindent
{\zarfont\@fa-abstract}
\vspace{8mm}
\par
\noindent
{\tzarfont\textbf{واژگان کلیدی:} }
{\zarfont\@keywords}
\newpage
}

% \def\latinabstract{\newpage
% \thispagestyle{empty}
% \vskip 15mm
% \begin{center}%{\Large\bfseries \@latintitle \\[5mm]}
% {\bfseries Abstract}
% \end{center}
% \vspace{5mm}}

% \def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}
\centerline{\Large \bfseries قدردانی}
\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{%\nastaliq \scriptsize 
\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

% \def\abstract{
% \newpage
% \subsection*{چکیده}\small
% \@normalsize
% \@fa-abstract
% }
% \def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300
\font\supervisorfont=cmbxti10

\newcommand{\latinfirstPage}{%
\newpage\clearpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\large\bfseries Abstract:}
\vspace{5mm}
\par
\noindent
\large\@en-abstract
\vspace{8mm}
\par
\noindent
\large\textbf{Keywords:} 
\large\@latinkeywords

\begin{titlepage}
\vspace*{.01cm} {\includegraphics[height=3.5cm,width=3.5cm]{logo1}}
\vskip .7cm
\centerline{\bfseries\Large \@latinfaculty} 
\vskip .8cm
\centerline{\Huge\@latinuniversity}
\vskip .9cm
\centerline{\bfseries\Large\@latindepartment} 
\vskip 3cm
{\huge\@latinsath}
\vskip 2.4cm
{\bfseries\Huge\@latintitle}
\baselineskip=1cm \par
\vskip 2.7cm





{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
\huge{Supervisor:}
\vskip 1.5cm
{\bfseries\par
\LARGE\@firstlatinsupervisor}
\else
\huge{Supervisors:}
\vskip 1.5cm
{\bfseries\LARGE \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par

{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
\vskip 2.1cm
\huge{Advisor:}
\vskip 1.5cm
{\LARGE\bfseries\par
\@firstlatinadvisor}
\else

\huge
Advisors:
\vskip 1.5cm
{\Huge\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 2.5cm



{\huge\latinby}
\vskip 1.1cm
{ \bfseries\LARGE\@latinname \; \@latinsurname}
\vskip 2.2cm
{\Large\@latinthesisdate}
\par
\vspace{-3.7cm}


%
\end{titlepage}
\fi}



\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{دانشجو:}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}



%% M.Amintoosi
%% 
%% Copyright © 2011-2012      by Vahid Damanafshan     
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi for his invaluable hints.
%%
%% End of file `IUST-Thesis.cls'.
