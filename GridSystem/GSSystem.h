//
//  GSSystem.h
//  GridSystem
//
//  Created by Matthew Palmer on 28/01/13.
//  Copyright (c) 2013 Matthew Palmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GSSystem : NSObject

//HORIZONTAL
@property float oneTwelfthLeft;
@property float twoTwelfthsLeft;
@property float threeTwelfthsLeft;
@property float fourTwelfthsLeft;
@property float fiveTwelfthsLeft;
@property float sixTwelfthsLeft;
@property float sevenTwelfthsLeft;
@property float eightTwelfthsLeft;
@property float nineTwelfthsLeft;
@property float tenTwelfthsLeft;
@property float elevenTwelfthsLeft;
@property float twelveTwelfthsLeft;

//VERTICAL
@property float oneTwelfthTop;
@property float twoTwelfthsTop;
@property float threeTwelfthsTop;
@property float fourTwelfthsTop;
@property float fiveTwelfthsTop;
@property float sixTwelfthsTop;
@property float sevenTwelfthsTop;
@property float eightTwelfthsTop;
@property float nineTwelfthsTop;
@property float tenTwelfthsTop;
@property float elevenTwelfthsTop;
@property float twelveTwelfthsTop;


//CUSTOM
@property float fiftySixPercentLeft;

-(void)createPoints:(UIView *)withView;

@end
