%%
%% This is file `iptconf.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% iptconf.dtx  (with options: `package')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from iptconf.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file iptconf.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}[2022-06-01]
\ProvidesFile{iptconf.cls}[2026/05/24 v1.0 IPT conference class]
\ProvidesExplClass{iptconf}{2026-05-24}{1.0}
  {IPT conference class (Institute of Physics and Technology, KPI)}
\LoadClass[twocolumn, oneside]{article}[2022-06-01]
\DeclareKeys [ iptconf ]
{
  incollection .code:n = \pagestyle{empty},
  single .code:n =
    {
      \pagestyle{plain}
      \setcounter{page}{#1}
    },
  single .default:n = 1,
}
\SetKeys    [ iptconf ] { incollection }
\ProcessKeyOptions [iptconf]
\RequirePackage[%
  a4paper,
  footskip = 1cm,
  headsep  = 0.3cm,
  top      = 2cm,
  bottom   = 2cm,
  left     = 2cm,
  right    = 2cm,
]{geometry}
\let\@afterindentfalse\@afterindenttrue

\RequirePackage{xcolor}
\bool_lazy_or:nnTF
  { \sys_if_engine_luatex_p: }
  { \sys_if_engine_xetex_p:  }
  {
    \RequirePackage{mathtools}
    \RequirePackage[default]{fontsetup}
    \RequirePackage
      [protrusion=true, tracking=true, babel=true]
      {microtype}
  }
  {
    \RequirePackage[T2A,T1]{fontenc}
    \RequirePackage{cmap}
    \renewcommand\sfdefault{opensans-LF}
    \renewcommand\bfdefault{b}
    \RequirePackage
      [protrusion=true, expansion, tracking=true,
       kerning=true, spacing=true, babel=true]
      {microtype}
    \RequirePackage{mathtools}
    \RequirePackage{amssymb}
  }

\RequirePackage{csquotes}
\RequirePackage[english, russian, ukrainian]{babel}
\g@addto@macro\bfseries{\boldmath}
\NewDocumentCommand{\newlanguagecommand}{mm}
{
  \prop_new:c { \__iptconf_nlc_strip:N #1 }
  \prop_gset_from_keyval:cn { \__iptconf_nlc_strip:N #1 } { #2 }
  \NewDocumentCommand{#1}{o}
  {
    \IfNoValueTF { ##1 }
      { \iptconf_nlc:NV #1 \languagename }
      { \iptconf_nlc:Nn #1 { ##1 } }
  }
}
\cs_new:Nn \iptconf_nlc:Nn
{
  \prop_if_in:cnTF { \__iptconf_nlc_strip:N #1 } { #2 }
    { \prop_item:cn { \__iptconf_nlc_strip:N #1 } { #2 } }
    { UNSET ~ TRANSLATION }
}
\cs_generate_variant:Nn \iptconf_nlc:Nn { NV }
\cs_new:Nn \__iptconf_nlc_strip:N
  { g_iptconf_nlc_ \cs_to_str:N #1 _prop }
\newlanguagecommand{\iptbibname}{
  ukrainian = {^^d0^^9f^^d0^^b5^^d1^^80^^d0^^b5^^d0^^bb^^d1^^96^^d0^^ba ~ ^^d0^^b2^^d0^^b8^^d0^^ba^^d0^^be^^d1^^80^^d0^^b8^^d1^^81^^d1^^82^^d0^^b0^^d0^^bd^^d0^^b8^^d1^^85 ~ ^^d0^^b4^^d0^^b6^^d0^^b5^^d1^^80^^d0^^b5^^d0^^bb},
  russian   = {^^d0^^9f^^d0^^b5^^d1^^80^^d0^^b5^^d1^^87^^d0^^b5^^d0^^bd^^d1^^8c ~ ^^d0^^b8^^d1^^81^^d0^^bf^^d0^^be^^d0^^bb^^d1^^8c^^d0^^b7^^d0^^be^^d0^^b2^^d0^^b0^^d0^^bd^^d0^^bd^^d1^^8b^^d1^^85 ~ ^^d0^^b8^^d1^^81^^d1^^82^^d0^^be^^d1^^87^^d0^^bd^^d0^^b8^^d0^^ba^^d0^^be^^d0^^b2},
  english   = {References}
}
\newlanguagecommand{\keyname}{
  ukrainian = {^^d0^^9a^^d0^^bb^^d1^^8e^^d1^^87^^d0^^be^^d0^^b2^^d1^^96 ~ ^^d1^^81^^d0^^bb^^d0^^be^^d0^^b2^^d0^^b0},
  russian   = {^^d0^^9a^^d0^^bb^^d1^^8e^^d1^^87^^d0^^b5^^d0^^b2^^d1^^8b^^d0^^b5 ~ ^^d1^^81^^d0^^bb^^d0^^be^^d0^^b2^^d0^^b0},
  english   = {Keywords}
}
\newlanguagecommand{\pacsnum}{
  ukrainian = {PACS ~ ^^d0^^bd^^d0^^be^^d0^^bc^^d0^^b5^^d1^^80^^d0^^b8},
  russian   = {PACS ~ ^^d0^^bd^^d0^^be^^d0^^bc^^d0^^b5^^d1^^80^^d0^^b0},
  english   = {PACS ~ numbers}
}
\newlanguagecommand{\udcnum}{
  ukrainian = {^^d0^^a3^^d0^^94^^d0^^9a},
  russian   = {^^d0^^a3^^d0^^94^^d0^^9a},
  english   = {UDC}
}
\newlanguagecommand{\ipt}{
  ukrainian = {^^d0^^9d^^d0^^b0^^d0^^b2^^d1^^87^^d0^^b0^^d0^^bb^^d1^^8c^^d0^^bd^^d0^^be-^^d0^^bd^^d0^^b0^^d1^^83^^d0^^ba^^d0^^be^^d0^^b2^^d0^^b8^^d0^^b9 ~ ^^d0^^a4^^d1^^96^^d0^^b7^^d0^^b8^^d0^^ba^^d0^^be-^^d1^^82^^d0^^b5^^d1^^85^^d0^^bd^^d1^^96^^d1^^87^^d0^^bd^^d0^^b8^^d0^^b9 ~ ^^d1^^96^^d0^^bd^^d1^^81^^d1^^82^^d0^^b8^^d1^^82^^d1^^83^^d1^^82},
  russian   = {^^d0^^a3^^d1^^87^^d0^^b5^^d0^^b1^^d0^^bd^^d0^^be-^^d0^^bd^^d0^^b0^^d1^^83^^d1^^87^^d0^^bd^^d1^^8b^^d0^^b9 ~ ^^d0^^a4^^d0^^b8^^d0^^b7^^d0^^b8^^d0^^ba^^d0^^be-^^d1^^82^^d0^^b5^^d1^^85^^d0^^bd^^d0^^b8^^d1^^87^^d0^^b5^^d1^^81^^d0^^ba^^d0^^b8^^d0^^b9 ~ ^^d0^^b8^^d0^^bd^^d1^^81^^d1^^82^^d0^^b8^^d1^^82^^d1^^83^^d1^^82},
  english   = {Institute ~ of ~ Physics ~ and ~ Technology}
}
\NewDocumentCommand{ \PaperLanguage }{ m }
{
  \selectlanguage{#1}
  \maketitle
  \writeformdata
  \writearticleinfo
}
\RequirePackage[
  backend      = biber,
  bibstyle     = gost-numeric,
  sorting      = none,
  maxnames     = 10,
  autolang     = other,
  isbn         = true,
  url          = true,
  doi          = true,
  defernumbers = true,
]{biblatex}

\setcounter{biburllcpenalty}{100}
\setcounter{biburlucpenalty}{200}
\setcounter{biburlnumpenalty}{100}
\setlength\bibitemsep{0.5\itemsep}
\setlength\biblabelsep{1ex}
\appto{\bibsetup}{%
  \clubpenalty\z@
  \widowpenalty\z@
  \interlinepenalty\z@
}
\AddToHook{enddocument}[my]{%
  \ExplSyntaxOn
  \tl_set:Nx \l__ipt_bibname_tl
    { \iptconf_nlc:NV \iptbibname \languagename }
  \ExplSyntaxOff
  \printbibliography[ title = {\l__ipt_bibname_tl} ]
}
\RequirePackage{enumitem}
\setlist{nosep}
\RequirePackage{flushend}

\def\initialize@flushend{%
  \global\let\saved@orig@@outputdblcol\@outputdblcol
  \global\let\balanced@@outputdblcol\last@outputdblcol
  \AddToHook{enddocument}[flushend]
    { \let\@outputdblcol\balanced@@outputdblcol }%
  \g@addto@macro\footnoterule{ \vskip\z@ }%
  \savingvdiscards=\@ne
}
\keys_define:nn { iptconf }
{
  fullname       .str_set:N = \l_iptconf_fullname_str,
  birthday       .str_set:N = \l_iptconf_birthday_str,
  position       .str_set:N = \l_iptconf_position_str,
  phone          .str_set:N = \l_iptconf_phone_str,
  authoremail    .str_set:N = \l_iptconf_authoremail_str,
  confsection    .str_set:N = \l_iptconf_confsection_str,
  copynum        .str_set:N = \l_iptconf_copynum_str,
  needliving     .str_set:N = \l_iptconf_needliving_str,
  needinvitanion .str_set:N = \l_iptconf_needinvitanion_str,
}
\DeclareDocumentCommand \regform { m }
{
  \keys_set:nn { iptconf } { #1 }
}
\tl_new:N \l_iptconf_udc_tl
\tl_new:N \l_iptconf_pacs_tl
\tl_new:N \l_iptconf_abstract_tl
\tl_new:N \l_iptconf_keywords_tl
\tl_new:N \l_iptconf_author_tl
\tl_new:N \l_iptconf_author_email_tl
\tl_new:N \l_iptconf_author_affiliation_tl
\tl_new:N \l_iptconf_title_tl
\tl_new:N \l_iptconf_affiliation_tl
\tl_new:N \l_iptconf_affiliation_number_tl
\seq_new:N \g_iptconf_authors_seq
\seq_new:N \g_iptconf_justauthors_seq
\seq_new:N \g_iptconf_affiliation_seq
\seq_new:N \g_iptconf_justaffiliation_seq
\iow_new:N \g_iptconf_totoc_iow
\iow_open:Nn \g_iptconf_totoc_iow { \c_sys_jobname_str .dat }
\RenewDocumentCommand{\title}{ m }
{
  \tl_set:Nn \l_iptconf_title_tl {#1}
  \iow_now:Nx \g_iptconf_totoc_iow
  {
    \iow_char:N \\thispapertitle
    \iow_char:N \{
    \exp_not:n {#1}
    \iow_char:N \}
  }
}
\RenewDocumentCommand{\author}{ O{} m m }
{
  \tl_set:Nn \l_iptconf_author_tl           {#2}
  \tl_set:Nn \l_iptconf_author_email_tl     {#1}
  \tl_set:Nn \l_iptconf_author_affiliation_tl {#3}
  \seq_gput_right:Nn \g_iptconf_justauthors_seq {#2}
  \seq_gput_right:Nn \g_iptconf_authors_seq
  {
    #2\textsuperscript{#3}
    \tl_if_empty:nTF {#1}
      { }
      { \textsuperscript{,}\thanks{#1} }
  }
  \iow_now:Nx \g_iptconf_totoc_iow
  {
    \iow_char:N \\thispaperauthor
    \iow_char:N \{
    \exp_not:n {#2}
    \iow_char:N \}
  }
}
\NewDocumentCommand{\affiliation}{m m}
{
  \tl_set:Nn \l_iptconf_affiliation_tl        {#1}
  \tl_set:Nn \l_iptconf_affiliation_number_tl {#2}
  \seq_gput_right:Nn \g_iptconf_affiliation_seq
    { \textsuperscript{#2}\ #1 }
  \seq_gput_right:Nn \g_iptconf_justaffiliation_seq {#1}
}
\NewDocumentCommand{\@affiliation}{ }
{
  \seq_use:Nnnn
    \g_iptconf_affiliation_seq
    {\\[2ex]} {\\[2ex]} {\\[2ex]}
}
\NewDocumentCommand\udc{ m }
{
  \tl_set:Nn \l_iptconf_udc_tl {#1}
}
\NewDocumentCommand\pacs{ m }
{
  \tl_set:Nn \l_iptconf_pacs_tl {#1}
}
\NewDocumentCommand\keywords{m}
{
  \tl_set:Nn \l_iptconf_keywords_tl { #1 }
}
\RenewDocumentCommand\abstract{ +m }
{
  \tl_set:Nn \l_iptconf_abstract_tl {#1}
}
\NewDocumentCommand\@abstract{ }
{
  \tl_use:N \l_iptconf_abstract_tl
}
\date{}
\NewDocumentCommand\authors{ }
{
  \seq_use:Nnnn \g_iptconf_authors_seq {,~} {,~} {,~}
}
\RenewDocumentCommand\@maketitle{ }
{
  \newpage
  \tl_if_empty:NTF \l_iptconf_pacs_tl
    { }
    { \pacsnum\ \tl_use:N \l_iptconf_pacs_tl }
  \tl_if_empty:NTF \l_iptconf_udc_tl
    { }
    { \udcnum\ \tl_use:N \l_iptconf_udc_tl }
  \nopagebreak
  \null
  \vskip 1em
  \begin{center}
    \let\footnote\thanks
    {\Large\bfseries\sffamily
      \text_uppercase:n { \tl_use:N \l_iptconf_title_tl } \par
    }
    \vskip 1.5em
    {\large
      \lineskip .5em
      \begin{center}
        \authors
      \end{center}
      \par
    }
    \vskip 1ex
    {\@affiliation}
  \end{center}
}
\renewcommand\maketitle{\par
  \begingroup
  \iflanguage{ukrainian}%
    {\renewcommand\thefootnote{\itshape\asbuk{footnote}}}%
    {%
      \iflanguage{russian}%
        {\renewcommand\thefootnote{\itshape\asbuk{footnote}}}%
        {%
          \iflanguage{english}
            {\renewcommand\thefootnote{\itshape\alph{footnote}}}%
            {}%
        }%
    }%
  \if@twocolumn
    \ifnum \col@number=\@ne
      \@maketitle
      \noindent\hrulefill\par
      \vspace{1.3ex}
      {\large\bfseries \abstractname}
      \begingroup
        \quotation
        \@abstract
        \endquotation
      \endgroup
      \noindent{\bfseries \keyname}:~\tl_use:N \l_iptconf_keywords_tl \par
      \smallskip\noindent\hrulefill\medskip
    \else
      \twocolumn[\@maketitle
        \noindent\hrulefill\par
        \vspace{1.3ex}
        {\large\bfseries \abstractname}
        \begingroup
          \quotation
          \@abstract
          \endquotation
        \endgroup
        \vskip 1em
        \noindent{\bfseries \keyname}:~\tl_use:N \l_iptconf_keywords_tl \par
        \smallskip\noindent\hrulefill\bigskip
      ]%
    \fi
  \else
    \newpage
    \global\@topnum\z@
    \@maketitle
  \fi
  \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\AtEndDocument
{
  \iow_now:Nx \g_iptconf_totoc_iow { \iow_char:N \\finishauthors }
  \iow_close:N \g_iptconf_totoc_iow
}
\cs_gset_protected:Npn \iptconf_seccntformat:n #1
{
  \csname the#1\endcsname.\enskip
}
\cs_gset_eq:NN \@seccntformat \iptconf_seccntformat:n
\cs_gset_protected:Npn \iptconf_section:
{
  \@startsection {section}{1}{\z@}%
    {-2ex \@plus -1ex \@minus -.2ex}%
    {1.3ex \@plus .2ex}%
    {\normalfont\large\bfseries\raggedright}
}

\cs_new_protected:Npn \iptconf_section_star:n #1
{
  \iptconf_section:*{#1}
  \addcontentsline{toc}{section}{#1}
}

\RenewDocumentCommand \section {s o m}
{
  \IfBooleanTF{#1}
    { \iptconf_section_star:n {#3} }
    {
      \IfNoValueTF{#2}
        { \iptconf_section: {#3} }
        { \iptconf_section: [#2]{#3} }
    }
}
\cs_gset_protected:Npn \iptconf_subsection:
{
  \@startsection{subsection}{2}{\z@}%
    {-3.25ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\normalfont\bfseries\raggedright}
}

\cs_new_protected:Npn \iptconf_subsection_star:n #1
{
  \iptconf_subsection:*{#1}
  \addcontentsline{toc}{subsection}{#1}
}

\RenewDocumentCommand \subsection {s o m}
{
  \IfBooleanTF{#1}
    { \iptconf_subsection_star:n {#3} }
    {
      \IfNoValueTF{#2}
        { \iptconf_subsection: {#3} }
        { \iptconf_subsection: [#2]{#3} }
    }
}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage[labelsep=period]{caption}
\def\tabcaption{\def\@captype{table}\caption}
\def\figcaption{\def\@captype{figure}\caption}
\renewcommand\thesubfigure{(\alph{subfigure})}
\captionsetup[subfigure]{justification=centering, subrefformat=parens}
\RequirePackage[
  colorlinks      = true,
  urlcolor        = blue,
  linkcolor       = red!60!black,
  citecolor       = green!50!black,
  bookmarks,
  bookmarksnumbered = true,
  breaklinks      = true,
  unicode,
  linktoc         = all,
  hypertexnames   = false,
]{hyperref}
\iow_new:N \g_iptconf_regform_iow
\NewDocumentCommand \writeformdata {} {
  \iow_open:Nn \g_iptconf_regform_iow
    { \c_sys_jobname_str -regform.txt }
  \iow_now:Nx \g_iptconf_regform_iow
  {
    \text_expand:n
      { ^^d0^^9f^^d0^^be^^d0^^b2^^d0^^bd^^d0^^b5 ~ ^^d1^^96^^d0^^bc'^^d1^^8f ~ ^^d0^^b4^^d0^^be^^d0^^bf^^d0^^be^^d0^^b2^^d1^^96^^d0^^b4^^d0^^b0^^d1^^87^^d0^^b0: ~ \str_use:N \l_iptconf_fullname_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^94^^d0^^b0^^d1^^82^^d0^^b0 ~ ^^d0^^bd^^d0^^b0^^d1^^80^^d0^^be^^d0^^b4^^d0^^b6^^d0^^b5^^d0^^bd^^d0^^bd^^d1^^8f: ~ \str_use:N \l_iptconf_birthday_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^9f^^d0^^be^^d1^^81^^d0^^b0^^d0^^b4^^d0^^b0 ~ ^^d0^^b4^^d0^^be^^d0^^bf^^d0^^be^^d0^^b2^^d1^^96^^d0^^b4^^d0^^b0^^d1^^87^^d0^^b0: ~ \str_use:N \l_iptconf_position_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^a2^^d0^^b5^^d0^^bb^^d0^^b5^^d1^^84^^d0^^be^^d0^^bd^^d0^^bd^^d0^^b8^^d0^^b9 ~ ^^d0^^bd^^d0^^be^^d0^^bc^^d0^^b5^^d1^^80: ~ \str_use:N \l_iptconf_phone_str }
    \iow_newline:
    \text_expand:n
      { Email: ~ \str_use:N \l_iptconf_authoremail_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^a1^^d0^^b5^^d0^^ba^^d1^^86^^d1^^96^^d1^^8f: ~ \str_use:N \l_iptconf_confsection_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^9a^^d1^^96^^d0^^bb^^d1^^8c^^d0^^ba^^d1^^96^^d1^^81^^d1^^82^^d1^^8c ~ ^^d0^^ba^^d0^^be^^d0^^bf^^d1^^96^^d0^^b9: ~ \str_use:N \l_iptconf_copynum_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^9f^^d0^^be^^d1^^82^^d1^^80^^d0^^b5^^d0^^b1^^d0^^b0 ~ ^^d0^^b2 ~ ^^d0^^b6^^d0^^b8^^d1^^82^^d0^^bb^^d1^^96: ~ \str_use:N \l_iptconf_needliving_str }
    \iow_newline:
    \text_expand:n
      { ^^d0^^9f^^d0^^be^^d1^^82^^d1^^80^^d0^^b5^^d0^^b1^^d0^^b0 ~ ^^d0^^b2 ~ ^^d0^^b7^^d0^^b0^^d0^^bf^^d1^^80^^d0^^be^^d1^^88^^d0^^b5^^d0^^bd^^d0^^bd^^d1^^96: ~
        \str_use:N \l_iptconf_needinvitanion_str }
    \iow_newline:
  }
  \iow_close:N \g_iptconf_regform_iow
}
\NewDocumentCommand \writearticleinfo {} {

  \text_declare_purify_equivalent:Nn \LaTeX  { LaTeX }
  \text_declare_purify_equivalent:Nn \TeX    { TeX }
  \text_declare_purify_equivalent:Nn \LaTeXe { LaTeX2e }

  % Remove trailing period from keywords, then split into clist
  \regex_replace_once:nnN { \.\s*\z } {} \l_iptconf_keywords_tl
  \clist_set:Nx \l_iptconf_keywords_clist
    { \tl_use:N \l_iptconf_keywords_tl }

  % Register Greek letter macros as their ASCII names for purification
  \clist_map_inline:nn
  {
    alpha, beta, gamma, delta, epsilon, zeta, eta, theta,
    iota, kappa, lambda, mu, nu, xi, omicron, pi, rho,
    sigma, tau, upsilon, phi, chi, psi, omega,
    Gamma, Delta, Theta, Lambda, Xi, Pi, Sigma, Upsilon, Phi, Psi, Omega
  }
  {
    \exp_args:Ne \text_declare_purify_equivalent:Nn
      { \cs:w ##1 \cs_end: } { ##1 }
  }

  % Clean author names: replace ~ with regular space
  \seq_clear_new:N \g_cleanauthors_seq
  \seq_map_inline:Nn \g_iptconf_justauthors_seq
  {
    \tl_set:Nn \l_tmpa_tl { ##1 }
    \regex_replace_all:nnN { [\~] } { \  } \l_tmpa_tl
    \seq_put_right:NV \g_cleanauthors_seq \l_tmpa_tl
  }

  % Purify title and abstract
  \tl_set_eq:NN \l_cleanabstract_tl \l_iptconf_abstract_tl
  \regex_replace_all:nnN { [\$] } { } \l_cleanabstract_tl
  \tl_set_eq:NN \l_cleantitle_tl \l_iptconf_title_tl
  \regex_replace_all:nnN { [\$] } { } \l_cleantitle_tl

  \iow_open:Nn \g_iptconf_regform_iow
    { \c_sys_jobname_str -info.yaml }

  \iow_now:Nx \g_iptconf_regform_iow
    { title: ~ " \text_purify:n { \l_cleantitle_tl } " }
  \iow_now:Nx \g_iptconf_regform_iow
    { speaker: ~ " \str_use:N \l_iptconf_fullname_str " }
  \iow_now:Nx \g_iptconf_regform_iow
    { section: ~ " \str_use:N \l_iptconf_confsection_str " }

  \iow_now:Nn \g_iptconf_regform_iow { authors: }
  \seq_map_inline:Nn \g_cleanauthors_seq
  {
    \iow_now:Nx \g_iptconf_regform_iow
      { ~ - ~ " \text_purify:n {##1} " }
  }

  \iow_now:Nn \g_iptconf_regform_iow { affiliations: }
  \seq_map_inline:Nn \g_iptconf_justaffiliation_seq
  {
    \str_if_eq:nnTF {##1} {\ipt}
      { \iow_now:Nn \g_iptconf_regform_iow { ~ - ~ "^^d0^^9d^^d0^^9d ~ ^^d0^^a4^^d0^^a2^^d0^^86" } }
      {
        \iow_now:Nx \g_iptconf_regform_iow
          { ~ - ~ " \text_purify:n {##1} " }
      }
  }

  \iow_now:Nx \g_iptconf_regform_iow { abstract: ~ > }
  \iow_now:Nx \g_iptconf_regform_iow
    { ~ " \text_purify:n { \l_cleanabstract_tl } " }

  \iow_now:Nn \g_iptconf_regform_iow { keywords: }
  \clist_map_inline:Nn \l_iptconf_keywords_clist
  {
    \iow_now:Nn \g_iptconf_regform_iow { ~ - ~ "##1" }
  }

  \iow_close:N \g_iptconf_regform_iow
}
\endinput
%%
%% End of file `iptconf.cls'.
