
#fianal cornu based model
s,x= var('s x')
assume(x>0)
l= 2.170803
e= -0.78622
f= s**2
m= numerical_integral(cos(f),0,l)[0]
n= numerical_integral(sin(f),0,l)[0]
#v=(sqrt(arctan((m-definite_integral(cos(s**2),s,0,x))/(n-definite_integral(sin(s**2),s,0,x))))-x).solve(x)
#e=v[0].rhs()
a= numerical_integral(cos(f),0,e)[0]
b= numerical_integral(sin(f),0,e)[0]
theta= arctan((b-n)/(a-m))
c= cos(theta)
s= sin(theta)
def x(t): return c*(numerical_integral(cos(f),0,t)[0] -m) + s*( numerical_integral(sin(f),0,t)[0] -n )
def y(t): return s*(numerical_integral(cos(f),0,t)[0] -m) - c*(numerical_integral(sin(f),0,t)[0] -n )
parametric_plot((lambda z : x(z)*(l-z)**2,lambda z: y(z)*(l-z)**2), (e, l))
