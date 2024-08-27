\LoadClass[
	american,
	sections numbered,
	usenames,
	xcolor=dvipsnames,
	aspectratio=169,
]{beamer}
% 引入CJK支持
\RequirePackage{ctex}
\RequirePackage{babel}
\RequirePackage[babel]{microtype}
\RequirePackage[babel]{csquotes}
% 设置字体样式
\RequirePackage[T1]{fontenc}
\RequirePackage{FiraMono}

%%% 图片设置 %%%
\RequirePackage{graphicx}
% 可以使用pgfplots和tikz画图，插入latex中
\RequirePackage{pgfplots}
\RequirePackage{tikz}
% 定义plots相关参数
% 定义默认画图的颜色参数
\pgfplotsset{legend style={fill=bgcolor,draw=fgcolor}}
\pgfplotscreateplotcyclelist{lineplot cycle}{ %
	{plot0, mark=*, thick, mark options=solid},
	{plot1, mark=triangle*, thick, mark options=solid},
	{plot2, mark=square*, thick, mark options=solid},
	{plot3, mark=diamond*, thick, mark options=solid},
	{plot4, mark=pentagon*, thick, mark options=solid},
}
\pgfplotsset{compat=newest}
\pgfplotsset{%
	betterplot/.style={
		width=.93\linewidth,
		height=.5\textheight,
		xlabel near ticks,
		ylabel near ticks,
		cycle list name=lineplot cycle,
		mark options=solid,
		xmajorgrids=true,
		xminorgrids=true,
		ymajorgrids=true,
%		major grid style={dotted},
		grid style={line width=.1pt, draw=gray!20},
		major grid style={line width=.25pt,draw=gray!30},
		legend cell align=left,
		legend style = {
			/tikz/every even column/.append style={column sep=0.33cm}
		},
	},
}
% 预定义的几个画图的颜色
%% 高对比度的一些颜色
\definecolor{plot0}{HTML}{004488}
\definecolor{plot1}{HTML}{DDAA33}
\definecolor{plot2}{HTML}{BB5566}
\definecolor{plot3}{HTML}{000000}
\definecolor{plot4}{HTML}{AAAAAA}

%% 一些参考的颜色样式
%\definecolor{plot0}{HTML}{EE7733}
%\definecolor{plot1}{HTML}{0077BB}
%\definecolor{plot2}{HTML}{33BBEE}
%\definecolor{plot3}{HTML}{EE3377}
%\definecolor{plot4}{HTML}{CC3311}
%\definecolor{plot5}{HTML}{009988}
%\definecolor{plot6}{HTML}{BBBBBB}


%-------------------------------------------------------------------------
%%% 数学字母等定义 %%%
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{siunitx}
\RequirePackage{bm}
\RequirePackage{dsfont}
\RequirePackage{mathtools}
% 数学写法的一些定义
\DeclarePairedDelimiter{\abs}{\vert}{\vert}
\DeclarePairedDelimiter{\norm}{\Vert}{\Vert}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}

\newcommand*{\inv}[1]{\ensuremath{#1^{-1}}}
\newcommand*{\positive}[1]{\ensuremath{\left[#1\right]^{+}}}

\newcommand*{\diff}{\ensuremath{\mathrm{d}}}
\newcommand*{\imag}{\ensuremath{\mathrm{j}}}
\newcommand*{\e}{\ensuremath{\mathrm{e}}}

\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

%% 如果你不想使用dsfont包的话，讲下面改为\mathbb
\newcommand*{\reals}{\ensuremath{\mathds{R}}} 
\newcommand*{\complexes}{\ensuremath{\mathds{C}}}
\newcommand*{\naturals}{\ensuremath{\mathds{N}}}
%%

\newcommand*{\expect}[2][]{\ensuremath{\mathbb{E}_{#1}\left[#2\right]}}

\newcommand*{\unif}{\ensuremath{\mathcal{U}}}
\newcommand*{\normaldist}{\ensuremath{\mathcal{N}}}
%-------------------------------------------------------------------------
%%% 表格的画法 %%%
\RequirePackage{booktabs}
\RequirePackage{tabularx}

% 参考文献设置
%\RequirePackage{biblatex}
%\renewcommand*{\bibfont}{\scriptsize}


% 数学环境定义

% 载入自动引用宏包
\RequirePackage{cleveref}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\theoremstyle{plain}% 默认环境
\let\definition\relax
\newtheorem{definition}{定义}[section]
\crefname{definition}{定义}{定义}
\let\theorem\relax
% 取消定义 theorem 计数器
\let\c@theorem\undefined
\newtheorem{theorem}{定理}[section]
\crefname{theorem}{定理}{定理}
\let\lemma\relax
\newtheorem{lemma}{引理}[section]
\crefname{lemma}{引理}{引理}

\crefname{proof}{证明}{证明}
\let\corollary\relax
\newtheorem{corollary}{推论}[section]
\crefname{corollary}{推论}{推论}

\newtheorem{assumption}{假设}[section]
\crefname{assumption}{假设}{假设}

\newtheorem{conjecture}{猜想}[section]
\crefname{conjecture}{猜想}{猜想}

\newtheorem{axiom}{公理}[section]
\crefname{axiom}{公理}{公理}

\newtheorem{principle}{定律}[section]
\crefname{principle}{定律}{定律}
\let\problem\relax
\newtheorem{problem}{问题}[section]
\crefname{problem}{问题}{问题}
\let\example\relax
\newtheorem{example}{例}[section]
\crefname{example}{例}{例}
\let\solution\relax
\newtheorem{solution}{解}[section]
\crefname{solution}{解}{解}
%-------------------------------------------------------------------------
% PPT当中的一些定义
\usetheme[progressbar=frametitle]{metropolis}

% 定义一些颜色等
\definecolor{accent}{HTML}{7EBDC2} % 着重颜色
\definecolor{bgcolor}{HTML}{FCFCFF} % 背景颜色
\definecolor{bgcolorAlt}{HTML}{ECF1FC} % 替代背景色
\definecolor{fgcolor}{HTML}{222244} % 前景/文本颜色

%
\setbeamercolor{normal text}{%
	fg=fgcolor,
	bg=bgcolor,
}
\setbeamercolor{alerted text}{%
	fg=accent,
}
\setbeamercolor{palette primary}{%
	use=normal text,
	fg=normal text.fg,
	bg=bgcolorAlt,%normal text.bg
}

\setbeamercolor{block title}{
	bg=bgcolorAlt,
}
\setbeamercolor{block body}{
	bg=bgcolorAlt,
}
\setbeamercolor{block title alerted}{%
	use={palette primary, alerted text},
	fg=palette primary.bg,
	bg=alerted text.fg
}
\setbeamercolor{block title example}{%
	use={block title, alerted text},
	bg=block title.bg,
	fg=alerted text.fg
}


\setbeamerfont{block body reference}{size=\scriptsize}
\setbeamerfont{block title reference}{size=\scriptsize}

\setbeamerfont{description item}{series=\mdseries}
\setbeamerfont{alerted text}{series=\bfseries\boldmath}


\setbeamertemplate{title page}{
\begin{minipage}[b][\textheight]{\textwidth}
	\ifx\inserttitlegraphic\@empty\else\usebeamertemplate*{title graphic}\fi
	\vfill%
	\ifx\inserttitle\@empty\else\usebeamertemplate*{title}\fi
	\ifx\insertsubtitle\@empty\else\usebeamertemplate*{subtitle}\fi
	\usebeamertemplate*{title separator}

	\ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
	\ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
	\ifx\insertinstitute\@empty\else\usebeamertemplate*{institute}\fi
	\vfil
	\vspace*{1mm}
\end{minipage}
}
\newcommand*{\seprule}{{\par\color{bgcolorAlt!90!fgcolor}\hrulefill\par\vspace*{1ex plus 0pt minus .5ex}}}

