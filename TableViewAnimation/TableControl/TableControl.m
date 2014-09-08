//
//  TableControl.m
//  TableViewAnimation
//
//  Created by bhavesh donga on 9/8/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "TableControl.h"
#import "NAnimation.h"
#import "AppDelegate.h"
#import "TableCell.h"

@interface TableControl ()

@end

@implementation TableControl

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    static NSString *identifier = @"Cell";
    [tbl registerNib:[UINib nibWithNibName:@"TableCell" bundle:nil] forCellWithReuseIdentifier:identifier];
        
    
    arrData = [[NSMutableArray alloc]init];
    
    [arrData addObject:@"Cell 1"];
    [arrData addObject:@"Cell 2"];
    [arrData addObject:@"Cell 3"];
    [arrData addObject:@"Cell 4"];
    [arrData addObject:@"Cell 5"];
    [arrData addObject:@"Cell 6"];
    [arrData addObject:@"Cell 7"];
    [arrData addObject:@"Cell 8"];
    [arrData addObject:@"Cell 9"];
    [arrData addObject:@"Cell 10"];
    
    NAni = [[NAnimation alloc]init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btn_back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UICollectionView methods


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    ani = 0.0;
    return arrData.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    
    TableCell *cell = (TableCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    ani = ani + 0.1;
    
    if ([appDelegate.strVal isEqualToString:@"l_r"])
    {
        [NAni left_right:cell view_width:self.view.frame.size.width animation:ani];
    }
    else if ([appDelegate.strVal isEqualToString:@"r_l"])
    {
        [NAni right_left:cell view_width:self.view.frame.size.width animation:ani];
//        [UIView animateWithDuration:0.0 animations:^{
//            cell.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width, 0.0);
//        }];
//        
//        [self delayBy:ani code:^{ // call block of code after time interval
//            [UIView animateWithDuration:ani+0.2 animations:^{
//                cell.transform = CGAffineTransformIdentity;
//            }];
//            
//        }];
    }
    else if ([appDelegate.strVal isEqualToString:@"t_b"])
    {
        [NAni top_bottom:cell view_height:self.view.frame.size.height animation:ani];
    }
    else if ([appDelegate.strVal isEqualToString:@"b_t"])
    {
        [NAni bottom_top:cell view_height:self.view.frame.size.height animation:ani];
    }
    cell.layer.shouldRasterize = YES;
    cell.layer.rasterizationScale = [UIScreen mainScreen].scale;
    
    NSString *tweet = [arrData objectAtIndex:indexPath.row];
    
    [cell.lbl setText:tweet];
    
    
    
    return cell;
    
}


@end
