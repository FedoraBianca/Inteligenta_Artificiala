function [ E ] = calculeazaEroare( t,su )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
E=mean((t-su).^2);

end

