//
//  ColorDescription.m
//  Colorboard
//
//  Created by Sander Peerna on 5/29/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDescription.h"

@implementation ColorDescription

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _color = [UIColor colorWithRed:0
                                 green:0
                                  blue:1
                                 alpha:1];
        _name = @"Blue";
    }
    return self;
}

@end
