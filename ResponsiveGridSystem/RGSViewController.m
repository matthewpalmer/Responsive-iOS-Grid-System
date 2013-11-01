//
//  RGSViewController.m
//  GridSystem
//
//  Created by Matthew Palmer on 28/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import "RGSViewController.h"

@interface RGSViewController ()

@end

@implementation RGSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self createPoints];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)createPoints
{
    RGSSystem *GSMainSystem = [[RGSSystem alloc]init]; //create one of these for each view you want to use the grid system on.
    [GSMainSystem createPoints:[self view]]; //creates the grid values. [self view] is the view to use to calculate points for our fractions. EG tenTwelfthsLeft will be 10/12 across on the [self view] view
    
    UIView *someSampleBox = [[UIView alloc]initWithFrame:CGRectMake([GSMainSystem oneTwelfthLeft], [GSMainSystem oneTwelfthTop], [GSMainSystem tenTwelfthsLeft], [GSMainSystem tenTwelfthsTop])];
    [someSampleBox setBackgroundColor:[UIColor redColor]];
    [[self view]addSubview:someSampleBox];
    
    //Let's add a subivew using another Grid System
    RGSSystem *GSSubSystem = [[RGSSystem alloc]init];
    [GSSubSystem createPoints:someSampleBox];
    
    UIView *smallerBox = [[UIView alloc]initWithFrame:CGRectMake([GSSubSystem twoTwelfthsLeft], [GSSubSystem oneTwelfthTop], [GSSubSystem eightTwelfthsLeft], [GSSubSystem twoTwelfthsTop])];
    [smallerBox setBackgroundColor:[UIColor blueColor]];
    [someSampleBox addSubview:smallerBox]; //THERE *IS* A DIFFERENCE BETWEEN THIS AND [[self view] addSubview:smallerBox] 
    
    UIView *smallerLeftColBox = [[UIView alloc]initWithFrame:CGRectMake([GSSubSystem twoTwelfthsLeft], [GSSubSystem threeTwelfthsTop], [GSSubSystem threeTwelfthsLeft], [GSSubSystem eightTwelfthsTop])];
    [smallerLeftColBox setBackgroundColor:[UIColor greenColor]];
    [someSampleBox addSubview:smallerLeftColBox];
    
    //Our custom fifty six percent box. It's added at 56% of the main view
    RGSSystem *GSCustomSystem = [[RGSSystem alloc]init]; //NOTE: We could just use one of the above ones. But whatever. 
    [GSCustomSystem createPoints:[self view]];
    
    UIView *customFiftySixPercentView = [[UIView alloc]initWithFrame:CGRectMake([GSCustomSystem fiftySixPercentLeft], [GSMainSystem elevenTwelfthsTop], [GSMainSystem fourTwelfthsLeft], [GSMainSystem oneTwelfthTop])];
    [customFiftySixPercentView setBackgroundColor:[UIColor yellowColor]];
    [[self view]addSubview:customFiftySixPercentView];
    
}


@end
