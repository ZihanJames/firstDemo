function [posit_x] = Positivization(x,type,i)
    if type == 1
        disp(['��' num2str(i) '���Ǽ�С��,��������'])
        posit_x = Min2Max(x);
        disp(['��' num2str(i) '�м�С�����򻯴��������'])
        disp('~~~~~~~~~~~~~~~~~~~�ָ���~~~~~~~~~~~~~~~~~~~~~~~')
    elseif type == 2
        disp(['��' num2str(i) '�����м���'])
        best = input('��������ѵ��Ǹ�ֵ��');
        posit_x = Mid2Max(x,best);
        disp(['��' num2str(i) '���м������ʹ��������'])
        disp('~~~~~~~~~~~~~~~~~~~�ָ���~~~~~~~~~~~~~~~~~~~~~~~')
    elseif type == 3
        disp(['��' num2str(i) '����������'])
        a = input('�������½磺');
        b = input('�������Ͻ磺');
        posit_x = Inter2Max(x,a,b);
        disp(['��' num2str(i) '�����������򻯴��������'])
        disp('~~~~~~~~~~~~~~~~~~~�ָ���~~~~~~~~~~~~~~~~~~~~~~~')
    else
        disp('û����������ָ�꣬����Type�����Ƿ���123֮���ֵ')

    end
end
