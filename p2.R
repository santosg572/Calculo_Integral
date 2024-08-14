GrafFun <- function(x1=0, x2=0){
  h = .01
  x = seq(x1, x2, h)
  y = x^2
  plot(x,y, type='l', col='blue', lwd=3)
  points(c(x1,x2), c(0,0), type='l', col='blue')
  text(2,15,expression(y==x^2), cex=3)
}

GrafRec <- function(x1=0, x2=0, del1=0){
  xn = seq(x1, x2, del1)
  yn = xn^2
  np1 = length(xn)
  
  for (i in 1:(np1-1)){
    points(c(xn[i],xn[i]), c(0,yn[i]), type='l')
    points(c(xn[i],xn[i+1]), c(yn[i], yn[i]), type='l')
  }

  points(c(xn[i+1],xn[i+1]), c(0,yn[i]), type='l')

  i = 2
  points(c(xn[i+1],xn[i+1]), c(0,yn[i+1]), type='l', col='red', lwd=3)
  points(c(xn[i+1],xn[i+2]), c(0, 0), type='l', col='red', lwd=3)

  i=0
  points(c(xn[i+1],xn[i+1]), c(0,yn[i+1]), type='l', col='blue', lwd=3)

  i = np1-1
  points(c(xn[i+1],xn[i+1]), c(0,yn[i+1]), type='l', col='blue', lwd=3)

}

GrafFun(0, 5)
GrafRec(1, 4, .5)

