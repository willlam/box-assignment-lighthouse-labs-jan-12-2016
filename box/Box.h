//
//  Box.h
//  box
//
//  Created by William Lam on 2016-01-12.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

- (instancetype)initWithWidth:(float)width
                       height:(float)height
                        depth:(float)depth;
-(float)calculateVolume;
-(BOOL)canFit:(Box *)box;

@end
