% 已知线性模型求值
clc
clear
sheet = 2; % 读取表中第sheet张sheet
[num,txt]= xlsread('data.xlsx', sheet);
% 读取数据，文字全部记为NaN
x = zeros(28,30)
for i = 1:28;
    for j = [1,2,7,8,9,10,11,12,13,15,17,20,22,23,24,27,29];
        x(i,j) = num(i+32,j);
        y(i) = 0.307*x(i,1)+0.692*x(i,2)-0.376*x(i,7)-...
        0.236*x(i,8)+0.838*x(i,9)+0.189*x(i,10)+...
        1.066*x(i,11)+0.178*x(i,12)-0.452*x(i,13)...
        +0.818*x(i,15)-1.040*x(i,17)+0.653*x(i,20)...
        +1.247*x(i,22)+0.832*x(i,23)+1.179*x(i,24)...
        +0.177*x(i,27)-0.537*x(i,29);
    end
end
y

