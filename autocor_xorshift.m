close all;
clear all;
clc;

x=xlsread('C:\Users\������\Desktop\1_����_������������\������\111.xlsx');
x=x';
%% ���� �� ������������
figure(1);
ne_chet=x(1,1:2:end);
chet=x(1,2:2:end);

plot(chet,ne_chet,'black*');
 title('���� �� ������������ xorshit');
%% ��������������
 G  = autokorr( x );
 figure(2)
 plot(G);
 title('������������������ ������� xorshit');
 %% ������� ����
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
 title('1 ������ xorshit');
 
 subplot(2,3,2)
 plot(G2,'g');
  title('2 ������� xorshit');
  
   subplot(2,3,3)
 plot(G3,'m');
  title('3 ������� xorshit');
  
  subplot(2,3,4)
 plot(chet1,ne_chet1,'r*');
  title('1 ������ xorshit');
  
  subplot(2,3,5)
 plot(chet2,ne_chet2,'g*');
  title('2 ������� xorshit');
  
  subplot(2,3,6)
 plot(chet3,ne_chet3,'m*');
 title('3 ������� xorshit');
 
 
 
 figure(4)
 subplot(2,1,1)
 plot(G1,'r');
 title('1 ������ xorshift');
 grid on
 
subplot(2,1,2)
plot(chet1,ne_chet1,'r*');
  title('1 ������ xorshift');
  grid on

  figure(5)
 subplot(2,1,1)
 plot(G2,'g');
 title('2 ������� xorshift');
 grid on
 
subplot(2,1,2)
plot(chet2,ne_chet2,'g*');
  title('2 ������� xorshift');
  grid on


figure(6)
 subplot(2,1,1)
 plot(G3,'m');
 title('3 ������� xorshift');
 grid on
 
subplot(2,1,2)
plot(chet3,ne_chet3,'m*');
  title('3 ������� xorshift');
  grid on
