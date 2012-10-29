//
//  View.m
//  Hello
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor orangeColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 32.0];
    //NSString *string = @"Hello, World!";
	NSString *string = NSLocalizedString(@"Greeting", @"displayed with drawAtPoint:");
	
	CGPoint point = CGPointMake(0.0, 0.0);
	
	int j=2;
	
	for (int i=0; i <= 1000; i=i+20)
	{
		point = CGPointMake(j, i);
		[string drawAtPoint: point withFont: font];
		
		point = CGPointMake(600-j,i);
		[string drawAtPoint: point withFont: font];
		
		j= j+i/3;
		
	}
    
}

@end
