clear all;close all;clc
fprintf('Secant Yöntemi kullanýlarak verilen denklemin f(x)=2*x-0.13/sqrt(5*x^0.5)) denklemini köklerini bulalým. \n\n');
fprintf('Baþlangýç noktasý [0.5, 3.0] ');
fprintf('\nwww.erhanbaran.com\n\n');

x1=0.5;
x0=3.0;
tol=1.0E-5;
fprintf('Iter    x2            abs(x2-x1)      \n')
for i = 1:100
    fx1=2*x1-0.13/sqrt(5*(x1^0.5));
    fx0=2*x0-0.13/sqrt(5*(x0^0.5));
    x2=x1-(fx1*(x1-x0))/(fx1-fx0);
    fprintf('\n%4.1f    %7.8f    %7.8f    %7.8f  \n\n',i,x2,abs(x2-x1));
    if abs(x2-x1)<tol
        break;
    end
    x0=x1;
    x1=x2;
end
fprintf('\n\n\n Kök deðerimiz: ');
fprintf('%7.8f ',x2)
