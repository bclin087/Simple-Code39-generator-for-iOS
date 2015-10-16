# Simple-Code39-generator-for-iOS
One class, one method, turn your NSString to Code39 encoded UIImage, no hassle!

In one of my recent projects I need to generate a code39 barcode, at first I think it should be a simple task as I've done it before with C# in one function. But after some googling, I've found there's no such simple way shared with Objective-C code. There are commercial libraries that charges, there are open source libraries that are free but (relatively) too complex and too many dependencies to add for such a simple task, so I've decided to write my own iOS version and share with everyone else that may need it some day.

Usage:

Copy Code39.h and Code39.m into your iOS project, then add the following code to where you want to generate a code39 UIImage.

    #import "Code39.h"
    ...
    int barcode_width = 400;
    int barcode_height = 40;
    UIImage *code39Image = [Code39 code39ImageFromString:@"HELLO CODE39" Width:barcode_width Height:barcode_height];
    

Now you've got an UIImage object painted with Code39 encoded data for you to save it to an image file or display with an UIImageView, as simple as that!
