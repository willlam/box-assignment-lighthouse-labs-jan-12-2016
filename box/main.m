//
//  main.m
//  box
//
//  Created by William Lam on 2016-01-12.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
  
  Box *box = [[Box alloc] initWithWidth:3.0 height:5.0 depth:5.0];
  
  NSLog(@"Volume of box: %f", box.calculateVolume);
  
  Box *newBox = [[Box alloc] initWithWidth:6.0 height:10.0 depth:10.0];
  
  if ([newBox canFit:box]) {
    NSLog(@"Yup it fits");
  } else {
    NSLog(@"Nope!");
  }
  
  if ([box canFit:newBox]) {
    NSLog(@"Yup it fits");
  } else {
    NSLog(@"Nope!");
  }

  
  return 0;
}
