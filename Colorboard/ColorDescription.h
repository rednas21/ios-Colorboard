//
//  ColorDescription.h
//  Colorboard
//
//  Created by Sander Peerna on 5/29/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorDescription : NSObject

@property (nonatomic) UIColor *color;
@property (nonatomic, copy) NSString *name;

@end