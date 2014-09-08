//
//  ViewController.m
//  TableViewAnimation
//
//  Created by bhavesh donga on 9/8/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TableControl.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    self.navigationController.navigationBarHidden = TRUE;
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)left_right:(id)sender
{
    appDelegate.strVal = @"l_r";
    TableControl *tblVCTR = [[TableControl alloc]initWithNibName:@"TableControl" bundle:nil];
    [self.navigationController pushViewController:tblVCTR animated:YES];
}

-(IBAction)right_left:(id)sender
{
    appDelegate.strVal = @"r_l";
    TableControl *tbl = [[TableControl alloc]initWithNibName:@"TableControl" bundle:nil];
    [self.navigationController pushViewController:tbl animated:YES];
}

-(IBAction)bottom_top:(id)sender
{
    appDelegate.strVal = @"b_t";
    TableControl *tblVCTR = [[TableControl alloc]initWithNibName:@"TableControl" bundle:nil];
    [self.navigationController pushViewController:tblVCTR animated:YES];
}

-(IBAction)top_bottom:(id)sender
{
    appDelegate.strVal = @"t_b";
    TableControl *tblVCTR = [[TableControl alloc]initWithNibName:@"TableControl" bundle:nil];
    [self.navigationController pushViewController:tblVCTR animated:YES];
}

@end
