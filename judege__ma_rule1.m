function [ output_args ] = judge_ma_rule1(t, price,days_average,down_length, horizontal_length,scale)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���1�����ж��ǲ��������
label=0;%��ʼ����źŲ���ȷ
cout_down=0;
cout_horizontal=0;
while(t>0):
    if((days_average(t)-days_average(t-1))/days_average(t)<scale)
        cout_horizontal=cout_horizontal+1;
        t=t-1;
    else
        break;
    end
end
while(t>0):
    if((days_average(t)-days_average(t-1))/days_average(t)>scale)
        cout_down=cout_down+1;
        t=t-1;
    else
        break;
    end
end
if(cout_down>down_length&&cout_horizonta>horizontal_lengthl)
    if(price(t)>days_average(t)&&price(t-1)>days_average(t-1))
        label=1;
    end
end
end

