function [ label] =  judge_invest_dot_with_ma(t,label0,days, price,days_average)
%UNTITLED6 此处显示有关此函数的摘要
%   判断当前时间t是否是买入点或者卖出点，输出买卖信号
label=0;
label1=judge_ma_rule1(t, price,days_average,2,3,0.0005,0.00094);
label2=judge_ma_rule2(t, price,days_average,3,25,0.04);
label3=judge_ma_rule3(t, price,days_average,3,0.06);
label4=judge_ma_rule4(t, price,days_average,3,0.02);
label5=judge_ma_rule5(t, price,days_average,3,6,0.0005,0.0025);
label6=judge_ma_rule6(t, price,days_average,4,4);
label7=judge_ma_rule7(t, price,days_average,4,5);
label8=judge_ma_rule8(t, price,days_average,5,0.02);
if(label1||label2||label3||label4)
    label=1;
end
if((label5==-1)||(label6==-1)||(label7==-1)||(label8==-1))
    label=-1;
end





end

