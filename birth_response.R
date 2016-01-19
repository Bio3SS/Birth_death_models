pop <- 1:100
b0 <- 1
d0 <- 1/2
pC <- 50
mult <- 1.5

respPlot(pop,
	b=b0*exp(-(pop/pC)^2),
	d=d0+0*pop,
	lpos="topright", ylab="Per capita rate (1/yr)", title=""
)

respPlot(pop,
	b=b0*exp(-(pop/pC)),
	d=d0+0*pop,
	lpos="topright", ylab="Per capita rate (1/yr)", title=""
)

respPlot(pop,
	b=b0*exp(-(pop/(mult*pC))),
	d=d0+0*pop,
	lpos="topright", ylab="Per capita rate (1/yr)", title=""
)

respPlot(pop,
	b=b0*exp(-(pop/pC)),
	d=d0+0*pop,
	logscale=TRUE,
	lpos="topright", ylab="Per capita rate (1/yr)", title=""
)

respPlot(pop,
	b=b0*exp(-(pop/(mult*pC))),
	d=d0+0*pop,
	logscale=TRUE,
	lpos="topright", ylab="Per capita rate (1/yr)", title=""
)
