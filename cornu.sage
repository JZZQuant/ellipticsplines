#!/usr/bin/env sage
from sage.symbolic.integration.integral import indefinite_integral

#cornu spiral
s=var('u')
parametric_plot((lambda p: numerical_integral(cos(u**2),0,p)[0], lambda p: numerical_integral(sin(u**2),0,p)[0]), (-3*pi/2, 3*pi/2))

#elongated model
s=var('s')
l=sqrt(2*4*pi/3)
f = (l*s-(s**2)/2)
parametric_plot((lambda z: numerical_integral(cos(f),0,z)[0], lambda z: numerical_integral(sin(f),0,z)[0]), (0, sqrt(pi)))






