function [ label ] =judge_ma_rule7(t, price,days_average,down_length,up_length)
%UNTITLED7 此处显示有关此函数的摘要
%   按照规则1进行判断是不是买入点
label=0;%初始标记信号不明确
cout_down=0;
cout_up=0;
while(t>0&&t>=20)
    if(price(t)<price(t-1))
        cout_down=cout_down+1;
        t=t-1;
    else
        break;
    end
end
while(t>0&&t>=20)
    if(price(t)>price(t-1))
        cout_up=cout_up+1;
        t=t-1;
    else
        break;
    end
end
t=(t+cout_up+cout_down);
if(price(t-cout_down)<days_average(t-cout_down))
    if(cout_down>=down_length&&cout_up>=up_length)
            label=-1;
end

end

