z_test<-function(a,mu,sd){
  zeta=(mean(a)-mu)/(sd/sqrt(length(a)))
  return(zeta)
}