function output = tag(a, r, m, macstream)
L = length(m);
ml = 1;                     % 	mL = 1 is the padding, which is crucial for the security of the authentication as it ensures that m and mjj0 have different tags

m=[m ml];

for i=1:L+1                 %   for i=0:L
    for j=1:32
    a(j) = xor(a(j),and(m(i),r(j))); 
    end
r = [r(2:32) macstream(i)];
end

output=a;


end