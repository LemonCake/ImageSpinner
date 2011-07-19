//
//  SyncActivityIndicator.h
//  Miso
//
//  Created by Joshua Wu on 7/13/11.
//  Copyright 2011 GoMiso, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ImageSpinner : UIView {
    UIImageView *_imageView;
    BOOL _animate;
    double _rotationAngle;
}

- (id)initWithImage:(UIImage *)image;

- (void)startAnimating;
- (void)stopAnimating;
- (void)setImage:(UIImage *)image;

@end
