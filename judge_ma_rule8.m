function [ label ] =judge_ma_rule8(t, price,days_average,up_length,scale,scale0)
%UNTITLED7 此处显示有关此函数的摘要
%   按照规则8进行判断是不是买入点
%经历长达up_length以上的大幅上涨（每日上涨幅度大于scale），并且股价/均价大于scale0，卖出点
label=0;%初始标记信号不明确
cout_up=0;
if(price(t)>price(t-1))
    t=t-1;
    while(t>0&&t>=20)
        if(price(t)>price(t-1)*(1+scale)&&(price(t)/days_average(t)>price(t-1)/days_average(t-1)))
            cout_up=cout_up+1;
        else
            break
        end
        t=t-1;
    end
end
    if(cout_up>=up_length&&(price(t+cout_up)/days_average(t+cout_up)>(1+scale0)))
        label=-1;
    end


end