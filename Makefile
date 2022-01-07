## This is Birth_death_models, a screens project directory
## makestuff/project.Makefile

current: target
-include target.mk

# include makestuff/perl.def

######################################################################

# Content

vim_session:
	bash -cl "vmt"

Sources += $(wildcard *.R)

bd.Rout: bd.R
	$(wrapR)

birth_response.Rout: bd.rda birth_response.R
	$(wrapR)

size.Rout: bd.rda size.R

delay_sims.Rout: delay.Rout delay_sims.R
	$(run-R)

## slow.bd.Rout-1.pdf:

%.bd.Rout: bd.rda %.R
	$(run-R)

ntu.bd.Rout: ntu.R

######################################################################

logo.Rout.png: 
logo.Rout: logo.R bd.rda
	$(pipeR)

Ignore += logo.png
logo.png: logo.Rout.png Makefile
	convert -crop 360x360+40+60 -scale 80% $< $@

######################################################################

### Makestuff

Sources += Makefile

## Sources += content.mk
## include content.mk

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff && ls $@

-include makestuff/os.mk

-include makestuff/pipeR.mk
-include makestuff/pdfpages.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
