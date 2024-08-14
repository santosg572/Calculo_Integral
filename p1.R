x1 = 0
x2 = 5
h = .01

x = seq(x1, x2, h)

y = x^2

plot(x,y, type='l', col='blue', lwd=3)

xn = seq(1, 4, .5)
yn = xn^2

np1 = length(xn)

points(c(0,5), c(0,0), type='l')

for (i in 1:(np1-1)){
  points(c(xn[i],xn[i]), c(0,yn[i]), type='l')
  points(c(xn[i],xn[i+1]), c(yn[i], yn[i]), type='l')
}

points(c(xn[i+1],xn[i+1]), c(0,yn[i]), type='l')

points(c(1,4), c(0,0), type='l', col='blue', lwd=3)

i = 2
points(c(xn[i+1],xn[i+1]), c(0,yn[i+1]), type='l', col='red', lwd=3)
points(c(xn[i+1],xn[i+2]), c(0, 0), type='l', col='red', lwd=3)

i=0
points(c(xn[i+1],xn[i+1]), c(0,yn[i+1]), type='l', col='blue', lwd=3)

i = np1-1
points(c(xn[i+1],xn[i+1]), c(0,yn[i+1]), type='l', col='blue', lwd=3)

text(2,15,expression(y==x^2), cex=3)


