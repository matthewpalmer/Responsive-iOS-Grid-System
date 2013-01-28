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
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    NSLog(@"width:%f height:%f",screenWidth, screenHeight);
    //can't use an array with floats.
   // NSArray *verticalPoints = [[NSArray alloc]initWithObjects:oneTwelfthTop,twoTwelfthsTop,threeTwelfthsTop,fourTwelfthsTop,fiveTwelfthsTop, nil];
    
    //I don't really love the maths for this, but it works.
    oneTwelfthTop = 1*screenHeight/12;
    twoTwelfthsTop = 2*screenHeight/12;
    threeTwelfthsTop = 3*screenHeight/12;
    fourTwelfthsTop = 4*screenHeight/12;
    fiveTwelfthsTop = 5*screenHeight/12;
    sixTwelfthsTop = 6*screenHeight/12;
    sevenTwelfthsTop = 7*screenHeight/12;
    eightTwelfthsTop = 8*screenHeight/12;
    nineTwelfthsTop = 9*screenHeight/12;
    tenTwelfthsTop = 10*screenHeight/12;
    elevenTwelfthsTop = 11*screenHeight/12;
    twelveTwelfthsTop = 12*screenHeight/12;
    
    //<#paramName#> = <#paramName#>*screenWidth/12;
    oneTwelfthLeft = 1*screenWidth/12;
    twoTwelfthsLeft = 2*screenWidth/12;
    threeTwelfthsLeft = 3*screenWidth/12;
    fourTwelfthsLeft = 4*screenWidth/12;
    fiveTwelfthsLeft = 5*screenWidth/12;
    sixTwelfthLeft = 6*screenWidth/12;
    sevenTwelfthsLeft = 7*screenWidth/12;
    eightTwelfthsLeft = 8*screenWidth/12;
    nineTwelfthsLeft = 9*screenWidth/12;
    tenTwelfthsLeft = 10*screenWidth/12;
    elevenTwelfthsLeft = 11*screenWidth/12;
    twelveTwelfthsLeft = 12*screenWidth/12;
    
    
    [self firstTestGrid];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)firstTestGrid
{
    UIView *onetwe = [[UIView alloc]initWithFrame:CGRectMake(20.0, oneTwelfthTop, 50.0, 10.0)];
    [onetwe setBackgroundColor:[UIColor redColor]];
    
    UIView *twotwe = [[UIView alloc]initWithFrame:CGRectMake(20.0, twoTwelfthsTop, 50.0, 10.0)];
    [twotwe setBackgroundColor:[UIColor blueColor]];
    
    UIView *threetwe = [[UIView alloc]initWithFrame:CGRectMake(20.0, threeTwelfthsTop, 50.0, 10.0)];
    [threetwe setBackgroundColor:[UIColor greenColor]];
    
    [[self view]addSubview:onetwe];
    [[self view]addSubview:twotwe];
    [[self view]addSubview:threetwe];
    
    
}
@end
