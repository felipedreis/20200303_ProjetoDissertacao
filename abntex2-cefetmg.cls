%
% Modelo de trabalho acadêmico monográfico (Tese de Doutorado, Dissertação de Mestrado
% ou Projeto de Qualificação) em português brasileiro e em conformidade com as normas da ABNT
%
% Adaptação da classe abntex2 para o Cefet-MG
% Data: 07 de outubro de 2014
%
% *****************************************************************************
% *  Centro Federal de Educação Tecnológica de Minas Gerais - CEFET-MG        *
% *  Laboratório de Sistemas Inteligentes - LSI                               *
% *                                                                           *
% *  Autor: Henrique E. Borges <henrique@lsi.cefetmg.br>                      *
% *  Autor: Denise de Souza <densouza@gmail.com>                              *
% *  Autor: Cristiano Fraga G. Nunes <cfgnunes@gmail.com>                     *
% *  Autor: Lauro César  <https://code.google.com/p/abntex2/>                 *
% *                                                                           *
% *****************************************************************************



\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-cefetmg}[2013/12/22 v5.0]

%   Repassa os parâmetros ao abntex2
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{abntex2}
}

\PassOptionsToClass{
%  Opções da classe memoir
	  12pt,						% Tamanho da fonte
	  openright,				% Capítulos começam sempre em páginas ímpares (insere página vazia caso necessário)
      %twoside,					% Impressão em frente (anverso) e verso. Oposto a oneside
      oneside,					% Impressão apenas no anverso. Oposto a twoside
      a4paper,					% Tamanho do papel.
	  sumario=tradicional,		% Seleciona o sumário tradicional
%  Opções da classe abntex2
	  %chapter=TITLE,			% Títulos de capítulos convertidos em letras maiúsculas
	  %section=TITLE,			% Títulos de seções convertidos em letras maiúsculas
	  %subsection=TITLE,		% Títulos de subseções convertidos em letras maiúsculas
	  %subsubsection=TITLE,		% Ttítulos de subsubseções convertidos em letras maiúsculas
%   opções do pacote babel
      english,					% Idioma adicional para hifenização
      brazilian,				% O ultimo idioma indicado será o principal idioma do documento
      hyphens,         			% parâmetro para hifenizar urls longas, usado no pacote url
	}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian,hyperpageref]{backref}
\RequirePackage{chngcntr}



% -----------------------------------------------------------------------------
%    CONFIGURAÇÕES GERAIS
% -----------------------------------------------------------------------------

%   Configurações do pacote backref usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~}

%   Texto padrão antes do número das páginas
\renewcommand{\backref}{}

%   Define os textos da citação
\renewcommand*{\backrefalt}[4]{
	\ifcase #1
		Nenhuma cita\c{c}\~ao no texto.
	\or
		Citado na p\'agina #2.
	\else
        	Citado #1 vezes nas p\'aginas #2.
	\fi
}

%   Define a numeração das equações de forma sequencial
\counterwithout{equation}{chapter}



% -----------------------------------------------------------------------------
%   ESTILO DE ELEMENTOS
% -----------------------------------------------------------------------------

%   Configura layout para elementos pre-textuais
\renewcommand{\pretextual}{
	\pagenumbering{roman} 			% a numeração das páginas é em algarismos romanos
	\aliaspagestyle{chapter}{plain}
	\pagestyle{plain}
	\aliaspagestyle{cleared}{empty}
	\aliaspagestyle{part}{empty}
}


% Configura layout para elementos textuais
\renewcommand{\textual}{
	\pagenumbering{arabic} 		% a numeração das páginas é em algarismos arábicos, inciando em 1
	\chapterstyle{default} 		% estilo plain
}

% Configura layout para elementos pós-textuais
\renewcommand{\postextual}{
	\chapterstyle{abnt} 		% estilo da ABNT
	\phantompart
}



% -----------------------------------------------------------------------------
%   COMANDOS DE DADOS PARTICULARES
% -----------------------------------------------------------------------------

%   Automatiza as aspas
\newcommand{\aspas}[1]{``{#1}''}



% -----------------------------------------------------------------------------
%   COMANDOS DE DADOS
% -----------------------------------------------------------------------------

%   Comandos de dados - Programa de Pós-graduação
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}	


%   Comandos de dados - subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}


%   Comandos de dados - Instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}


%   Comandos de dados - Instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}


%  Comandos de dados -  Tipo de trabalho acadêmico (tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}


%  Comandos de dados - Título Acadêmico a ser alcançado (Doutor ou Mestre)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}


%  Comandos de dados - Área de concentração do Programa de Pós-graduação
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}


%  Comandos de dados - linha de pesquisa do Programa de Pós-graduação
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}


%  Comandos de dados - Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}


%  Comandos de dados - Logomarca da instituicao
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}



% -----------------------------------------------------------------------------
%   OBJETOS FLUTUANTES
% -----------------------------------------------------------------------------

%   Comando que trata a fonte nos objetos flutuantes
\renewcommand{\fonte}[1]{
	\begin{SingleSpacing}\par\end{SingleSpacing}
	\centering\small{Fonte: #1}
}

%   Comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]{
	\begin{SingleSpacing}\par\end{SingleSpacing}
	\begin{tabular}{p{.05\textwidth}p{.9\textwidth}}
		Nota: & #1
	\end{tabular}
}



% -----------------------------------------------------------------------------
%   PARÁGRAFOS
% -----------------------------------------------------------------------------

%   Tamanho da indentação do parágrafo
\setlength{\parindent}{0cm}

%   Espaçamento entre um parágrafo e outro
\setlength{\parskip}{0.4cm}



% -----------------------------------------------------------------------------
%   FONTES
% -----------------------------------------------------------------------------

%   Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\HUGE}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\Large}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\large}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}



% -----------------------------------------------------------------------------
%   SUMÁRIO
% -----------------------------------------------------------------------------

%   Travessão no sumário para apêndices e anexos
\renewcommand{\cftchapteraftersnum}{\hfill{} -- \hfill{}}

%   Insere espaço entre os itens do sumário de diferentes capítulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}



% -----------------------------------------------------------------------------
%   LISTAS
% -----------------------------------------------------------------------------

%   Define os títulos das listas
\addto\captionsbrazil{
%  ajusta nomes padrões do babel
	\renewcommand{\listadesiglasname}{Lista de Abreviaturas e Siglas}
	\renewcommand{\listadesimbolosname}{Lista de S\'{i}mbolos}
	\renewcommand{\listfigurename}{Lista de Figuras}
	\renewcommand{\listtablename}{Lista de Tabelas}
	\renewcommand{\indexname}{\'{I}ndice Remissivo}
%  ajusta nomes usados com a macro \autoref
	\renewcommand{\pageautorefname}{p\'agina}
	\renewcommand{\sectionautorefname}{Se\c{c}\~ao}
	\renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
	\renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
	\renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

%   Cria a lista de quadros
\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}



% -----------------------------------------------------------------------------
%   CAPA
% -----------------------------------------------------------------------------

\makeatletter
\renewcommand{\imprimircapa}{
	\begin{capa}
		\begin{center}
			\imprimirlogoinstituicao{} \\
			\normalfont\scshape{\imprimirinstituicao} \\
			\normalfont\scshape{\imprimirprograma} \\
		\end{center}

		\vspace*{\fill}

		\begin{center}
			\ABNTEXchapterfont\HUGE\scshape\imprimirtitulo
			\abntex@ifnotempty{\imprimirsubtitulo}
			{
				{\ABNTEXchapterfont\HUGE\scshape{\hspace*{-0.3em}: }}{\ABNTEXchapterfont\Huge\scshape\imprimirsubtitulo}
			}
		\end{center}

		\vspace*{\fill}

		\begin{center}
			\large\normalfont\scshape\textbf\imprimirautor
		\end{center}

		\vspace*{10pt}

		\begin{center}
			\abntex@ifnotempty{\imprimirorientador}
			{
				\small\imprimirorientadorRotulo{} \imprimirorientador \\
				\small\imprimirinstOrientador \\
			}
			\abntex@ifnotempty{\imprimircoorientador}
			{
				\begin{SingleSpacing}\par\end{SingleSpacing}
				\small\imprimircoorientadorRotulo{} \imprimircoorientador \\
				\small\imprimirinstCoorientador
			}
		\end{center}

		\vspace*{\fill}

		\begin{center}
			\normalfont\scshape{\imprimirlocal}\\
			\normalfont\scshape{\imprimirdata}
		\end{center}

	\end{capa}
}
\makeatother



% -----------------------------------------------------------------------------
%   FOLHA DE ROSTO
% -----------------------------------------------------------------------------

\makeatletter
\renewcommand{\folhaderostocontent}{
	\setcounter{page}{2}
	\begin{center}
		{\large\normalfont\scshape\textbf\imprimirautor}
	\end{center}

	\vspace*{\fill}

	\begin{center}
		\ABNTEXchapterfont\LARGE\scshape\imprimirtitulo
		\abntex@ifnotempty{\imprimirsubtitulo}{
			{\ABNTEXchapterfont\LARGE\scshape{\hspace*{-0.3em}: }}{\ABNTEXchapterfont\Large\scshape\imprimirsubtitulo}
		}
	\end{center}

	\vspace*{\fill}

	\abntex@ifnotempty{\imprimirpreambulo}{
		\SingleSpacing
		\begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
			& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
			\abntex@ifnotempty{\imprimirareaconcentracao}
			{
				& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
			}
			\abntex@ifnotempty{\imprimirlinhapesquisa}
			{
				& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
			}
			\abntex@ifnotempty{\imprimirorientador}
			{
				& \small\imprimirorientadorRotulo & \imprimirorientador \\
				& & \small\imprimirinstOrientador \\ & & \\
			}
			\abntex@ifnotempty{\imprimircoorientador}
			{
				& \small\imprimircoorientadorRotulo & \imprimircoorientador \\
				& & \small\imprimirinstCoorientador
			}
		\end{tabular}
	}

	\vspace*{90pt}

	\begin{center}
		\normalfont\scshape{\imprimirinstituicao}\\
		\normalfont\scshape{\imprimirprograma}\\
		\normalfont\scshape{\imprimirlocal}\\
		\normalfont\scshape{\imprimirdata}
	\end{center}
}
\makeatother



% -----------------------------------------------------------------------------
%   FOLHA DE APROVAÇÃO
% -----------------------------------------------------------------------------
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}{
	\begin{folhadeaprovacao}
		\begin{center}
		\textbf{Centro Federal de Educa\c{c}\~ao Tecnol\'ogica de Minas Gerais}\\
		Curso de Gradua\c{c}\~ao em Engenharia de Computa\c{c}\~ao\\
		Avalia\c{c}\~ao do Trabalho de Conclus\~ao de Curso
		\end{center}
		
		\vspace*{50pt}
		\textbf{Aluno: }Alain Andr\'e Tomaz Amaral\\
		\textbf{T\'itulo do trabalho: }Problemas de Convers\~ao Irrevers\'ivel em Grafos: Encontrando Conjuntos Convergentes M\'inimos\\
		\textbf{Data da defesa: } 17/11/2015\\
		\textbf{Hor\'ario: }10:00\\
		\textbf{Local da defesa: }Sala 401, Pr\'edio 17, Departamento de Computa\c{c}\~ao (DECOM)
		

		\vspace*{50pt}
		
		\begin{center}
		
		O presente Trabalho de Conclus\~ao de Curso foi avaliado pela seguinte banca:
		
		\vspace*{30pt}
		
		Professor Vin\'icius Fernandes dos Santos -- Orientador\\
		Departamento de Computa\c{c}\~ao\\
		Centro Federal de Educa\c{c}\~ao Tecnol\'ogica de Minas Gerais
		
		\vspace*{30pt}
		
		Professora Elizabeth Fialho Wanner -- Coorientadora\\
		Departamento de Computa\c{c}\~ao\\
		Centro Federal de Educa\c{c}\~ao Tecnol\'ogica de Minas Gerais
		
		\vspace*{30pt}
		
		Professor Rodrigo Tom\'as Nogueira Cardoso -- Membro da banca de avalia\c{c}\~ao\\
		Departamento de F\'isica e Matem\'atica\\
		Centro Federal de Educa\c{c}\~ao Tecnol\'ogica de Minas Gerais
		
		\vspace*{30pt}
		
		Professor Andrei Rimsa \'Alvares -- Membro da banca de avalia\c{c}\~ao\\
		Departamento de Computa\c{c}\~ao\\
		Centro Federal de Educa\c{c}\~ao Tecnol\'ogica de Minas Gerais
		
		\end{center}
		
	\end{folhadeaprovacao}
}
\makeatother



% -----------------------------------------------------------------------------
%   DEDICATÓRIA
% -----------------------------------------------------------------------------
\renewenvironment{dedicatoria}[1][]
{
	\ifthenelse{\equal{#1}{}}{
		\PRIVATEbookmarkthis{\dedicatorianame}
	}{\pretextualchapter{#1}}

	\vspace*{\fill}

	\begin{flushright}
		\begin{minipage}{.5\textwidth}
			\begin{SingleSpacing}
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}
{
			\end{SingleSpacing}
		\end{minipage}
	\end{flushright}
}



% -----------------------------------------------------------------------------
%   EPÍGRAFE
% -----------------------------------------------------------------------------
\renewenvironment{epigrafe}[1][]
{
	\ifthenelse{\equal{#1}{}}{
		\PRIVATEbookmarkthis{\epigraphname}
	}{\pretextualchapter{#1}}

	\vspace*{\fill}

	\begin{flushright}
		\begin{minipage}{.5\textwidth}
			\begin{SingleSpacing}
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}
{
			\end{SingleSpacing}
		\end{minipage}
	\end{flushright}
}
