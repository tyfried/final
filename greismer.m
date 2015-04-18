function [val] = greismer(n,q,d)
k=1;
val = q;
syms a;
while(1)
   temp = symsum(ceil(d/(q^a)),0,k-1);
   if n<temp
       return;
   else
       val = q^k;
       k=k+1;
   end
end

end