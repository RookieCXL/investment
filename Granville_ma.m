%zz500数据放环境下，直接运行，根据格兰维尔法则判别买入卖出点
zz500 = csvread('zz500.csv',3,0);
days=zz500(:,1);
price=zz500(:,5);
day_length=length(days);
days_average=zeros(day_length,1);

for i=20:day_length
    days_average(i)=(twenty_days_avg(price(i-19:i)));
end
label=zeros(1,day_length);
for i=20:day_length
    label(i)=judge_invest_dot_with_ma(i,label,days,price,days_average);
end

figure(1)
hold on;
grid on;
line1=plot(days(20:day_length),price(20:day_length));
line2=plot(days(20:day_length),days_average(20:day_length),'k--');
for i=1:day_length
    if(label(i)==1)
        dot1=plot(days(i),price(i),'r*');
    elseif(label(i)==-1)
        dot2=plot(days(i),price(i),'g*');
    end
end
legend([line1,line2,dot1,dot2],'Close price','Twenty-days-average','Buying point','Sell point');