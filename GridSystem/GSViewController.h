//
//  GSViewController.h
//  GridSystem
//
//  Created by Matthew Palmer on 28/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSViewController : UIViewController {
    //let's try instance variables
    float oneTwelfthTop;
    float twoTwelfthsTop;
    float threeTwelfthsTop;
    float fourTwelfthsTop;
    float fiveTwelfthsTop;
    float sixTwelfthsTop;
    float sevenTwelfthsTop;
    float eightTwelfthsTop;
    float nineTwelfthsTop;
    float tenTwelfthsTop;
    float elevenTwelfthsTop;
    float twelveTwelfthsTop;
    
    
    float oneTwelfthLeft;
    float twoTwelfthsLeft;
    float threeTwelfthsLeft;
    float fourTwelfthsLeft;
    float fiveTwelfthsLeft;
    float sixTwelfthsLeft;
    float sevenTwelfthsLeft;
    float eightTwelfthsLeft;
    float nineTwelfthsLeft;
    float tenTwelfthsLeft;
    float elevenTwelfthsLeft;
    float twelveTwelfthsLeft;
}

-(void)firstTestGrid;

//HORIZONTAL POINTS - Is there a better way to do this?
//thank god for block edit in ST2. Xcode, step yo game up.
//perhaps we could do this in an array and numerate through them to get the right value.
/*
@property float oneTwelfthLeft;
@property float twoTwelfthsLeft;
@property float threeTwelfthsLeft;
@property float fourTwelfthsLeft;
@property float fiveTwelfthsLeft;
@property float sixTwelfthLeft;
@property float sevenTwelfthsLeft;
@property float eightTwelfthsLeft;
@property float nineTwelfthsLeft;
@property float tenTwelfthsLeft;
@property float elevenTwelfthsLeft;
@property float twelveTwelfthsLeft;
*/
//VERTICAL POINTS - "" - use the instance variable things
/*
@property float oneTwelfthTop;
@property float twoTwelfthsTop;
@property float threeTwelfthsTop;
@property float fourTwelfthsTop;
@property float fiveTwelfthsTop;
@property float sixTwelfthTop;
@property float sevenTwelfthsTop;
@property float eightTwelfthsTop;
@property float nineTwelfthsTop;
@property float tenTwelfthsTop;
@property float elevenTwelfthsTop;
@property float twelveTwelfthsTop;
*/
@end
