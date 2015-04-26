syms x;

q=2;

t = 0:.1:.5;
t2 = 0:.1:1;
r = 1-1/q;

y1 = 1-t;
y2 = 1-t/r;
plot(t,y1,'color','r');
hold on;
plot(t,y2,'color','b');
xlabel('\delta');
ylabel('\alpha_q(\delta)');
legend('Asymptotic Plotkin','Asymptotic Singleton');