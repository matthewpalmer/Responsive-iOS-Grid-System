#Description 
Responsive iOS Grid System (prefix of GS) is a responsively designed system of points for use in iOS apps. Basically, it's a class that does some fractions so you can use the points. It means you can use the same code on all iOS screen sizes and it will still be in proportion. I've used a 12-column/row system, but you can add your own sizes really easily (even with percentages). You could probably use xibs for this, but I could never work out how so I made this.

#Installation instructions

 __Requires:__

- ARC (I think)

__Instructions:__

1. Download the `GSSystem.h` and `GSSystem.m` files
2. Add them to your Xcode project
3. Import them in a `.h` file and use them

#Usage

I've tried to make naming them as verbose as possible. Xcode autocompletes everything anyway so don't think you're going to be typing a lot.
Essentially, the fractions are named from left to right and from top to bottom.
##Naming
###Left to Right
`oneTwelfthLeft` - 1/12 of the distance across the view
`twoTwelfthsLeft` - 2/12 (1/6) of the distance across the view
`threeTwelfthsLeft` - 3/12 (1/4) of the distance across the view
…
`twelveTwelfthsLeft` - 12/12 (the whole way) of the distance across the view

###Top to Bottom
`oneTwelfthTop` - 1/12 of the distance down the view
`twoTwelfthsTop` - 2/12 of the distance down the view
and so on.

__Note the 's' on the plurals. I was debating whether to include this. Let me know what you think__

##Co-ordinates
Basically, xTwelfthsLeft is the grid co-ordinate (starting from the top left) that is x/12 distance across the view. Same with the vertical co-ordinates

##Implementation
1. Instantiate a new GSSystem with `GSSystem *someNewSystem = [[GSSystem alloc]init];`
(Note: It would be nice to incorporate the next step into the init method. I haven't decided what is ideal yet. It's only one extra line)
2. Call `createPoints` on that new system, passing in whatever view you want to calculate the points for. So, `[someNewSystem createPoints:someView];`
3. Create/set the view to certain co-ordinates using a `CGRectMake` or whatever and using the GSSystem points. 

		UIView *someSampleBox = [[UIView alloc]initWithFrame:CGRectMake([someNewSystem oneTwelfthLeft], [someNewSystem oneTwelfthTop], [someNewSystem tenTwelfthsLeft], [someNewSystem tenTwelfthsTop])];

4. Add the subview to the view


In your view file, you'll use this basic structure. Read the comments.

    GSSystem *GSMainSystem = [[GSSystem alloc]init]; //create one of these for each view you want to use the grid system on.
    [GSMainSystem createPoints:[self view]]; //creates the grid point values. [self view] is the view to use to calculate points for our fractions. EG tenTwelfthsLeft will be 10/12 across on the [self view] view
    
    UIView *someSampleBox = [[UIView alloc]initWithFrame:CGRectMake([GSMainSystem oneTwelfthLeft], [GSMainSystem oneTwelfthTop], [GSMainSystem tenTwelfthsLeft], [GSMainSystem tenTwelfthsTop])];
    [someSampleBox setBackgroundColor:[UIColor redColor]];
    [[self view]addSubview:someSampleBox];

##Sub Grid (subview) Systems
These work the same as the normal way, except you have to use a different view and create a new GSSystem.

		//Let's add a subivew using another Grid System
    GSSystem *GSSubSystem = [[GSSystem alloc]init];
    [GSSubSystem createPoints:someSampleBox];
    
    UIView *smallerBox = [[UIView alloc]initWithFrame:CGRectMake([GSSubSystem twoTwelfthsLeft], [GSSubSystem oneTwelfthTop], [GSSubSystem eightTwelfthsLeft], [GSSubSystem twoTwelfthsTop])];
    [smallerBox setBackgroundColor:[UIColor blueColor]];
    [someSampleBox addSubview:smallerBox]; //THERE *IS* A DIFFERENCE BETWEEN THIS AND [[self view] addSubview:smallerBox] 

##Adding Custom Grids
1. Add a new `@property float somePercentage` definition to the `GSSystem.h` file
2. Set the values for this property in the `GSSystem.m` file using `[self setSomePercentage: xPercentage*screenWidth/100];` for percentages. If you're not using percentages, replaces xPercentage with the numerater of the fraction across the screen and '100' with the denominator (E.G. for 23/57 across (or down) the screen do `23*screenWidth/57`)
3. Implement the new fraction in the view.

    //Our custom fifty six percent box. It's added at 56% of the main view
    GSSystem *GSCustomSystem = [[GSSystem alloc]init]; //NOTE: We could just use one of the above ones. But whatever. 
    [GSCustomSystem createPoints:[self view]];
    
    UIView *customFiftySixPercentView = [[UIView alloc]initWithFrame:CGRectMake([GSCustomSystem fiftySixPercentLeft], [GSMainSystem elevenTwelfthsTop], [GSMainSystem fourTwelfthsLeft], [GSMainSystem oneTwelfthTop])];
    [customFiftySixPercentView setBackgroundColor:[UIColor yellowColor]];
    [[self view]addSubview:customFiftySixPercentView];


#Where to get help 
Contact me on [Twitter](http://twitter.com/p_almer)

#People Using Responsive iOS Grid System
No one. Let me know if you do.

#Contribution guidelines 
Do whatever you want.

#Contributor list 
- Matthew Palmer



