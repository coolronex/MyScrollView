//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Aaron Chong on 1/29/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
//        _contentSize = CGSizeMake(500,5000);
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
        [self addGestureRecognizer:_panGesture];
    }
    return self;
}

- (void) panGesture:(UIPanGestureRecognizer *)sender {
    
    
    // getting translation, diff between last point and current panning point
    CGPoint locationInView = [sender translationInView: self];
    
    
    CGFloat minY = 0.0;
    CGFloat maxY = self.contentSize.height - self.frame.size.height;
    CGFloat currentY = self.bounds.origin.y - locationInView.y; //current Y is in between max and min
    
    if (currentY > maxY) {
        currentY = maxY;
        
    } else if (currentY < minY) {
        currentY = minY;
    }

    CGRect newBounds = CGRectMake(0.0, currentY, self.frame.size.width, self.frame.size.height);
    [self setBounds:newBounds];
    
    //preventing view to scroll too fast
    [sender setTranslation:CGPointZero inView:self];
    
    
}

@end
