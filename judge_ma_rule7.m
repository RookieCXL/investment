function [ label ] =judge_ma_rule7(t, price,days_average,down_length,up_length)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���1�����ж��ǲ��������
label=0;%��ʼ����źŲ���ȷ
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

