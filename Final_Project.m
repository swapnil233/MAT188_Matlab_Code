clear all;
clc;

% Patient 1
load('ecg1.mat');
plot(time, ecg);
xlabel ('Time (s)'); 
ylabel('ECG Recording'); 
title('Patient 1');
axis([0 6 -.4 1.2]);

rWaveCounter = 0;
for i=1:length(marker)
    if marker(i)==3
        rWaveCounter = rWaveCounter+1;
    end
end
p1_HeartRate = rWaveCounter/(time(end)/60) %time(end) gives total time

if p1_HeartRate>100 
    fprintf('Patient has Tachycardia.')
elseif p1_HeartRate >=60
    fprintf('Patient has a normal heart rate.')
elseif p1_HeartRate<60
    fprintf('Patient is Bradycardic.');
end

% Patient 2
load('ecg2.mat');
figure
plot(time, ecg);
xlabel ('Time (s)'); 
ylabel('ECG Recording'); 
title('Patient 2');
axis([0 6 -.4 1.2]);

rWaveCounter = 0;
for i=1:length(marker)
    if marker(i)==3
        rWaveCounter = rWaveCounter+1;
    end
end
p2_HeartRate = rWaveCounter/(time(end)/60) %time(end) gives total time

if p2_HeartRate>100 
    fprintf('Patient has Tachycardia.')
elseif p2_HeartRate >=60
    fprintf('Patient has a normal heart rate.')
elseif p2_HeartRate<60
    fprintf('Patient is Bradycardic.');
end

% Patient 3
load('ecg3.mat');
figure
plot(time, ecg);
xlabel ('Time (s)'); 
ylabel('ECG Recording'); 
title('Patient 3');
axis([0 6 -.4 1.2]);

rWaveCounter = 0;
for i=1:length(marker)
    if marker(i)==3
        rWaveCounter = rWaveCounter+1;
    end
end
p3_HeartRate = rWaveCounter/(time(end)/60) %time(end) gives total time

if p3_HeartRate>100 
    fprintf('Patient has Tachycardia.')
elseif p3_HeartRate >=60
    fprintf('Patient has a normal heart rate.')
elseif p3_HeartRate<60
    fprintf('Patient is Bradycardic.');
end