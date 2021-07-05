
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Radial Wave Function Plot                        %
%                      2021/6  PHY104 Modern Physics                      %
%                          Written by Guo Yiming                          %
%                                PHY2009481                               %
%                                                                         %
%%%%%%%%%%%%%%%%%%%        wait for input ell,ml    %%%%%%%%%%%%%%%%%%%%%%%
n=input('(n)=');
ell=input('(ell)=');
%%%%%%%%%%%%%%%%%%%    Check if the put is valid     %%%%%%%%%%%%%%%%%%%%%%
if mod(n,1)==0
elseif mod(n,1)~=0 disp('n not Integer[ FAIL ]'), return
elseif n==0
end

if n/abs(n)==1
elseif n==0
elseif n/abs(n)~=0 disp('n is Negative[ FAIL ]'), return
end

if mod(ell,1)==0
elseif mod(ell,1)~=0 disp('ell not Integer[ FAIL ]'), return
elseif ell==0
end

if ell/abs(ell)==1
elseif ell==0
elseif ell/abs(ell)~=0 disp('ell is Negative[ FAIL ]'), return
end


%%%%%%%%%%%%%%%     Create the Sample Point Set     %%%%%%%%%%%%%%%%%%%%%%%
roa = [0:50]*40/50;

%%%%%%%%%%%%%%%           Processing Data             %%%%%%%%%%%%%%%%%%%%%
L_coeffs = LaguerreGen(n-ell-1, 2*ell+1); %Calculate the LaguerrePolynomial
rho = 2/n*roa;   %\rho=\frac{2r}{na} a is bohr radius
sss=sqrt(factorial(n-ell-1)/(2*n*n*n*n*factorial(n+ell))); %the coefficent
R = sss*polyval( L_coeffs, rho).* exp(-0.5*rho).*(rho).^ell;%main function
yr=R;   %create the plot set
xr=roa;
%%%%%%%%%%%%%%               Plotting                     %%%%%%%%%%%%%%%%%
% plot(xr,yr)
% ylim([-0.05 0.223])
% xlim([0 40])
% % 
N=400000;a=0.529;
rho1=40*rand(1,N);
Dr=sss*polyval( L_coeffs, rho1).* exp(-0.5*rho1).*(rho1).^ell;%main function;
M=max(Dr);
rho2=M*rand(1,N);
r=rho1(find(rho2<Dr));
n=length(r);
Q=2*pi*rand(1,n);
[X,Y]=pol2cart(Q,r);
plot(X,Y,'r.','marker','.','markersize',1)
axis equal
ylim([-40 40])
xlim([-40 40])