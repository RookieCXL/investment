function [ label ] =judge_ma_rule3(t, price,days_average,down_length,scale)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���3�����ж��ǲ��������
%tʱ�̹ɼ۴���t-1ʱ�̹ɼۣ�֮ǰ�������½��׶�С��down_length������tʱ�̹ɼ�/����ƫ��ȴﵽ1+scale����
label=0;%��ʼ����źŲ���ȷ
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

