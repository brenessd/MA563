syms u(t);
ode = diff(u(t),t) == -2*t*[u(t)]^2;
cond = u(0) == 1;
uSol(t) = dsolve(ode, cond)


ezplot(uSol);