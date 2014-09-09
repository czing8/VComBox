//
//  VComBoxContainView.m
//  ComBoxView
//
//  Created by Vols on 14-9-9.
//  Copyright (c) 2014年 vols. All rights reserved.
//

#import "VComBoxContainView.h"
#import "VComBoxView.h"

@implementation VComBoxContainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)closeAllTheComBoxView
{
    for(UIView *subView in self.subviews)
    {
        if([subView isKindOfClass:[VComBoxView class]])
        {
            VComBoxView *combox = (VComBoxView *)subView;
            if(combox.isOpen)
            {
                [UIView animateWithDuration:0.3 animations:^{
                    CGRect frame = combox.listTable.frame;
                    frame.size.height = 0;
                    [combox.listTable setFrame:frame];
                } completion:^(BOOL finished){
                    [combox.listTable removeFromSuperview];
                    combox.isOpen = NO;
                    combox.arrow.transform = CGAffineTransformRotate(combox.arrow.transform, DEGREES_TO_RADIANS(180));
                }];
            }
        }
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self closeAllTheComBoxView];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
