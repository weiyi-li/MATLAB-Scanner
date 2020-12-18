# MATLAB-Scanner
## Introduction
This program is able to convert real document photo to a scanned copy with scanner texture.  
This program extracts the RGB channels and pixel values in the file image, and sets the color thresholds of red, green, blue and gray according to the conversion relationship between gray and RGB in the sRGB color gamut. By adjusting the RGB assignment, the red, green, and blue domains are saturated and the areas exceeding the grayscale threshold are replaced with white. The saturation of the color part is preserved and the white background effect of the document can be realized. 

## Demonstration
### Test1 File with 1 RGB primary color (blue)
#### Original image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Test1.jpg)
#### Scanned image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Scanned%20Test1.png)
### Test2 Picture mainly with black and RGB primary colors
#### Original image 
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Test2.jpg)
#### Scanned image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Scanned%20Test2.png)
### Test3 Picture with mixed colors
#### Original image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Test3.jpg)
#### Scanned image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Scanned%20Test3.png)
### Test4 File with more than 1 RGB primary color (blue and red)
#### Original image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Test4.jpg)
#### Scanned image
![Image](https://github.com/weiyi-li/MATLAB-Scanner/blob/master/Image/Scanned%20Test4.png)
