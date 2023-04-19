function[Ifinal,total]=CellCount(I,fudgeFactor,se90l,se0l)
I1=rgb2gray(I);
[~,thresh]=edge(I1,"sobel");
Iedge=edge(I1,"sobel",fudgeFactor*thresh);
se90=strel('line',se90l,90);
se0=strel('line',se0l,0);
Idilate=imdilate(Iedge,[se90,se0]);
Ifill=imfill(Idilate,'holes');
seD=strel("diamond",1);
Ifinal=imerode(Ifill,seD); % lots of imerodes to get rid of small dots picked up
Ifinal=imerode(Ifinal,seD);
Ifinal=imerode(Ifinal,seD);
Ifinal=imerode(Ifinal,seD);
total=bwconncomp(Ifinal);
end
