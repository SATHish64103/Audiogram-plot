%% Audiogram data:
% right_ear and left_ear for mean threshold for right and left ear
% std_right_ear and std_left_ear for standard deviations
right_ear = [25 34 37 40 50 58];
left_ear = [38 40 47 50 52 68];
std_right_ear = [13 9 12 7 9 13];
std_left_ear = [9 9 9 7 9 6];

%% Potting parameters:
ticksforxaxis = (1:6);
h = axes;
errorbar(ticksforxaxis,right_ear,std_right_ear,'MarkerSize',10,"LineWidth",0.3,'Marker',"o",'Color','red')
hold on
errorbar(ticksforxaxis+0.1,left_ear,std_left_ear,'MarkerSize',10,'LineWidth',0.3,'Marker',"x",'Color','blue')
set(h,'Ydir','reverse');
xlim([0.5 6.5]);
ylim([-10 120]);
set(gca,'XTick',[1 2 3 4 5 6]);
set(gca, 'XTickLabel',{'0.25'; '0.5'; '1'; '2'; '4'; '8'});
set(gca,'ytick',(-10:10:120));
grid off
title('Hearing Impaired', 'fontsize',25');
ylabel('Threshold (dB HL)', 'fontsize', 20);
xlabel('Frequency (kHz)', 'fontsize', 20);
legend('Right ear','Left ear')