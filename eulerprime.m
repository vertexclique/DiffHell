function m = eulerprime(stage)
entrytime = clock;
n=(1:stage).';
digitcount = floor(log10(stage))+1;
h = warndlg(sprintf('Digit count approx. to: %d', digitcount));
test_totient=totient(n);
for o=1:max(n)
    if o==(test_totient(o)+1)
        primearray(o)=o;
        isit=isprime(primearray(o));
        if isit==1
            warning(horzcat('Miller-Rabin Test(Prime) number: %', int2str(digitcount), 'f'), primearray(o));
        end
    end
end
l=[n test_totient];
m=primearray;
elapsed=etime(clock, entrytime);
h = msgbox(horzcat('Time elapsed: ', int2str(elapsed)),'Time Elapsed','help');
%plot(m)
return