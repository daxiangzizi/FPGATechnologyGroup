close all;
clear;
clc;
% ��ʼ��
die = 16;%��������
jiao = zeros(die,1);%ÿ����ת�ĽǶ�
cos_value = zeros(die,1);%ÿ����ת�ĽǶȵ�����ֵ
K = zeros(die,1);%����ֵ��NԪ�˻�
K_1 = zeros(die,1);%����ֵ��NԪ�˻��ĵ���
for i = 1 : die
    a = 2^(-(i-1));
    jiao(i) = atan(a);
    cos_value(i) = cos(jiao(i));
    if( i == 1)
        K(i) = cos_value(i);
        K_1(i) = 1/K(i);
    else
        K(i) = K(i-1)*cos_value(i);
        K_1(i) = 1/K(i);
    end
end
jiao = vpa(rad2deg(jiao)*256,10) 
cos_value = vpa(cos_value,10)
K = vpa(K,10)
K_1 = vpa(K_1,10)
