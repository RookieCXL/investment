function [ label ] =judge_ma_rule3(t, price,days_average,down_length,scale)
%UNTITLED7 此处显示有关此函数的摘要
%   按照规则3进行判断是不是买入点
%t时刻股价大于t-1时刻股价，之前的连续下降阶段小于down_length，并且t时刻股价/均价偏离度达到1+scale以上
label=0;%初始标记信号不明确
cout_down=0;
if(price(t)>price(t-1)&&price(t-1)>days_average(t-1))
    t=t-1;
    while(t>0&&t>=20)
        if(price(t)<price(t-1))
            cout_down=cout_down+1;
        else
            break
        end
        t=t-1;
    end
    if(cout_down>=1&&cout_down<=down_length&&(price(t)>days_average(t)*(1+scale)))
        label=1;
    end
end


end

