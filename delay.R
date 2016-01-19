print("Loading function delay_sim")
delay_sim <- function (N0=1, Rmax=1, tau=1, K=100, Npre=0, finTime=20, delayBoxes=100, tcBoxes=20, title=NULL){
	# Make sure there are enough boxes in the simulation
	tcBoxes <- round(tcBoxes*tau*Rmax)
	delayBoxes <- max(delayBoxes, tcBoxes)

	# Set up pre-existing population (arbitrarily use a linear sequence)
	N <- seq(Npre, N0, length.out=delayBoxes+1)
	t <- seq(-tau, finTime, by=tau/delayBoxes)

	# Run a crude simulator
	for(i in (delayBoxes+1):length(t)){
		Npast <- mean(c(N[i-delayBoxes], N[i-delayBoxes-1]))
		Np <- Rmax*N[i-1]*(1-Npast/K)
		N[i] <- N[i-1] + Np*(tau/delayBoxes)
	}

	# Make an automatic title if necessary
	if (is.null(title)){
		title = paste("Unitless delay ", Rmax*tau)
	}

	# Make a picture
	plot (t, N, 
		type="l", xlim=c(0, max(t)),
		main=title
	)
}
