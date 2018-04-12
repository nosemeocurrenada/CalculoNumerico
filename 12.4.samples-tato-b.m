
%------------------------
% f=@(t,y)[y(2) (1-y(1).^2).*y(2)-y(1)];
%
% [t,y] = rk4(f,0,10,[1;0]',100);
%
% plot(t,y(:,1))
% plot(t,y(:,2))
% plot(t,y(:,1),t,y(:,2))
% plot(y(:,1),y(:,2))
%
%------------------------

function [t,y] = rk4(f,t0,tf,y0,n)

	h = (tf - t0)/n;
	t = zeros(1,n+1);
	y = zeros(n+1, length(y0));
	t(1) = t0;
	y(1,:) = y0;
	for j=1:n
		K1 = h*f(t(j),y(j,:));
		K2 = h*f(t(j)+h/2,y(j,:)+K1./2);
		K3 = h*f(t(j)+h/2,y(j,:)+K2./2);
		K4 = h*f(t(j)+h,y(j,:)+K3);

		y(j+1,:) = y(j,:) + (K1 + 2*K2 + 2*K3 + K4)./6;
		t(j+1) = t0 + h*j;
	end
end

hold on;
[t,y] = rk4(f,0,10,[1;0]',500);
 plot(t,y(:,1),t,y(:,2))
 plot(y(:,1),y(:,2))
