//
//  ViewController.m
//  Code39Test
//
//  Created by Lin Patrick on 10/17/15.
//

#import "ViewController.h"
#import "Code39.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int barcode_width = 400;
    int barcode_height = 40;
    UIImage *code39Image = [Code39 code39ImageFromString:@"HELLO CODE39" Width:barcode_width Height:barcode_height];
    UIImageView *iv = [[UIImageView alloc] initWithImage:code39Image];
    iv.frame = CGRectMake(20,100,barcode_width, barcode_height);
    [self.view addSubview:iv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
