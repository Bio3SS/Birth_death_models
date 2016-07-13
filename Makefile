# Birth_death_models
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: ntu.bd.Rout 

##################################################################


# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
# include $(ms)/perl.def
-include $(ms)/os.mk

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

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
