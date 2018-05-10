%本科毕业论文（设计）打印格式
\ProvidesClass{bathesis}

\RequirePackage{kvoptions}
\newcommand*{\@science}{science}
\newcommand*{\@arts}{arts}
\DeclareStringOption[science]{subject}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexrep}}
\ProcessKeyvalOptions*
\LoadClass[UTF8,fontset=none,zihao=5,linespread=1.23809]{ctexrep}

%一、毕业论文（设计）用纸、页面设置要求 
%毕业论文（设计）应按规定格式用激光打印机单面打印，纸张大小一律使用国际标准A4型复印纸。
%页面设置：版心为297×210mm；页边距要求：每一面的上方（T）2 cm，下方（B）2cm，左（L）2.0 cm，右（R）2cm，装订线（T）0.5 cm，装订线位置（T）左，页脚1cm，页眉1cm，页码设置为：插入页码，居中；其余设置采取系统默认设置。
\RequirePackage[a4paper,top=2cm,bottom=2cm,left=2cm,right=2cm,bindingoffset=0.5cm,footskip=1cm,headsep=1cm]{geometry}
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
  \fancyhead{}%
  \cfoot{\zihao{-5}\thepage}%
  \renewcommand{\headrulewidth}{0pt}}
\pagestyle{plain}

%二、毕业论文（设计）内容打印要求
\xeCJKsetup{AutoFakeBold=true}
\setCJKmainfont{SimSun}
\setCJKfamilyfont{zhkai}{KaiTi}
\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\newcommand*{\songti}{\CJKfamily{zhsong}}
\newcommand*{\heiti}{\CJKfamily{zhhei}}
\newcommand*{\kaishu}{\CJKfamily{zhkai}}
\setmainfont{Times New Roman}

%%（一）论文题目：使用小二号黑体，加粗,居中。若有副标题，四号黑体。
%%（二）学院、专业、学号、作者姓名、指导教师姓名、（小四号楷体，加粗），依次排印在论文题目下（上空一行，居中），如：
%%　　　×××学院　 ×××专业（单倍行距）
%%×××（学号）　×××（姓名）　　指导教师　×××
\newcommand*{\blankline}{\vspace*{15.6585pt}}
\newcommand*{\@ctitle}{}
\newcommand*{\ctitle}[1]{\renewcommand*{\@ctitle}{#1}}
\newcommand*{\@csubtitle}{}
\newcommand*{\csubtitle}[1]{\renewcommand*{\@csubtitle}{#1}}
\newcommand*{\@ccollege}{}
\newcommand*{\ccollege}[1]{\renewcommand*{\@ccollege}{#1}}
\newcommand*{\@cmajor}{}
\newcommand*{\cmajor}[1]{\renewcommand*{\@cmajor}{#1}}
\newcommand*{\@cid}{}
\newcommand*{\cid}[1]{\renewcommand*{\@cid}{#1}}
\newcommand*{\@cauthor}{}
\newcommand*{\cauthor}[1]{\renewcommand*{\@cauthor}{#1}}
\newcommand*{\@ctutor}{}
\newcommand*{\ctutor}[1]{\renewcommand*{\@ctutor}{#1}}
\newcommand{\makectitle}{%
  \clearpage%
  \begingroup%
    \centering\heiti\bfseries%
    \linespread{1.44444}\zihao{-2}\@ctitle\par%
    \linespread{1.08333}\zihao{-4}\@csubtitle\par%
  \endgroup%
  \blankline%
  \begingroup%
    \centering\kaishu\bfseries\linespread{1.08333}\zihao{-4}%
    \@ccollege\qquad \@cmajor\par%
    \@cid\qquad \@cauthor\qquad 指导教师\quad \@ctutor\par%
  \endgroup}
\newcommand*{\@etitle}{}
\newcommand*{\etitle}[1]{\renewcommand*{\@etitle}{#1}}
\newcommand*{\@eid}{}
\newcommand*{\eid}[1]{\renewcommand*{\@eid}{#1}}
\newcommand*{\@eauthor}{}
\newcommand*{\eauthor}[1]{\renewcommand*{\@eauthor}{#1}}
\newcommand*{\@etutor}{}
\newcommand*{\etutor}[1]{\renewcommand*{\@etutor}{#1}}
\newcommand*{\@eaddress}{}
\newcommand*{\eaddress}[1]{\renewcommand*{\@eaddress}{#1}}
\newcommand{\makeetitle}{%
  \clearpage%
  \begingroup%
    \centering\linespread{1.44444}\zihao{-2}\bfseries\@etitle\par%
  \endgroup%
  \blankline%
  \begingroup%
    \centering\linespread{1.08333}\zihao{-4}%
    \@eid\qquad \@eauthor\qquad Tutor:\@etutor\par%
    (\@eaddress)\par%
  \endgroup}

%%（三）摘要（上空一行，缩进2个汉字字符）
%%中文摘要采用小五号楷体，英文摘要采用五号“Time  New  Roman”字型；行距设置为：单倍行距。
%%【摘　要】(小五号黑体，加粗)　××（小五号楷体，加粗）
\newenvironment{cabstract}{\linespread{1.44444}\zihao{-5}\bfseries{\heiti【摘\quad 要】}\kaishu}{\par}
\newenvironment{eabstract}{\linespread{1.23809}\zihao{5}\textbf{Abstract:}~}{\par}

%%（四）关键词
%%中文关键词（3—5个）采用小五号楷体，英文关键词采用五号“Time  New  Roman”字型；行距设置为：单倍行距。
%%【关键词】(小五号黑体，加粗)×××；××；××；×××（小五号楷体，加粗）
\newenvironment{ckeywords}{\linespread{1.44444}\zihao{-5}\bfseries{\heiti【关键词】}\kaishu}{\par}
\newenvironment{ekeywords}{\linespread{1.23809}\zihao{5}\textbf{Key words:}~}{\par}

%%（五）目录（可省项）
%%采用五号字，其中每章标题用黑体字，每节标题用宋体字，并注明各章节起始页码，题目和页码用“……”相连，目录中标题应与正文中标题一致。
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\renewcommand{\tableofcontents}{%
  \clearpage%
  \begingroup%
    \titleformat{\chapter}{\zihao{4}\heiti\centering}{}{0pt}{}%
    \chapter*{\contentsname}%
  \endgroup%
  \@starttoc{toc}%
  \clearpage}
\contentsmargin{0pt}
\newcounter{chaptercounter}
\ifx\bathesis@subject\@science
  \titlecontents{chapter}[0em]{\heiti}{\stepcounter{chaptercounter}\arabic{chaptercounter}\quad}{}{\titlerule*{.}\thecontentspage}
  \titlecontents{section}[2em]{}{\thecontentslabel\quad}{}{\titlerule*{.}\thecontentspage}
  \titlecontents{subsection}[4em]{}{\thecontentslabel\quad}{}{\titlerule*{.}\thecontentspage}
\else
  \newcounter{sectioncounter}
  \newcounter{subsectioncounter}
  \titlecontents{chapter}[0em]{\heiti}{\stepcounter{chaptercounter}\zhnumber{\arabic{chaptercounter}}、}{}{\titlerule*{.}\thecontentspage}  
  \titlecontents{section}[2em]{}{\stepcounter{sectioncounter}（\zhnumber{\arabic{sectioncounter}}）}{}{\titlerule*{.}\thecontentspage}
  \titlecontents{subsection}[4em]{}{\stepcounter{subsectioncounter}\arabic{subsectioncounter}.}{}{\titlerule*{.}\thecontentspage}
\fi

%%（六）正文行间距要求
%%正文行距设置：设单倍行距。
%%每章题目与每节题目之间的行距设置：设单倍行距，段前1行、段后0.5 行。
%%每节题目与小节题目之间的行距设置：单倍行距，段前0.5 行。
\titleclass{\chapter}{straight}
\ifx\bathesis@subject\@science
  \titlespacing{\chapter}{0pt}{*2}{*2}
  \titlespacing{\section}{0pt}{*2}{*2}
  \titlespacing{\subsection}{0pt}{*2}{*2}
\else
  \titlespacing{\chapter}{2em}{*2}{*2}
  \titlespacing{\section}{2em}{*2}{*2}
  \titlespacing{\subsection}{2em}{*2}{*2}
\fi

%%（七） 正文章节序号编制可采取以下格式：
%%%第一种：
%%%1
%%%1.1
%%%1.1.1
%%%第二种
%%%一、
%%%（一）
%%%1.
%%%（1）
%%理工科专业应采用第一种。
%%各学院可根据专业特点统一选择其中一种格式，但所采用的格式必须符合上表规定，并前后统一，不得混杂使用。
%%正文字体要求及章节序号编制如下所示：
%%%第一种：
%%%1 ×××××××××××××××××××（顶格，四号黑体）
%%%1.1 ×××××××××××××××××××（顶格，小四号黑体）
%%%- - -- - - - - - - -（内容省略）- - - -  - - - - -- - - -
%%%（首行缩进2个汉字字符，五号宋体，英文五号“Times New Roman”）
%%%1.1.1 ××××××××××××××××××××（五号黑体）
%%%- - - - - -- -- - - -（内容省略）- - - -  -  - - -- - - -
%%%（首行缩进2个汉字字符，五号宋体）
%%%1.2  ×××××××××××××××××××××（小四号黑体）
%%%- - - - - - - -- -  -（内容省略）- - - - - - - -- - - -
%%%第二种：
%%%	一、×××××××××××（左缩进2个汉字字符，四号黑体）
%%%（一）×××××××××（左缩进2个汉字字符，小四号黑体）
%%%   - - -- - - - - - - -- - -（内容省略）- - - - - - - -- - - -（首行缩进2个汉字字符,五号宋体）
%%%1.×××××××××××（左缩进2个汉字字符，五号黑体）
%%%- - - - - - - -- -  -（内容省略）- - - - - - - -- - - -- - -- -
%%（首行缩进2个汉字字符，五号宋体）
%%%（1）××××××××××（左缩进2个汉字字符，五号宋体）
%%%（二）×××××××××（左缩进2个汉字字符，小四号黑体）
%%%- - - - - - - -- -  -（内容省略）- - - - - - - -- - - -- -
\ifx\bathesis@subject\@science
  \titleformat{\chapter}{\zihao{4}\heiti\bfseries}{\thechapter}{1em}{}
  \titleformat{\section}{\zihao{-4}\heiti\bfseries}{\thesection}{1em}{}
  \titleformat{\subsection}{\zihao{5}\heiti\bfseries}{\thesubsection}{1em}{}
\else
  \titleformat{\chapter}{\zihao{4}\heiti\bfseries}{\zhnumber{\thechapter}、}{0pt}{}
  \titleformat{\section}{\zihao{-4}\heiti\bfseries}{（\zhnumber{\arabic{section}}）}{0pt}{}
  \titleformat{\subsection}{\zihao{5}\heiti\bfseries}{\arabic{subsection}.}{0pt}{}
\fi

%%（八）毕业论文（设计）的公式、图与表
%%公式号可以章分组编号，如（2-4）表示第二章的第4个公式。
%%公式尽量采用公式编辑应用程序输入，选择默认格式，公式号右对齐，公式调整至基本居中。
%%图与表可以章分组编序号，如图3-5表示第三章的第5幅图。也可不示章节按先后顺序编号。
%%图与表应有相应的名称，如“实验系统流程示意图”。
%%图序与图名居中置于图的下方。
%%表序与表名置于表的上方。
\RequirePackage[labelsep=quad]{caption}
\RequirePackage[hidelinks]{hyperref}
\renewcommand*{\equationautorefname}{公式}
\renewcommand*{\figureautorefname}{图}
\renewcommand*{\tableautorefname}{表}
\renewcommand*{\theequation}{\thechapter-\arabic{equation}}
\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand*{\thetable}{\thechapter-\arabic{table}}

%%（九）毕业论文（设计）文后注释（可省项）、参考文献
%%参考文献（五号黑体，上空二行）
%%[1] ×××××××××××××××××××××（五号宋体）
%%[2] ××××××××××××××××××××××××××
%%正文引用参考文献处应以方括号右上标注出。如“……效率可提高25%”[2],表示此结果援引自参考文献2。
%%参考文献的编写方式为：
%%%期刊文献的格式：“[编号](空一格)作者.文章题目名（加文献种类）.期刊名,年份,卷号(期数):引文页码.”   例如：
%%%[1] 杨扬，王玉，周洲.油田储层非均质性研究[J].高校地质学报，2000，4（3）：223-230.
%%%图书文献的格式：“[编号] (空一格)作者.书名.出版社地址：出版社名，出版年份，引文页码.”例如：
%%%[1] 戴功，纪律.油气储层地质学[M].天津：石油大学出版社，2000，110-119.
%%%论文集的格式：“[编号] (空一格)作者.文章题目名.论文集名. 出版社地址：出版社名，出版年份，引文页码.” 例如：
%%%[1] 孙力.储层条件下水淹油层测井响应机理实验研究[A].96国际学术讨论会论文集[C].北京：石油工业出版社，2000,10-11.
%%注：作者为3位以上的，姓名写到第三位，余者写“，等”。
%%注：A--论文集中的文章；J—期刊；C—论文集；M—书；D—学位论文S—标准；P—专利；EB/OL—电子文档
%%文科论文的文后注释格式参照参考文献格式，但序号不能使用[1]，[2]，[3]等数码表示，以免与参考文献的序码相混淆。
\RequirePackage[sorting=none,style=gb7714-2015]{biblatex}
\defbibheading{bibliography}[\bibname]{%
  \begingroup%
    \titlespacing{\subsection}{0pt}{0pt}{0pt}%
    \subsection*{#1}%
  \endgroup%
  \addcontentsline{toc}{chapter}{#1}}
\setlength{\bibitemsep}{0pt}
\renewcommand{\footnotesize}{\zihao{-5}}

%三、毕业论文（设计）打印顺序依次为：①论文题目②学院、专业、学号、作者姓名、指导教师姓名③摘要④关键词⑤目录（可省项）⑥正文⑦文后注释（可省项）⑧参考文献⑨英文论文题目、学院、专业、学号、作者姓名、指导教师姓名、摘要、关键词。
