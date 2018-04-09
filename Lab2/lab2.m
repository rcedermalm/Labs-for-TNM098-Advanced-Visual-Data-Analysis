filename = "data.tsv";
data = tdfread(filename, " ");
data = data.x0xEF0xBB0xBFRecordingTimestamp_FixationIndex_GazeEventDuration;

%% Total points
x = data(:,5);
y = data(:,6);
gaze_dur = data(:,3);
time_stamp = data(:,1);
figure
scatter(x,y, gaze_dur ,time_stamp, 'filled', 'MarkerFaceAlpha',.2);
axis([0 1600 0 1000])
    
%% Total points per minute
c1 = 1; c2 = 1; c3 = 1; c4 = 1; c5 = 1;
for i = 1:length(data)
    if(time_stamp(i) < 60000)
        time_data_m1(c1, :) = data(i,:);
        c1 = c1+1;
    elseif(time_stamp(i) < 2*60000)
        time_data_m2(c2, :) = data(i,:);
        c2 = c2+1;
    elseif(time_stamp(i) < 3*60000)
        time_data_m3(c3, :) = data(i,:);
        c3 = c3+1;
    elseif(time_stamp(i) < 4*60000)
        time_data_m4(c4, :) = data(i,:);
        c4 = c4+1;
    else
        time_data_m5(c5, :) = data(i,:);
        c5 = c5+1;
    end
    
end

figure
ax1 = subplot(3,2,1);
scatter(ax1, time_data_m1(:,5),time_data_m1(:,6), time_data_m1(:,3) ,time_data_m1(:,1), 'filled', 'MarkerFaceAlpha',.2);
title("0-1 minute")
axis([0 1600 0 1000])
ax2 = subplot(3,2,2);
scatter(ax2, time_data_m2(:,5),time_data_m2(:,6), time_data_m2(:,3) ,time_data_m2(:,1), 'filled', 'MarkerFaceAlpha',.2);
title("1-2 minute")
axis([0 1600 0 1000])
ax3 = subplot(3,2,3);
scatter(ax3, time_data_m3(:,5),time_data_m3(:,6), time_data_m3(:,3) ,time_data_m3(:,1), 'filled', 'MarkerFaceAlpha',.2);
title("2-3 minute")
axis([0 1600 0 1000])
ax4 = subplot(3,2,4);
scatter(ax4, time_data_m4(:,5),time_data_m4(:,6), time_data_m4(:,3) ,time_data_m4(:,1), 'filled', 'MarkerFaceAlpha',.2);
title("3-4 minute")
axis([0 1600 0 1000])
ax5 = subplot(3,2,5);
scatter(ax5, time_data_m5(:,5),time_data_m5(:,6), time_data_m5(:,3) ,time_data_m5(:,1), 'filled', 'MarkerFaceAlpha',.2);
title("4-5 minute")
axis([0 1600 0 1000])


%% Animation
color = jet(length(time_stamp));
figure
for i=1:length(time_stamp)
    hold on
    scatter(x(i),y(i),[],color(i, :),'filled', 'MarkerFaceAlpha',.2);
    axis([0 1600 0 1000])
    pause_time = gaze_dur(i)/1000;
    pause(pause_time)
end