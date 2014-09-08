//
//  TableControl.h
//  TableViewAnimation
//
//  Created by bhavesh donga on 9/8/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NAnimation.h"

@class AppDelegate;
@interface TableControl : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    AppDelegate *appDelegate;
    NAnimation *NAni;
    
    IBOutlet UICollectionView *tbl;
    
    float ani;
    NSMutableArray *arrData;
}

@end
