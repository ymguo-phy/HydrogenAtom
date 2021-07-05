
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     Spherical Harmonic Function Plot                    %
%                      2021/6  PHY104 Modern Physics                      %
%                          Written by Guo Yiming                          %
%                                PHY2009481                               %
%                                                                         %
%%%%%%%%%%%%%%%%%%%        wait for input ell,ml    %%%%%%%%%%%%%%%%%%%%%%%
ell=input('(ell)=');
m=input('(m_l)=');

%%%%%%%%%%%%%%%%%%%    Check if the put is valid     %%%%%%%%%%%%%%%%%%%%%%

if mod(ell,1)==0
elseif mod(ell,1)~=0 disp('ell not Integer[ FAIL ]'), return
elseif ell==0
end

if ell/abs(ell)==1
elseif ell==0
elseif ell/abs(ell)~=0 disp('ell is Negative[ FAIL ]'), return
end

if mod(m,1)==0
elseif mod(m,1)~=0 disp('m not integer[ FAIL ]'), return
end

if ell >= abs(m)
elseif abs(m) >= ell disp('wtf m>ell[ FAIL ]'), return
end

theta = [0 : 50]' *pi/50;
phi   =[-50 : 50]  *pi/50;
absm=abs(m);

%%%%%%%%%%%%%%%              Processing Data             %%%%%%%%%%%%%%%%%%
%  Create the surface of Re Ylm(theta,phi)/r^(l+1) = 1;
%  Solves for r on a theta, phi grid
gamma = 1/(ell+1);
all = legendre(ell, cos(theta));
if (ell == 0) all=all'; end
Y = all(absm+1, :)' * cos(absm*phi);
[A,B]=size(Y);
r = (abs(Y) .^ gamma); %

%%%%%%%%%%%%%%%%                 Ploting               %%%%%%%%%%%%%%%%%%%%
%Spherical2C
X =  r.* (sin(theta)*cos(phi)) ;
Y =  r.* (sin(theta)*sin(phi));
Z =  r.* (cos(theta)*ones(size(phi)));
C = r.^2;

figure('Name','Spherical Harmonic Function','NumberTitle','off')
surf(X, Y, Z,C,'FaceColor','texturemap','FaceAlpha',0.5,'FaceLighting','flat') %
shading interp
h=camlight('left');
grid on
axis on
axis equal
axis vis3d
ti=['l=' int2str(ell) ', m_l=' int2str(m)];
title(ti);



%  Rotate graph
%for i=1:60;
%	camorbit(1,0,'data',[0 0 1])
%    drawnow
%end


