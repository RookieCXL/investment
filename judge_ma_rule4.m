function [ label ] =judge_ma_rule4(t, price,days_average,down_length,scale)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���4�����ж��ǲ��������
%�ɼۺ;��������µ����ȴ���scale���µ�ʱ�䳤�ȴ���down_length�����ҹɼ�tʱ�̴���t-1ʱ�̣���ô��Ϊtʱ������
label=0;%��ʼ����źŲ���ȷ
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

