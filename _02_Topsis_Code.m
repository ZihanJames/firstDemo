%��һ��
load Topsis_data.mat %����mat����
%�ڶ���
[n,m]=size(X)
disp(['����' num2str(n) '�����۶���,' num2str(m) '������ָ��']);
Judge = input(['��' num2str(m) '��ָ���Ƿ���Ҫ�������򻯴�����Ҫ������1������Ҫ����0:']);
if Judge==1
    Position=input('��������Ҫ���򻯵��У������2��3��6������Ҫ������ô����Ҫ����[2,3,6]��');
    disp('��������Ҫ�������Щ�е�����1)��С��2���м���3��������');
    Type=input('���磺��2���Ǽ�С�ͣ���3���������ͣ����������м��ͣ�������[1,3,2]��');%2,1,3
    for i = 1 : size(Position,2)
        X(:,Position(i))=Positivization(X(:,Position(i)),Type(i),Position(i));
    end
    disp('���򻯺�ľ���X = ')
    disp(X)
end
%������:�����򻯺�ľ�����б�׼��
Z = X./repmat(sum(X.*X).^0.5, n, 1);
disp('��׼������Z = ')
disp(Z)
%���Ĳ�:���������ֵ�ľ������Сֵ�ľ��룬������÷�
D_P = sum([(Z-repmat(max(Z),n,1)).^2],2).^0.5;
D_N = sum([(Z-repmat(min(Z),n,1)).^2],2).^0.5;
S = D_N./(D_P+D_N);
disp('���ĵ÷�Ϊ��')
stand_S = S/sum(S)
[sorted_S,index] = sort(stand_S,'descend')
