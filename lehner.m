close all;
clear all;
clc;
%% генертаор Лемера
tic; 
N=10000;
x=zeros(1,N-1);
x1=12345678;
x=[x1,x];
%c=0;
c=2^13+1109;%9301;
%b=7^5;
b=3^10+9752;%49297;
%p=(2^31)-1;%2^31 по словам
p=2^32;
for i=2:1:N
    
    
    x(1,i)=mod((x(1,i-1)*b+c),p);
    
        
end
t1=toc; 
display(t1);
%% тест на решетчатость
figure(1);
ne_chet=x(1,1:2:end);
chet=x(1,2:2:end);

plot(chet,ne_chet,'black*');
 title('тест на решетчатость Лемера');
 grid on

%% автокорреляция
 G  = autokorr( x );
 figure(2)
 plot(G);
 title('автокорееляционная функция Лемера');
 grid on

 %% младшие биты
 x1=mod(x,10);
 G1  = autokorr( x1 );
 ne_chet1=x1(1,1:2:end);
 chet1=x1(1,2:2:end);
 
 x2=mod(x,100);
 G2  = autokorr( x2 );
  ne_chet2=x2(1,1:2:end);
 chet2=x2(1,2:2:end);
 
 x3=mod(x,1000);
 G3  = autokorr( x3 );
 ne_chet3=x3(1,1:2:end);
 chet3=x3(1,2:2:end);
 
 figure(3)
 
  subplot(2,3,1)
 plot(G1,'r');
 title('1 разряд Лемера');
 grid on

 subplot(2,3,2)
 plot(G2,'g');
  title('2 разряда Лемера');
  grid on

   subplot(2,3,3)
 plot(G3,'m');
  title('3 разряда Лемера');
  grid on

  subplot(2,3,4)
 plot(chet1,ne_chet1,'r*');
  title('1 разряд Лемера');
  grid on

  subplot(2,3,5)
 plot(chet2,ne_chet2,'g*');
  title('2 разряда Лемера');
  grid on

  subplot(2,3,6)
 plot(chet3,ne_chet3,'m*');
 title('3 разряда Лемера');
 grid on

 figure(4)
 subplot(2,1,1)
 plot(G1,'r');
 title('1 разряд Лемера');
 grid on
 
subplot(2,1,2)
plot(chet1,ne_chet1,'r*');
  title('1 разряд Лемера');
  grid on

  figure(5)
 subplot(2,1,1)
 plot(G2,'g');
 title('2 разряда Лемера');
 grid on
 
subplot(2,1,2)
plot(chet2,ne_chet2,'g*');
  title('2 разряда Лемера');
  grid on


figure(6)
 subplot(2,1,1)
 plot(G3,'m');
 title('3 разряда Лемера');
 grid on
 
subplot(2,1,2)
plot(chet3,ne_chet3,'m*');
  title('3 разряда Лемера');
  grid on

%%взять 2 младшие разряды и построить тест на решетчатость и посмотреть
%%зависимость для лемера и решетка