//
//  SyncActivityIndicator.h
//  Miso
//
//  Created by Joshua Wu on 7/13/11.
//  Copyright 2011 GoMiso, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ImageSpinner : UIImageView {
    BOOL _animate;
    double _rotationAngle;
}
- (void)startAnimating;
- (void)stopAnimating;
@end
