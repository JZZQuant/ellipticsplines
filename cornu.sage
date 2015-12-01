#!/usr/bin/env sage

s,x,y,u,p=var('s x y u p')
parametric_plot((lambda p: numerical_integral(cos(u**2),0,p)[0], lambda p: numerical_integral(sin(u**2),0,p)[0]), (-3*pi/2, 3*pi/2))

m=3
n=2
parametric_plot((lambda p: numerical_integral(cos(m*u-(u**2)/2),0,p)[0], lambda p: numerical_integral(sin(m*u-(u**2)/2),0,p)[0]), (0, n))

k=0.9
parametric_plot((lambda s: 2*elliptic_eu(s,k)-s,lambda s: -2*k*jacobi('cn', s, k) ), (0, m-n))

#continuity condition m-n>3 , n >1,2 k around 0.2 , 0.3   
#k= horizontal strach of elastica
#m-n cuve nature of elastica with a tangential
#n sretch or bent of spiral length
# another relation between m,visible length and k can be retrieved from the perpendicular visbility condition
# kassumption  assume the k value to be constant for all types of paper
u-elliptic_f(m*u-(u**2)/2,k)=0

