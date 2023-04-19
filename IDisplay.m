function IDisplay(I,Ifinal,total)
subplot(1,2,1)
imshow(I);
title('Original Image')
subplot(1,2,2)
imshow(labeloverlay(I,Ifinal));
num=total.NumObjects;
title("Overlayed Image, Cell Count:"+ num)
end
