# StainedCellCounting
COP3053C final project

This project aims to count cells from a given image in Matlab. It consists of 3 Matlab files, 2 of them being functions


### OVERVIEW OF VARIABLE NAMES

I: stores the image of cells that wants to be counted

fudgeFactor: _slider value_ - input from user, allows for adjustment of the threshold value used for edge detection, thereby adjusting what edges are in the output

se90l: _slider value_ - input from user, allows for adjustement of teh length of the line used for vertical dilation

se01: _slider value_ - input from user, allows for adjustement of teh length of the line used for horizontal dilation

I1: stores the grayscale version of I

Iedge: stores output of edge function which finds edges in intensity (binary image)

thresh: threshold value given by edge function

se90: vertical dilation

se0: horizontal dilation

Idilate: stores output of dilate function, which adds pixels to the boundaries of an object, making it more visibile

Ifill: stores the filled in version of Idilate (fill in the holes)

seD: for smoothing the cells

Ifinal: stores the output of erode function, which smooths the output

total: stores the output of bwconncomp, which is a data structure containing various information about the image. Bwconncomp finds and counts the connected components in an image, which in this case is the cells.

num: extracts the number of counted objects from total



## **Project.mlx**
This is the main file for our project that users will interact with to count their cells. There are 3 sliders for the variables fudgeFactor, se90l, and se0l. This allows for users to adjust the edge detection ability of the program to get their desired outcome. Users will input the name of the file they want to count cells in.

## **CellCount.m**
Inputs: the variables I
Outputs: the variables

## **IDisplay.m**
Inputs: the variables
Outputs:
