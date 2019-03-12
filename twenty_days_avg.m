function [mean ] =twenty_days_avg( a1)
%UNTITLED3 此处显示有关此函数的摘要
%   输入五天的收盘价，取平均
mean=sum(a1(1:20))/20;

end

