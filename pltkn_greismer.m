syms k;
for q = 2:5
    r = 1-1/q;
    data_sp = zeros(100000,2);
    data_plt = zeros(100000,2);
    count_sp = 1;
    count_plt = 1;
    
   for n = 8:25
       for d=(floor(r*n)+1):n
           t = floor((d-1)/2);
           sp = (q^n)/symsum(nchoosek(n,k)*(q-1)^k,0,t);
           data_sp(count_sp,1) = d/n;
           data_sp(count_sp,2) = sp;
           count_sp=count_sp+1;
           
           if (d>r*n)
               pltkn = d/(d-r*n);
               data_plt(count_plt,1) = d/n;
               data_plt(count_plt,2) = pltkn;
               count_plt=count_plt+1;
           end
       end
   end
   
   figure;
   scatter(data_sp(1:count_sp,1),data_sp(1:count_sp,2),'g')
   hold on
   scatter(data_plt(1:count_plt,1),data_plt(1:count_plt,2),'b')
   title(['q = ',num2str(q)])
   legend('Sphere Packing','Plotkin','Location','southwest');
   xlabel('Relative Distance (d/n)');
   ylabel('Bound');
end