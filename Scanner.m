clc;
clear all;
filename='Test1.jpg';%File name of input image, filepath can be customized
img=imread(filename);%Read image
R=img(:,:,1);%Extract RGB and pixel information
G=img(:,:,2);
B=img(:,:,3);
[x,y,z]=size(img);

for i=1:x
    for j=1:y
        if ((R(i,j)>=100)&&(R(i,j)<=255)&&(G(i,j)<110)&&(B(i,j)<110))%Recognize red
            R(i,j)=255; %Assign again
            G(i,j)=70;
            B(i,j)=70;
        elseif ((R(i,j)<110)&&(G(i,j)>=100)&&(G(i,j)<=255)&&(B(i,j)<110))%Recognize green
            R(i,j)=70; %Assign again
            G(i,j)=255;
            B(i,j)=70;
        elseif ((R(i,j)<110)&&(G(i,j)<110)&&(B(i,j)>=100)&&(B(i,j)<=255))%Recognize blue
            R(i,j)=70; %Assign again
            G(i,j)=70;
            B(i,j)=255;
        else%Other areas
            %Gray = R*0.299 + G*0.587 + B*0.114    Gray-RGB conversion
            gray=R(i,j)*0.299+G(i,j)*0.587+B(i,j)*0.114;
            if gray>120  %Convert to white if exceeding the limit of gray
                R(i,j)=255;
                G(i,j)=255;
                B(i,j)=255;
            end
        end
    end
end
disp('Conversion completed');

for i=1:x
    disp(['Colour replacement',num2str(i/x*100),'%']);%Show progress
    for j=1:y
        res(i,j,1) = R(i,j);
        res(i,j,2) = G(i,j);
        res(i,j,3) = B(i,j);
    end
end
filepath=pwd;
cd('d:\Matlab Scanner')%Filepath can be customized
imwrite(res,'Scanned Test1.png');%Save the output image
cd(filepath)
disp('Scanned image saved');
