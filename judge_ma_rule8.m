function [ label ] =judge_ma_rule8(t, price,days_average,up_length,scale,scale0)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   ���չ���8�����ж��ǲ��������
%��������up_length���ϵĴ�����ǣ�ÿ�����Ƿ��ȴ���scale�������ҹɼ�/���۴���scale0��������
label=0;%��ʼ����źŲ���ȷ
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