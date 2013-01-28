//
//  GSViewController.m
//  GridSystem
//
//  Created by Matthew Palmer on 28/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import "GSViewController.h"

@interface GSViewController ()

@end

@implementation GSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self createPoints:[self view]];
    
    
    
    //[self firstTestGrid];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)createPoints:(UIView *)wView
{
    GSSystem *mainViewGridSystem = [[GSSystem alloc]init];
    [mainViewGridSystem createPoints:[self view]];
    
    GSSystem *GSMainView = [[GSSystem alloc]init];
    [GSMainView createPoints:[self view]];
    NSLog(@"%f",[GSMainView oneTwelfthLeft]);
    UIView *onetwe = [[UIView alloc]initWithFrame:CGRectMake([GSMainView oneTwelfthLeft], [GSMainView oneTwelfthLeft], [GSMainView oneTwelfthLeft], [GSMainView oneTwelfthLeft])];
    [onetwe setBackgroundColor:[UIColor redColor]];
    [[self view]addSubview:onetwe];
    
}



/*

-(void)firstTestGrid
{
    UIView *onetwe = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0.0, twelveTwelfthsLeft, oneTwelfthTop)];
    [onetwe setBackgroundColor:[UIColor redColor]];
    
    UIView *twotwe = [[UIView alloc]initWithFrame:CGRectMake(0.0, oneTwelfthTop, fourTwelfthsLeft, twelveTwelfthsTop)];
    [twotwe setBackgroundColor:[UIColor blueColor]];
    
    UIView *threetwe = [[UIView alloc]initWithFrame:CGRectMake(fourTwelfthsLeft, threeTwelfthsTop, sixTwelfthsLeft, twoTwelfthsTop)];
    [threetwe setBackgroundColor:[UIColor greenColor]];
    
    UIView *bigtwe = [[UIView alloc]initWithFrame:CGRectMake(fourTwelfthsLeft, oneTwelfthTop, eightTwelfthsLeft, twoTwelfthsTop)];
    [bigtwe setBackgroundColor:[UIColor yellowColor]];
    
    
    
    
    UIView *fourtwe = [[UIView alloc]initWithFrame:CGRectMake(fourTwelfthsLeft, fiveTwelfthsTop, sixTwelfthsLeft-oneTwelfthLeft, eightTwelfthsTop-sevenTwelfthsTop)];
    [fourtwe setBackgroundColor:[UIColor purpleColor]];
    
    UIView *eleventwe = [[UIView alloc]initWithFrame:CGRectMake(elevenTwelfthsLeft, elevenTwelfthsTop, 20.0, 10.0)];
    [eleventwe setBackgroundColor:[UIColor orangeColor]];
    
    [[self view]addSubview:onetwe];
    [[self view]addSubview:bigtwe];
    [[self view]addSubview:twotwe];
    [[self view]addSubview:threetwe];
    [[self view]addSubview:eleventwe];
    [[self view]addSubview:fourtwe];
    
}*/
@end
