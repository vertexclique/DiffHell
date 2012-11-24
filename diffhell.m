%% Diffie - Hellman Simulator
function publickey = diffhell(primelimit, approxintx, approxinty)
%%
% 
% * primrt: Primitive root of tested&generated maximum prime
% * thebeast: The maximum prime for 0-primelimit interval
% * approxintx: Approximation(Random for User A) integer it can be greater than any
%   [p^n+primrt^i] iff (0<=i<=(p-1))
% * approxinty: Approximation(Random for User B) integer it can be greater than any
%   [p^n+primrt^i] iff (0<=i<=(p-1))

y=eulerprime(primelimit);
thebeast=max(y);
primrt=primitiveroot(thebeast);
XA = powermod(primrt, approxintx, thebeast);
plot(XA);
XB = powermod(primrt, approxinty, thebeast);
plot(XB);
publickeyYB = powermod(XA, approxinty, thebeast);
publickeyYA = powermod(XB, approxintx, thebeast);

disp(sprintf('KEYVALUE might for YA: %10f', publickeyYA));
disp(sprintf('KEYVALUE might for YB: %10f', publickeyYB));

publickey = publickeyYB;
publickey = publickeyYA;
return

