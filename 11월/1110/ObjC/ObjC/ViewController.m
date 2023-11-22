//
//  ViewController.m
//  ObjC
//
//  Created by 김수비 on 11/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)hello_button:(id)sender {
    
    Rectangle *rectangle = [[Rectangle alloc] init];
    
    [rectangle setWidth: 10];
    [rectangle setHeight: 20];
    int area = rectangle.area;
    NSString * str = [NSString stringWithFormat: @"%d", area];
    
    
    UIAlertController * alert = [UIAlertController
                                 //alertControllerWithTitle: @"hello"
                                 alertControllerWithTitle: str
                                 message: @"will dismiss in 2 seconds."
                                 preferredStyle:(UIAlertControllerStyleAlert)];
    
    [self presentViewController]
}
@end
