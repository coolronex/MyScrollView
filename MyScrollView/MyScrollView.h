//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Aaron Chong on 1/29/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic, assign) CGSize contentSize;
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;



@end
