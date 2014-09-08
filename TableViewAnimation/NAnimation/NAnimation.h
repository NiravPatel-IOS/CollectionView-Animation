//
//  NAnimation.h
//  TableViewAnimation
//
//  Created by bhavesh donga on 9/8/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NAnimation : NSObject

-(void)left_right:(UITableViewCell *)cell view_width:(float)view_width animation:(float)ani;
-(void)right_left:(UITableViewCell *)cell view_width:(float)view_width animation:(float)ani;
-(void)top_bottom:(UITableViewCell *)cell view_height:(float)view_height animation:(float)ani;
-(void)bottom_top:(UITableViewCell *)cell view_height:(float)view_height animation:(float)ani;

@end
