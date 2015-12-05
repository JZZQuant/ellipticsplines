

#elliptic -cornu model
#y component integral is 0 and final tangent or argument is also 0, for every value of k we can fit this curve
#f(l)=pi, numerical_integral(sin(f),0,z)[0]=0
s=var('s')
k=0
p=2.4
l=7*pi/6
f = p*s-(s**2)/2+2*sqrt(k)*jacobi('dn',p-s,k)
parametric_plot((lambda z: numerical_integral(cos(f),0,z)[0], lambda z: numerical_integral(sin(f),0,z)[0]), (0, l))