function [ label ] =judge_ma_rule2(t, price,days_average,low_length, up_length,scale)
%UNTITLED7 此处显示有关此函数的摘要
%   按照规则2进行判断是不是买入点
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



