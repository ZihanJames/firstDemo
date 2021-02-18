%第一步
load Topsis_data.mat %导入mat数据
%第二步
[n,m]=size(X)
disp(['共有' num2str(n) '个评价对象,' num2str(m) '个评价指标']);
Judge = input(['这' num2str(m) '个指标是否需要经过正向化处理需要请输入1，不需要输入0:']);
if Judge==1
    Position=input('请输入需要正向化的列，例如第2，3，6三列需要处理那么你需要输入[2,3,6]：');
    disp('请输入需要处理的这些列的类型1)极小型2）中间型3）区间型');
    Type=input('例如：第2列是极小型，第3列是区间型，第六列是中间型，就输入[1,3,2]：');%2,1,3
    for i = 1 : size(Position,2)
        X(:,Position(i))=Positivization(X(:,Position(i)),Type(i),Position(i));
    end
    disp('正向化后的矩阵X = ')
    disp(X)
end
%第三步:对正向化后的矩阵进行标准化
Z = X./repmat(sum(X.*X).^0.5, n, 1);
disp('标准化矩阵Z = ')
disp(Z)
%第四步:计算与最大值的距离和最小值的距离，并算出得分
D_P = sum([(Z-repmat(max(Z),n,1)).^2],2).^0.5;
D_N = sum([(Z-repmat(min(Z),n,1)).^2],2).^0.5;
S = D_N./(D_P+D_N);
disp('最后的得分为：')
stand_S = S/sum(S)
[sorted_S,index] = sort(stand_S,'descend')
