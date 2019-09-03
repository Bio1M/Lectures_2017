
## This is XXX, a screens project directory
## makestuff/project.Makefile

current: target
-include target.mk

######################################################################

# Session

vim_session:
	bash -cl "vmt"

######################################################################

# Lectures

## Keep track of lecture progress
Sources += lecture.txt

######################################################################

## Dropbox location (in case we ever have another user)
imagelinks = ~/Dropbox/1M
Sources += jd.local

jd.lmk: jd.local
%.lmk:
	$(CP) $*.local local.mk

##################################################################

## Lecture machinery

-include makestuff/perl.def
-include makestuff/newtalk.def

## Formatting
## Script is makestuff/newtalk/lect.pl
## Format rules are in makestuff/newtalk/txt.format _and_
Sources += local.txt.format

## Copyright notice
Sources += copy.tex

#####################################################################

## Accidentally cloned this instead of Lectures and started updating!
## 2019 Sep 03 (Tue)
## Should be on a good track, although there's some recently duplicated stuff

Sources += oldMakefile

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

-include makestuff/os.mk
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
