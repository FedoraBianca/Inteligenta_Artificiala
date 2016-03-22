function [ x,u ] = genereazaExemple( n,f,sigma )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes her
x=rand(n,1)*2*pi ;
zgomot=sigma*randn(n,1);
u=f(x)+zgomot;


end

