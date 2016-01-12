//
//  Box.m
//  box
//
//  Created by William Lam on 2016-01-12.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth:(float)width
                       height:(float)height
                        depth:(float)depth;
{
  self = [super init];
  if (self) {
    _height = height;
    _width = width;
    _depth = depth;
  }
  return self;
}


- (float)calculateVolume
{
  return self.height * self.width * self.depth;
}

-(BOOL)canFit:(Box *)box
{
  if ([self calculateVolume] > [box calculateVolume]) {
    return YES;
  } else {
    return NO;
  }
}

@end
