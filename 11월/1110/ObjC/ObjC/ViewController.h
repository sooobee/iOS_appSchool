//
//  ViewController.h
//  ObjC
//
//  Created by 김수비 on 11/10/23.
//

# import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, momatomic) IBOutlet 

@end

@interface Rectangle : NSObject {
    int width;
    int height;
}

@property int width;
@property int height;

- (int) area;
- (int) perimeter;

@end
