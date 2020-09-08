clear all
%let XX = 60 (I.E 60%), let YY = 97 (I.E 97%)

mGrades = [62,60,71,80,83];
mCGPA = [1.7, 1.7, 2.7, 3.7, 3.7]; %corrisponding CGPA's from the website

cGrades = [92,55,60,97,79];
cCGPA = [4.0, 1.0, 1.7, 4.0, 3.3]; %corrisponding CGPA's from the website

mTotal = 0; cTotal = 0;

%calculating the CGPA average:
for i = 1:length(mCGPA) %both their lenghts are the same
    mTotal = mTotal + mCGPA(i);
    cTotal = cTotal + cCGPA(i);
end
mAvrg = mTotal/length(mGrades) %2.7
cAvrg = cTotal/length(cGrades) %2.8

%Empty string arrays which will hold the scholarships they get:
miecaScholarships = {};chiragScholarships = {};

%The scholarship(s) Mieca will get:
if mAvrg>=1.3 
    miecaScholarships{end+1} = "orange scholarship";
end
if mAvrg >=2.2
    miecaScholarships{end+1} = "blue scholarship";
end

%If he will get the yellow scholarship:
mCounter = 0;
for j = 1:length(mCGPA)
    if mCGPA(j)>2.3
        mCounter = mCounter + 1;
    end
end
if mCounter >=3 
    miecaScholarships{end+1} = "yellow scholarship";
end

%The scholarship(s) Chirag will get:
if cAvrg>=1.3 
    chiragScholarships{end+1} = "orange scholarship";
end
if cAvrg >=2.2
    chiragScholarships{end+1} = "blue scholarship";
end

%If he will get the yellow scholarship:
cCounter = 0;
for k = 1:length(cCGPA)
    if cCGPA(k)>2.3
       cCounter = cCounter + 1;
    end
end
if cCounter >=3 
    chiragScholarships{end+1} = "yellow scholarship";
end

miecaScholarships
chiragScholarships
%They both get all the scholarships 
    
    





