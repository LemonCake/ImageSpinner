//
//  SyncActivityIndicator.m
//  Miso
//
//  Created by Joshua Wu on 7/13/11.
//  Copyright 2011 GoMiso, Inc. All rights reserved.
//

#import "ImageSpinner.h"

@interface ImageSpinner ()
- (void)configure;
- (void)repeatAnimation;
@end

@implementation ImageSpinner

- (id)initWithImage:(UIImage *)image {
    if ((self = [super initWithImage:image])) {
        [self configure];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self configure];
    }
    return self;
}

- (void)configure {
    _rotationAngle = 0;
    self.userInteractionEnabled = NO;
}

- (void)startAnimating {
    if(_animate || _rotationAngle != 0) {
        return;
    }
    
    _animate = YES;
    [self repeatAnimation];
}

- (void)repeatAnimation {    
    _rotationAngle += M_PI / 2.f;
    
    if(_rotationAngle == 2.f * M_PI) {
        _rotationAngle = 0.f;
    }    
    
    if (_animate || _rotationAngle != M_PI / 2.f) {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.25];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDidStopSelector:@selector(repeatAnimation)];
        self.transform = CGAffineTransformMakeRotation(_rotationAngle);
        [UIView commitAnimations];
    } else {
        _rotationAngle = 0.f;
    }
}

- (BOOL)isAnimating {
    return _animate;
}

- (void)stopAnimating {
    _animate = NO;
}

@end