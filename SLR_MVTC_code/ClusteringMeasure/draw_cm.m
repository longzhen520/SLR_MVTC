function draw_cm(mat,tick,num_class)
%%
%  Matlab code for visualization of confusion matrix;
%  Parameters��mat: confusion matrix;
%              tick: name of each class, e.g. 'class_1' 'class_2'...
%              num_class: number of class
%
%  Author�� Page( ا��)  
%           Blog: www.shamoxia.com;  
%           QQ:379115886;  
%           Email: peegeelee@gmail.com
%%
imagesc(1:num_class,1:num_class,mat);            %# in color
colormap(flipud(gray));  %# for gray; black for large value.

textStrings = num2str(mat(:),'%0.2f');  
textStrings = strtrim(cellstr(textStrings)); 
[x,y] = meshgrid(1:num_class); 
hStrings = text(x(:),y(:),textStrings(:), 'HorizontalAlignment','center');
midValue = mean(get(gca,'CLim')); 
textColors = repmat(mat(:) > midValue,1,3); 
set(hStrings,{'Color'},num2cell(textColors,2));  %# Change the text colors

 set(gca,'xticklabel',tick,'XAxisLocation','top','fontsize',16,'fontname','Times');
set(gca, 'XTick', 1:num_class, 'YTick', 1:num_class);
set(gca,'yticklabel',tick,'fontsize',16,'fontname','Times');
rotateXLabels(gca, 45 );% rotate the x tick
% set(gca,'linewidth',1,'fontsize',18,'fontname','Times');


