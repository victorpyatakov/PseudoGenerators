function [ R ] = autokorr( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


norm=sum(x)/length(x);

norm_x=x-norm;

R=zeros(1,length(x)+1);
X=zeros(1,length(x));
for k=0:1:length(x)
   for  i=1:1:length(x)+1
       if i+k>length(x)
           X(i)=0;
       else
           X(i)=norm_x(i)*norm_x(i+k);
       end
       
   end
   R(k+1)=sum(X);

end

end

