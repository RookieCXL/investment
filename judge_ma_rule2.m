function [ label ] =judge_ma_rule2(t, price,days_average,low_length, up_length,scale)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���2�����ж��ǲ��������
label=0;%��ʼ����źŲ���ȷ
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



