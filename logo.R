library(deSolve)

library(shellpipes)
loadEnvironments()

startGraphics(otype="png")

sim <- bdsim(N0=1, bDD=50, dDD=-100)

plot(sim$time, sim$N
	, ylab = "N", xlab = "T"
	, type = "l", ylim = c(1, max(sim$N))
	, xaxt = "n", yaxt="n"
	, col = "blue"
	, lwd=4
)

