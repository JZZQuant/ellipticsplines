
#Elastica Models

#elastica model
k=0.3
parametric_plot((lambda s: 2*k*jacobi('cn', s, k),lambda s: 2*elliptic_eu(s,k)-s ), (0, 1))


#transformed cornu spiral
k=0.6695
theta=pi/2
l=7
al=theta - (2*arcsin(k))
K=elliptic_kc(k)
n=(sin(al/2))/k
beta=sqrt(1-(2*(k**2)*(n**2)))*((3*K) - inverse_jacobi_sn( n, k))
b=beta*sqrt(sec(al))/l
def L(s) : return elliptic_eu((b*s)+K,k) - elliptic_eu(K,k)
parametric_plot((lambda z : cos(al)*(((2/b)*L(z))-z) + (2*k/b)*sin(al)*jacobi('cn', (b*z) + K, k),lambda z: sin(al)*(((2/b)*L(z))-z) - (2*k/b)*cos(al)*jacobi('cn', (b*z) + K, k)), (2, l))
