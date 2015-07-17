//
//  SPWKAspectFitView.m
//  AspectFitTest
//
//  Created by Fahrenkrug, Johannes on 9/26/14.
//  Copyright (c) 2014 Springenwerk. All rights reserved.
//

#import "SPWKAspectFitView.h"

@implementation SPWKAspectFitView

- (void)setChildView:(UIView *)childView
{
    if (_childView) {
        [_childView removeFromSuperview];
    }
    
    _childView = childView;
    
    [self addSubview:childView];
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (_childView) {
        CGSize childSize = _childView.frame.size;
        CGSize parentSize = self.frame.size;
        CGFloat aspectRatioForHeight = childSize.width / childSize.height;
        CGFloat aspectRatioForWidth = childSize.height / childSize.width;
        
        if ((parentSize.height * aspectRatioForHeight) > parentSize.height) {
            // whole height, adjust width
            CGFloat width = parentSize.width * aspectRatioForWidth;
            _childView.frame = CGRectMake((parentSize.width - width) / 2.0, 0, width, parentSize.height);
        } else {
            // whole width, adjust height
            CGFloat height = parentSize.height * aspectRatioForHeight;
            _childView.frame = CGRectMake(0, (parentSize.height - height) / 2.0, parentSize.width, height);
        }
    }
}

@end
