\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bjfu}[2018/02/14 A template for bjfu bachelor thesis]
\LoadClass[UTF8]{ctexart}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%协议：MIT协议（http://opensource.org/licenses/MIT）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%对于包的使用

%超链接
\RequirePackage[colorlinks,linkcolor=black]{hyperref}
%板式
\RequirePackage{geometry}
%图片
\RequirePackage{graphicx}
%图表标题
\RequirePackage{bicaption}
%子图
\RequirePackage{subcaption}
%页眉页脚控制
\RequirePackage{fancyhdr}
%非汉字字体设置
\RequirePackage{fontspec}
%控制参考文献格式
\RequirePackage[square,super, comma, sort&compress, numbers]{natbib}
%计数器控制
\RequirePackage{amsmath}
%表格控制
\RequirePackage{multirow} 
\RequirePackage{array}
% use xifthen
\RequirePackage{xifthen}
%插入代码
%\RequirePackage{listings}
%设置列表格式
%\RequirePackage{enumitem}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%论文一律编排并打印在A4幅面白纸上
%上边距为25mm，下边距为25mm，左边距为30mm，右边距为20mm
\geometry{a4paper,left=30mm,right=20mm,top=25mm,bottom=25mm}

%论文行间距为1.5倍（可能需要用\selectfont）
\linespread{1.2}

%页眉页脚开启
\pagestyle{fancy}
%页眉字号字体为小五号宋体，内容为“北京林业大学本科毕业论文(设计)”
\chead{\zihao{-5}\CJKfamily{zhsong}北京林业大学本科毕业论文(设计) } 
%页眉只有中间有内容，左右为空白
\lhead{} 
\rhead{}

%页眉下边的横线宽度：事实上论文规范并没有对此做出规定，但是我们选择遵循常理去除横线。
\renewcommand{\headrulewidth}{0pt}

%论文页码的字号字体为小五号Times New Roman体
%从绪论部分开始，至附录，用阿拉伯数字连续编排
%页码位于页面底端居中
\renewcommand{\footnotesize}{\zihao{-5}}  

%论文中出现的所有数字和字母如无特殊要求都用Times New Roman体。

%设置正文非汉字的字体为Times New Roman
\setmainfont{Times New Roman}
%设置正文非汉字的粗体字体为Times New Roman
\setsansfont{Times New Roman}

%设置英文图为Fig，表格为Tab
\DeclareCaptionOption{english}[]{
\renewcommand\figurename{Fig.}
\renewcommand\tablename{Tab}}
\captionsetup[bi-second]{english}

%一定要在这里声明space，直接声明不好使，小五号
\captionsetup{font={footnotesize,bf},labelsep=space}

%设置图片编号随着章节自动清零
\numberwithin{figure}{section}
%设置公式编号随着章节自动清零
\numberwithin{equation}{section}

%定义图的编号为章节号码.序号
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
%定义公式的编号为章节号码.序号
\renewcommand{\theequation}{\thesection.\arabic{equation}}

%改变figure为图
\renewcommand{\figureautorefname}{图}

%改变equation为式
\renewcommand{\equationautorefname}{式}
\renewcommand{\subsectionautorefname}{节}
\renewcommand{\subsectionautorefname}{章}

%章标题：四号宋体加粗
%section另起一页，宋体四号加粗居中
\CTEXsetup[format={\pagebreak\centering\zihao{4}\CJKfamily{zhsong}\textbf}]{section}

%节标题：小四号宋体加粗
%subsection宋体小四号加粗
\CTEXsetup[format={\zihao{-4}\CJKfamily{zhsong}\textbf}]{subsection}


\bibliographystyle{GBT7714-2005NLang-UTF8}

%代码报lsting格式
%\lstset{numbers=none,
%  numberstyle=\scriptsize,
%  frame=lines,
%  flexiblecolumns=false,
%  language=Python,
%  basicstyle=\ttfamily\small,
%  breaklines=true,
%  extendedchars=true,
%  escapechar=\%,
%  texcl=true,
%  showstringspaces=true,
%  keywordstyle=\bfseries,
%  tabsize=4}

%%%%
%以下内容理工农医类专业请直接注释掉
%设置section计数器为汉字
\CTEXsetup[number={\chinese{section}}]{section}
\CTEXsetup[name={（,）}]{subsection}
\CTEXsetup[number={\chinese{subsection}}]{subsection}

%%%%
% 汉语标题
\newcommand{\bjfuTitle}[1]{\def\bjfuTitleString{#1}}
% 英语标题
\newcommand{\bjfuTitleEn}[1]{\def\bjfuTitleEnString{#1}}
% 汉语作者
\newcommand{\bjfuAuthor}[1]{\def\bjfuAuthorString{#1}}
% 英语作者
\newcommand{\bjfuAuthorEn}[1]{\def\bjfuAuthorEnString{#1}}
% 汉语摘要
\newcommand{\bjfuAbstract}[1]{\def\bjfuAbstractString{#1}}
% 英语摘要
\newcommand{\bjfuAbstractEn}[1]{\def\bjfuAbstractEnString{#1}}
% 汉语关键字
\newcommand{\bjfuKeywords}[1]{\def\bjfuKeywordsString{#1}}
% 英语关键字
\newcommand{\bjfuKeywordsEn}[1]{\def\bjfuKeywordsEnString{#1}}
% 汉语指导教师
\newcommand{\bjfuSupervisor}[1]{\def\bjfuSupervisorString{#1}}
% 英语指导教师
\newcommand{\bjfuSupervisorEn}[1]{\def\bjfuSupervisorEnString{#1}}
% 汉语班级
\newcommand{\bjfuClass}[1]{\def\bjfuClassString{#1}}
% 英语班级
\newcommand{\bjfuClassEn}[1]{\def\bjfuClassEnString{#1}}
% 学院
\newcommand{\bjfuCollege}[1]{\def\bjfuCollegeString{#1}}
% 专业
\newcommand{\bjfuMajor}[1]{\def\bjfuMajorString{#1}}
% 学号
\newcommand{\bjfuId}[1]{\def\bjfuIdString{#1}}
% 教师1
\newcommand{\bjfuSupervisorFirst}[1]{\def\bjfuSupervisorFirstString{#1}}
% 教师2
\newcommand{\bjfuSupervisorSecond}[1]{\def\bjfuSupervisorSecondString{#1}}
% 教师1职称
\newcommand{\bjfuAcademicFirst}[1]{\def\bjfuAcademicFirstString{#1}}
% 教师2职称
\newcommand{\bjfuAcademicSecond}[1]{\def\bjfuAcademicSecondString{#1}}
% 标题第一行
\newcommand{\bjfuTitleFirstLine}[1]{\def\bjfuTitleFirstLineString{#1}}
% 标题第二行
\newcommand{\bjfuTitleSecondLine}[1]{\def\bjfuTitleSecondLineString{#1}}

\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% 标题页
\newcommand{\makeBjfuTitlePage}{
%扉页，无header和footer
%这一页的页边距和其他页面不一样，为上边距为25.4mm，下边距为25.4mm，左边距为31.75mm，右边距为31.75mm
\newgeometry{left=31.75mm,right=31.75mm,top=25.4mm,bottom=25.4mm}
\thispagestyle{empty}
\vspace*{-10mm} \hspace*{-8mm} \includegraphics[width=0.90\textwidth]{files/header.png} 
\begin{center}
\fontsize{35pt}{35pt} \CJKfamily{zhhei} \textbf{本科毕业论文（设计）}

\zihao{-1}\CJKfamily{zhkai}（普通高等教育）

\vspace*{16mm} 
\begin{tabular}{rC{29.5mm}rC{29.5mm}}
\zihao{4}\CJKfamily{zhhei} \textbf{论文题目} & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuTitleFirstLineString} \\ \cline{2-4}
 & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuTitleSecondLineString} \\ \cline{2-4} 
 & & &  \\ 
\zihao{4}\CJKfamily{zhhei} \textbf{学\ \ \ \ \ \ \ \ 院} & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuCollegeString} \\ \cline{2-4} 
\zihao{4}\CJKfamily{zhhei} \textbf{专业名称} & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuMajorString} \\ \cline{2-4} 
\zihao{4}\CJKfamily{zhhei} \textbf{班\ \ \ \ \ \ \ \ 级} & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuClassString} \\ \cline{2-4} 
\zihao{4}\CJKfamily{zhhei} \textbf{学\ \ \ \ \ \ \ \ 号} & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuIdString} \\ \cline{2-4} 
\zihao{4}\CJKfamily{zhhei} \textbf{姓\ \ \ \ \ \ \ \ 名} & \multicolumn{3}{c}{\zihao{4}\CJKfamily{zhkai}\bjfuAuthorString} \\ \cline{2-4} 
\zihao{4}\CJKfamily{zhhei} \textbf{指导教师} & \zihao{4}\CJKfamily{zhkai}\bjfuSupervisorFirstString & \zihao{4}\CJKfamily{zhhei} \textbf{职\ \ \ \ \ \ \ \ 称} & \zihao{4}\CJKfamily{zhkai}\bjfuAcademicFirstString \\ \cline{2-2} \cline{4-4}

\ifthenelse{\equal{}{\bjfuSupervisorSecondString}}%
{}
{\zihao{4}\CJKfamily{zhhei} \textbf{指导教师} & \zihao{4}\CJKfamily{zhkai}\bjfuSupervisorSecondString & \zihao{4}\CJKfamily{zhhei} \textbf{职\ \ \ \ \ \ \ \ 称} & \zihao{4}\CJKfamily{zhkai}\bjfuAcademicSecondString \\ \cline{2-2} \cline{4-4}}
\end{tabular} 

\end{center}

\pagebreak
%回复页边距和header、footer
\restoregeometry
\thispagestyle{fancy}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%论文摘要和目录用罗马数字单独编页码。
\pagenumbering{Roman}
\begin{titlepage}
%中文标题
\begin{center}
%论文题目用小三号黑体(中文)或者Times New Roman体(英文)
%分行用双反斜线表示
\zihao{-3}\CJKfamily{zhhei}\textbf{\bjfuTitleString}\\

%作者及指导教师用小四号宋体
%中文作者名，空格用单反斜线或者回车行表示
\zihao{-4}\CJKfamily{zhsong}\bjfuClassString \ \bjfuAuthorString \\
\zihao{-4}\CJKfamily{zhsong}指导老师\ \bjfuSupervisorString \\

\end{center}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%“摘要”字样用四号宋体加粗居中
\begin{center}
\zihao{4}\CJKfamily{zhsong}\textbf{摘要}
\end{center}

%摘要正文用楷体五号
\zihao{5}\CJKfamily{zhkai}\bjfuAbstractString \\\\

%“关键词”字样后带冒号，中文关键词为五号宋体加粗
\zihao{5}\CJKfamily{zhsong}\textbf{关键词：\bjfuKeywordsString}
\pagebreak

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%英文题目用小三号Times New Roman体，其他要求同中文
\begin{center}
\zihao{-3}\textbf{\bjfuTitleEnString }\\
\zihao{-4}\bjfuClassEnString\ \bjfuAuthorEnString \\
\zihao{-4}Supervisor\ \bjfuSupervisorEnString \\
\zihao{4}\textbf{Abstract}
\end{center}
%英文摘要正文
\zihao{5} \bjfuAbstractEnString \\\\
%英文关键词为五号Times New Roman体加粗
\zihao{5}\textbf{Key Words：\bjfuKeywordsEnString}
\end{titlepage}
\pagebreak
%自动生成目录页
\tableofcontents
\pagebreak
%自正文开始，使用阿拉伯数字且重新开始页码
%论文页码的字号字体为小五号Times New Roman体，页码位于页面底端居中；
\pagenumbering{arabic}
}
