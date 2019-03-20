function [ label ] =judge_ma_rule2(t, price,days_average,low_length, up_length,scale)
%UNTITLED7 此处显示有关此函数的摘要
%   按照规则2进行判断是不是买入点
%计算得到t时刻之前的高于阈值scale的连续下降阶段的长度和高于阈值的连续上升阶段，下降阶段长度小于设定的low_length，
%连续上升阶段大于up_pength，并且t时刻均线上涨，t-1时刻均线也上涨，认为买入点
label=0;%初始标记信号不明确
cout_low=0;
cout_up=0;
while(t>0&&t>=20)
    if(price(t)>days_average(t)*(1-scale)&&price(t)<days_average(t))
        cout_low=cout_low+1;
        t=t-1;
    else
        break;
    end
end
while(t>0&&t>=20)
    if(price(t)>=days_average(t)*(1+scale))
        cout_up=cout_up+1;
        t=t-1;
    else
        break;
    end
end
t=t+cout_up+cout_low;
if(cout_low>=1&&cout_low<=low_length&&cout_up>=up_length)
    if(days_average(t)>days_average(t-1)&&days_average(t-1)>days_average(t-2))
        label=1;
    end
end


end



