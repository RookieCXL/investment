function [ label ] =judge_ma_rule4(t, price,days_average,down_length,scale)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���1�����ж��ǲ��������
label=0;%��ʼ����źŲ���ȷ
cout_down=0;
if(price(t)>price(t-1))
    t=t-1;
    while(t>0&&t>=20)
        if(price(t)<price(t-1)*(1-scale))
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

