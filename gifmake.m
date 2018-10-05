%--- make .gif picture for warming you---------%
clear all;
stepall=3;   % picture number
Delatime=0.001; % basic delaytime
for i=1:1:stepall
    picname=['Sketch',num2str(i,'%.0f'),'.png'];
   imshow(picname)
 % set(gcf,'outerposition',get(0,'screensize'));% matlab�������
    frame=getframe(gcf);  %��ȡ�����������ݵ�ͼ��
    im=frame2im(frame);   %����gif�ļ���ͼ�������index����ͼ��  
    [I,map]=rgb2ind(im,20);  %���ɫͼ��ת��Ϊ����ͼ��,n��ɫ����   
    if i==1
        imwrite(I,map,'Sketch.gif','gif', 'Loopcount',inf,'DelayTime',Delatime);%��һ�α��봴����
    elseif i==stepall
        imwrite(I,map,'Sketch.gif','gif','WriteMode','append','DelayTime',Delatime+2);%���һ���ӳ٣�
    else
        imwrite(I,map,'Sketch.gif','gif','WriteMode','append','DelayTime',Delatime);%�м�ÿ��ͼ���
    end  
    close all
end