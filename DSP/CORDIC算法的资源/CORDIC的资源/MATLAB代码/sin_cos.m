close all;
clear;
clc;
% ��ʼ��
die = 16;%��������
x = zeros(die+1,1);
y = zeros(die+1,1);
z = zeros(die+1,1);
x(1) = 0.607253;%��ʼ����
z(1) = pi/4;%����ǶȦ�
%��������
for i = 1:die
    if z(i) >= 0
        d = 1;
    else
        d = -1;
    end
    x(i+1) = x(i) - d*y(i)*(2^(-(i-1)));
    y(i+1) = y(i) + d*x(i)*(2^(-(i-1)));
    z(i+1) = z(i) - d*atan(2^(-(i-1)));
end
cosa = vpa(x(17),10)
sina = vpa(y(17),10)
c = vpa(z(17),10)