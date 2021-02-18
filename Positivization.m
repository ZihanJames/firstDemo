function [posit_x] = Positivization(x,type,i)
    if type == 1
        disp(['第' num2str(i) '列是极小型,正在正向化'])
        posit_x = Min2Max(x);
        disp(['第' num2str(i) '列极小型正向化处理已完成'])
        disp('~~~~~~~~~~~~~~~~~~~分割线~~~~~~~~~~~~~~~~~~~~~~~')
    elseif type == 2
        disp(['第' num2str(i) '列是中间型'])
        best = input('请输入最佳的那个值：');
        posit_x = Mid2Max(x,best);
        disp(['第' num2str(i) '列中间正向化型处理已完成'])
        disp('~~~~~~~~~~~~~~~~~~~分割线~~~~~~~~~~~~~~~~~~~~~~~')
    elseif type == 3
        disp(['第' num2str(i) '列是区间型'])
        a = input('请输入下界：');
        b = input('请输入上界：');
        posit_x = Inter2Max(x,a,b);
        disp(['第' num2str(i) '列区间型正向化处理已完成'])
        disp('~~~~~~~~~~~~~~~~~~~分割线~~~~~~~~~~~~~~~~~~~~~~~')
    else
        disp('没有这种类型指标，请检查Type向量是否有123之外的值')

    end
end
