N=400000;a=0.529;
r1=5*rand(1,N);
Dr=4/a^3*r1.^2.*exp(-2/a*r1);
M=max(Dr);
r2=M*rand(1,N);
r=r1(find(r2<Dr));
n=length(r);
Q=2*pi*rand(1,n);
[X,Y]=pol2cart(Q,r);
plot(X,Y,'r.','marker','.','markersize',1)
axis equal
figure
r=0:0.01:5;
Dr=4/a^3*r.*2.*exp(-2/a*r);
plot(r,Dr)