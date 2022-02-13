

# parameters to adjust on the dashboard

  nsim <- 100
  N0 <- 10
  R <- 1.2
  K <- 100
  ev <- 0.1
  time <- 100

  
# code to run
  alpha <- (R-1)/K
  x <- 1:time
  N <- matrix(nrow = nsim, ncol = time)
  for(i in 1:nsim) {
    N[i, 1] <- N0
    for(j in 2:time) {
      env.sto <- N[i, j-1] * rnorm(1, mean = 0, sd = ev)
      mu <- (R*N[i, j-1] / (1 + alpha*N[i, j-1])) + env.sto
      N[i, j] <- rpois(1, mu)
      if(N[i, j] <= 0) N[i, j] <- 0
    }
  }

# plot to draw on dashboard    
  yl <- max(N)
  plot(x, x, type = "n", xlim = c(0, time), ylim = c(0, yl))
  for(i in 1:nsim) lines(N[i, ] ~ x, col = "grey")
  
# output to display on dashboard
  prop.extinct <- sum(ifelse(N[, time] == 0, 1, 0)) / nsim
  prop.extinct
  
  
  

