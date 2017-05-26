# Birth_death_models
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: ntu.bd.Rout 

##################################################################


# make files

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

##################################################################

## Content

Sources += $(wildcard *.R)

birth_response.Rout: bd.Rout birth_response.R
size.Rout: bd.Rout size.R

delay_sims.Rout: delay.Rout delay_sims.R
	$(run-R)

%.bd.Rout: bd.Rout %.R
	$(run-R)

ntu.bd.Rout: ntu.R

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
