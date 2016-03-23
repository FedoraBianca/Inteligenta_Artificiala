function ploteazaGraficPolinom( p )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x=linspace(0,2*pi); %returneaza un vector de 100 de elemente egal depatate ce acopera intervalul[0,2pi]
y=polyval(p,x);
plot(x,y,'r');

end

