
#STEKLOV INSTITUTE model
k=0.5
psi=pi/2
r=3
def dn(s): return jacobi('dn',sqrt(r)*s, k)
def cn(s): return jacobi('cn',sqrt(r)*s, k)
def sn(s): return jacobi('sn',sqrt(r)*s, k)
def E(s) : return elliptic_eu(sqrt(r)*s,k) 

parametric_plot((lambda z : (2/sqrt(r))*(dn(psi)**2)*(E(z+psi)-E(psi)) + (4*(k**2)/sqrt(r))*dn(psi)*sn(psi)*(cn(psi)-cn(z+psi)) + (2*(k**2)/sqrt(r)) + (sn(psi)**2)*(sqrt(r)*z+E(psi)-E(psi+z)) -z,lambda z: (2*k/sqrt(r))*((2*dn(psi)**2) -1)*(cn(psi)-cn(psi+z)) - (2*k/sqrt(r))*sn(psi)*dn(psi)*(2*(E(psi+z)-E(psi)) - sqrt(r)*z)), (0,1))


