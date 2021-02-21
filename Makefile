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

birth_response.Rout: bd.Rout birth_response.R
size.Rout: bd.Rout size.R

delay_sims.Rout: delay.Rout delay_sims.R
	$(run-R)

%.bd.Rout: bd.Rout %.R
	$(run-R)

ntu.bd.Rout: ntu.R

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

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
