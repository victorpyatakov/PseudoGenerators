close all;
clear all;
clc;

x=ones(1,4);
X=zeros(1,4);
R=zeros(1,length(x)+1);

for k=0:1:length(x)
   for  i=1:1:length(x)+1
       if i+k>length(x)
           X(i)=0;
       else
           X(i)=x(i)*x(i+k);
       end
       
   end
   R(k+1)=sum(X);
   X=zeros(1,4);
end

plot(R);