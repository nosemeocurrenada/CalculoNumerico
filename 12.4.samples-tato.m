%tato
clear all
n = 50;
A=diag(ones(1,n-1),1)+diag(ones(1,n-1),-1)-2*diag(ones(1,n),0)
for i=1:n
	D(i)=pi*i/n;
end;
D=D'; %D traspuesta

S=sin(D);
B=(pi^2)/(n^2) * S;
U=A\B;
hold on;
plot(D,U,'*');
plot(D,-sin(D),'r');