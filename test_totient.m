%% Totient testing
%%
% 
%   h = waitbar(0,'Initializing totients...');
%   [r, c]=size(n);
%   n=reshape(n,1,r*c);
%   t=zeros(1,r*c);
%   f=zeros(1,10);
%   waitbar(0.1,h,'Entering...')
%   m=r*c;
%   for k=1:r*c;
%       nk=n(k);
%       f=unique(factor(nk));
%       t(k)=nk*prod(1-1./f);
%       waitbar(0.9/(m),h,'Calculating relative primes...')
%       m=m-1;
%   end
%   
%   t=reshape(t,r,c);
%   p=find(n==1);
%   t(p)=1;
%   t=round(t);
%   close(h)
%   return
% 

function [test_totient] = test_totient(range)
n=(1:range).';
test_totient=totient(n);
k=[n test_totient];
plot(k)