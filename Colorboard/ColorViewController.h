//
//  ViewController.h
//  Colorboard
//
//  Created by Sander Peerna on 5/29/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDescription.h"

@interface ColorViewController : UIViewController

@property (nonatomic) BOOL existingColor;
@property (nonatomic) ColorDescription *colorDescription;

@end

