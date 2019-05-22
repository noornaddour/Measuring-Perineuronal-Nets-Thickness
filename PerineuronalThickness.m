clc; clear all
t2 = 1
t3 = 1
formatSpec = 'Values%d.csv' %write down the common name of your files.
D = dir ;
[~,ndx] = natsortfiles({D.name}); % indices of correct order
D = D(ndx); % sort structure using indices
t1 = 0
XDiffperValfile = zeros(1,2)
x = zeros(1,4)
y = zeros(1,4)
AvgXDiffperCell = nan(1,8)

k = 3 %manually change this starting from 3. this takes the number of cell
%being quantified. example: 3 cells in one image, k=3 is 1st cell, k=4 is
%2nd... 
currD = D(k).name;

fList = dir(currD)


value = fList(3)
table = struct2table(value)
locationPath = table(:,2)
A = table2array(locationPath)
cd(A) %changes directory
for i = 1:4 %assuming you had 4 lines/plot lines per cell. this can change.
    str = sprintf(formatSpec, i)
    Values1 = csvread(str,1)
    ValuesX = Values1(:,1)
    ValuesY = Values1(:,2)
    plot(ValuesX,ValuesY);
    title(currD)
    ylabel(str)
    xlabel(str)
    grid on;
    %uiwait(msgbox('Click a point'));
    
    
    for t1 = [1,3]
        
        [x(t1),y(t1)] = ginput(1)
        [x(t1+1),y(t1+1)] = ginput(1)
        XDiffperValfile(t3) = x(t1+1) - x(t1)
        if isnan(AvgXDiffperCell(t2))
            AvgXDiffperCell(t2) = XDiffperValfile(t3)
        else  AvgXDiffperCell(t2+1) = XDiffperValfile(t3)
        end
        t3 = t3 +1
        t2 = t2 + 1
        
    end
    
end


Avg = mean(AvgXDiffperCell)

%take the avg to an excelsheet after each run for k. so you don't mix up
%the statistics for two cells.

