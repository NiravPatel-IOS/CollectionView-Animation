//
//  NAnimation.m
//  TableViewAnimation
//
//  Created by bhavesh donga on 9/8/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "NAnimation.h"

@implementation NAnimation

-(void)left_right:(UITableViewCell *)cell view_width:(float)view_width animation:(float)ani
{
    [UIView animateWithDuration:0.0 animations:^{
        cell.transform = CGAffineTransformMakeTranslation(-view_width, 0.0);
    }];
    
    [self delayBy:ani+0.1 code:^{ // call block of code after time interval
        [UIView animateWithDuration:ani+0.2 animations:^{
            cell.transform = CGAffineTransformIdentity;
        }];
        
    }];
}

-(void)right_left:(UITableViewCell *)cell view_width:(float)view_width animation:(float)ani
{
    [UIView animateWithDuration:0.0 animations:^{
        cell.transform = CGAffineTransformMakeTranslation(view_width, 0.0);
    }];
    
    [self delayBy:ani code:^{ // call block of code after time interval
        [UIView animateWithDuration:ani+0.2 animations:^{
            cell.transform = CGAffineTransformIdentity;
        }];
        
    }];
}

-(void)top_bottom:(UITableViewCell *)cell view_height:(float)view_height animation:(float)ani
{
    [UIView animateWithDuration:0.0 animations:^{
        cell.transform = CGAffineTransformMakeTranslation(0.0, -view_height);
    }];
    
    [self delayBy:ani+0.1 code:^{ // call block of code after time interval
        [UIView animateWithDuration:ani+0.2 animations:^{
            cell.transform = CGAffineTransformIdentity;
        }];
        
    }];
}

-(void)bottom_top:(UITableViewCell *)cell view_height:(float)view_height animation:(float)ani
{
    [UIView animateWithDuration:0.0 animations:^{
        cell.transform = CGAffineTransformMakeTranslation(0.0 ,view_height);
    }];
    
    [self delayBy:ani+0.1 code:^{ // call block of code after time interval
        [UIView animateWithDuration:ani+0.2 animations:^{
            cell.transform = CGAffineTransformIdentity;
        }];
        
    }];
}

- (void)delayBy:(NSTimeInterval)delay code:(dispatch_block_t) block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC), dispatch_get_current_queue(),
                   block);
}

@end
