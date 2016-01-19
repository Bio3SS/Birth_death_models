require(deSolve)
bd(N0=1, bDD=70, bAllee=6, d0=0.4, title="Allee effect in birth rate", elines=TRUE)
bd(N=20, reportPcTotal="n", bDD=70, bAllee=6, d0=0.4, title="Allee effect in birth rate")
bd(N=80, reportPcTotal="n", bDD=70, bAllee=6, d0=0.4, title="Allee effect in birth rate")
