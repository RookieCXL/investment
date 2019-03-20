function [ label ] =judge_ma_rule4(t, price,days_average,down_length,scale)
%UNTITLED7 此处显示有关此函数的摘要
%   按照规则4进行判断是不是买入点
%股价和均价连续下跌幅度大于scale，下跌时间长度大于down_length，并且股价t时刻大于t-1时刻，那么认为t时刻买入
label=0;%初始标记信号不明确
cout_down=0;
if(price(t)>price(t-1))
    t=t-1;
    while(t>0&&t>=20)
        if(price(t)<price(t-1)*(1-scale)&&days_average(t)<days_average(t-1))
            cout_down=cout_down+1;
        else
            break
        end
        t=t-1;
    end
end
    if(cout_down>=down_length&&price(t)>days_average(t))
        label=1;
    end


end

