divert(-1)

diverts:
	0  chapter menu
	1  sections

changequote({,})

define(menuentry, dnl node, description
{* {$1}::dnl
ifelse(eval(len({$1})<4), 1, {	})dnl
ifelse(eval(len({$1})<12), 1, {	})dnl
	{$2}})

define(option,dnl name, short, variable, function, type, default, help, doku
{divert(0)dnl
menuentry({$1}, {$7})
divert(1)dnl
@c ---------------------------------------------------------------------
@node {$1}
@section {$1} -- {$7}
@cindex {$1}

@itemize @bullet
@item
Option: {$1}
@item 
Short: {$2}
@item
Default: {$6}
@end itemize

{$8}

divert(-1)})

divert(0)dnl
@c *********************************************************************
@node	 Options
@chapter Options

@menu
divert(-1)

define(endall,
{divert(0)dnl
@end menu

undivert})
