//
//  SyncActivityIndicator.m
//  Miso
//
//  Created by Joshua Wu on 7/13/11.
//  Copyright 2011 GoMiso, Inc. All rights reserved.
//

#import "ImageSpinner.h"

@interface ImageSpinner ()

- (void)repeatAnimation;

@end
@implementation ImageSpinner

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (id)initWithImage:(UIImage *)image {
    if ((self = [super init])) {
        _imageView = [[UIImageView alloc ] initWithImage:image];
        _rotationAngle = 0;
        self.frame = _imageView.frame;
        self.userInteractionEnabled = NO;
        [self addSubview:_imageView];
    }
    
    return self;
}

- (void)startAnimating {
    if(_animate || _rotationAngle != 0)
        return;
    
    _animate = YES;
    [self repeatAnimation];
}

- (void)repeatAnimation {    
    _rotationAngle = _rotationAngle + M_PI / 2;
    
    if(_rotationAngle == 2 * M_PI)
        _rotationAngle = 0;
    
    
    if (_animate || _rotationAngle != M_PI / 2) {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.25];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDidStopSelector:@selector(repeatAnimation)];
        _imageView.transform = CGAffineTransformMakeRotation(_rotationAngle);
        [UIView commitAnimations];
    } else
        _rotationAngle = 0;
}

- (void)stopAnimating {
    _animate = NO;
}

- (void)dealloc
{
    [_imageView release];
    [super dealloc];
}

- (void)setImage:(UIImage *)image {
    _imageView.image = image;
}
@end