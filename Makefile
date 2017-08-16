# Lectures

######################################################################

current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources += Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
-include $(ms)/newtalk.def

##################################################################

## Crib

%.lect: old
	cp old/$@ .

old:
	/bin/ln -fs ~/Dropbox/current/WorkingWiki-export/1M_lectures $@

##################################################################

## Formatting
## Script is makestuff/newtalk/lect.pl
## Format rules are in makestuff/newtalk/txt.format _and_
Sources += local.txt.format

## Copyright notice
Sources += copy.tex

######################################################################

## Content
## Old content is called .lect.
## To import a unit, change the name to .txt (git mv it to lose the old index value)

Sources += *.txt

#### Combined file (maybe older, seems to have more references to (some version of) the book)
Sources += course.lect


#### Introduction
intro.draft.pdf: intro.txt
intro.final.pdf: intro.txt
intro.handouts.pdf: intro.txt
intro.complete.pdf: intro.txt
intro.outline.pdf: intro.txt

#### Natural selection (P24?)
Sources += ns.lect

#### Evolutionary processes (P25?)
Sources += processes.lect

#### Speciation (P26?)
Sources += speciation.lect

#### Phylogeny and the history of life
Sources += phylogeny.lect

#### Behavior (P51?)
Sources += behavior.lect

#### The evolution of modern humans
Sources += modern.lect

#### Human diversity (no notes found!)

#### Human behavior (seems to be Lovaye's part of the course)
Sources += hb.lect


######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/newtalk.mk
-include $(ms)/newlatex.mk

