//
//  UIViewFirstResponder.m
//  Ultane
//
//  Created by Aron Crittendon on 7/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UIViewFirstResponder.h"


@implementation UIView (firstResponder)

- (UIView *)findFirstResponder {
	if ([self isFirstResponder]) {
		return self;
	}
	
	for (UIView *subview in [self subviews]) {
		UIView *firstResponder = [subview findFirstResponder];
		if (nil != firstResponder) {
			return firstResponder;
		}
	}
	
	return nil;
}


@end
