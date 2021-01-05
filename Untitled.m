

v=xlsread('C:\Users\Виктор\Desktop\1_курс_магистратура\окатов\111.xlsx');

m=autocorr(v);
y=0:0.1:1;
plot(m);