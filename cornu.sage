#!/usr/bin/env sage
from sage.symbolic.integration.integral import indefinite_integral

#cornu spiral
s=var('u')
parametric_plot((lambda p: numerical_integral(cos(u**2),0,p)[0], lambda p: numerical_integral(sin(u**2),0,p)[0]), (-3*pi/2, 3*pi/2))

#fusion model
#y component integral is 0 and final tangent or argument is also 0, for every value of k we can fit this curve
#f(l)=pi, numerical_integral(sin(f),0,z)[0]=0
s=var('s')
k=0
p=2.4
l=7*pi/6
f = p*s-(s**2)/2+2*sqrt(k)*jacobi('dn',p-s,k)
parametric_plot((lambda z: numerical_integral(cos(f),0,z)[0], lambda z: numerical_integral(sin(f),0,z)[0]), (0, l))

#elongated model
s=var('s')
l=sqrt(2*4*pi/3)
f = l*s-(s**2)/2
parametric_plot((lambda z: numerical_integral(cos(f),0,z)[0]*(z**4), lambda z: numerical_integral(sin(f),0,z)[0]*(z**4)), (0, l))

#transformed cornu spiral
s= var('s')
l= sqrt(5*pi/4)
f= s**2
x= numerical_integral(cos(f),0,l)[0]
y= numerical_integral(sin(f),0,l)[0]
c= cos(l**2)
s= sin(l**2)
parametric_plot((lambda z: c*(x -numerical_integral(cos(f),0,z)[0] ) + s*(y - numerical_integral(sin(f),0,z)[0]),                 lambda z: s*(x -numerical_integral(cos(f),0,z)[0] ) - c*(y  - numerical_integral(sin(f),0,z)[0])), (-sqrt(pi/4), l))
