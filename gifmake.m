%--- make .gif picture for warming you---------%
clear all;
stepall=3;   % picture number
Delatime=0.001; % basic delaytime
for i=1:1:stepall
    picname=['Sketch',num2str(i,'%.0f'),'.png'];
   imshow(picname)
 % set(gcf,'outerposition',get(0,'screensize'));% matlab窗口最大化
    frame=getframe(gcf);  %获取整个窗口内容的图像
    im=frame2im(frame);   %制作gif文件，图像必须是index索引图像  
    [I,map]=rgb2ind(im,20);  %真彩色图像转换为索引图像,n颜色项数   
    if i==1
        imwrite(I,map,'Sketch.gif','gif', 'Loopcount',inf,'DelayTime',Delatime);%第一次必须创建！
    elseif i==stepall
        imwrite(I,map,'Sketch.gif','gif','WriteMode','append','DelayTime',Delatime+2);%最后一次延迟！
    else
        imwrite(I,map,'Sketch.gif','gif','WriteMode','append','DelayTime',Delatime);%中间每幅图间隔
    end  
    close all
end