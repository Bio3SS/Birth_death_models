require(deSolve)

bd(bDD=70, title="Density-dependent birth", elines=TRUE)
rate(bDD=70, title="Density-dependent birth", elines=TRUE, arrows=FALSE)

## Zoom on origin
rate(bDD=70, popSteps=1000, title="Density-dependent birth", xrange=c(0, 10), elines=TRUE, arrows=FALSE)
rate(bDD=70, popSteps=1000, title="Density-dependent birth", xrange=c(0, 2), elines=TRUE, arrows=FALSE)

## Zoom on CC
rate(bDD=70, popSteps=1000, title="Density-dependent birth", xrange=c(44, 54), elines=TRUE, arrows=FALSE)
rate(bDD=70, popSteps=1000, title="Density-dependent birth"
	, xrange=c(47.7, 49.7), elines=TRUE, arrows=FALSE)

## Zoom on intermediate point
rate(bDD=70, popSteps=1000, title="Density-dependent birth", xrange=c(15, 25), elines=TRUE, arrows=FALSE)
rate(bDD=70, popSteps=1000, title="Density-dependent birth", xrange=c(19, 21), elines=TRUE, arrows=FALSE)
