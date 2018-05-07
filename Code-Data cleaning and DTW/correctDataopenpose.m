clc;
clear;
person1 = 'Video32PersonA.csv';
p1 = csvread(person1);
person2 = 'Video32PersonB.csv';
p2 = csvread(person2);
person3 = 'Video32PersonC.csv';
p3 = csvread(person3);
newPerson1 = 'video32PersonAcorrected.csv';
newPerson2 = 'video32PersonBcorrected.csv';
newPerson3 = 'video32personCcorrected.csv';

[rows,columns] = size(p1);
for i = 1:rows
     m1 = p1(i,:);
     m2 = p2(i,:);
     m3 = p3(i,:);
     %check on column umber 4 for each row of each file
    if((p1(i,4)> 450))
        dlmwrite(newPerson1,m1,'-append');
    elseif((p1(i,4)< 450) && p1(i,4)>300)
        dlmwrite(newPerson2,m1,'-append');
    elseif((p1(i,4)< 300) )
        dlmwrite(newPerson3,m1,'-append');
    end
    
    if((p2(i,4)> 450) )
        dlmwrite(newPerson1,m2,'-append');
    elseif((p2(i,4)< 450) &&  p2(i,4)>300)
        dlmwrite(newPerson2,m2,'-append');
    elseif((p2(i,4)< 300))
        dlmwrite(newPerson3,m2,'-append');
    end
    
    if((p3(i,4)> 450) )
        dlmwrite(newPerson1,m3,'-append');
    elseif((p3(i,4)< 450) && p3(i,4)>300)
        dlmwrite(newPerson2,m3,'-append');
    elseif((p3(i,4)< 300) )
        dlmwrite(newPerson3,m3,'-append');
    end
end