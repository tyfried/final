syms k;
for q = 2:2
    r = 1-1/q;
    %data_sp_gr = zeros(100000,3);
    data_plt = zeros(100000,3);
 
    %count_sp = 1;
    count_plt = 1;
    
   for n = 6:40
       for d=n/2:n
           t = floor((d-1)/2);
           sp = (q^n)/symsum(nchoosek(n,k)*(q-1)^k,0,t);
           
           pltkn = d/(d-r*n);
           data_plt(count_plt,1) = n;
           data_plt(count_plt,2) = d;
           data_plt(count_plt,3) = sp;
           count_plt=count_plt+1;
       end
   end
    
   tri = delaunay(data_plt(1:count_plt,1),data_plt(1:count_plt,2));
   
   figure;
   trisurf(tri,data_plt(1:count_plt,1),data_plt(1:count_plt,2),data_plt(1:count_plt,3));
   xlabel('n');
   ylabel('d');
   zlabel('bound');
   axis vis3d
   
%    figure;
%    scatter(data_sp_gr(1:count_sp,1),data_sp_gr(1:count_sp,2),'g')
%    hold on
%    scatter(data_plt(1:count_plt,1),data_plt(1:count_plt,2),'b')
%    hold on
%    scatter(data_sp_gr(1:count_sp,1),data_sp_gr(1:count_sp,3),'r')
%    title(['q = ',num2str(q)])
%    legend('Sphere Packing','Plotkin','Greismer','Location','southwest');
%    xlabel('Relative Distance (d/n)');
%    ylabel('Bound');
end