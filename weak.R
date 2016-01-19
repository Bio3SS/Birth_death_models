require(deSolve)
bd(N0=1, bDD=70, bAllee=0.6, d0=0.4, title="Weak Allee effect", elines=TRUE)
bd(N0=1, bDD=140, bAllee=1.2, d0=0.4, popMax=200, title="Weak Allee effect")
